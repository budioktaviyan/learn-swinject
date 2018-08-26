import Foundation
import Swinject

protocol AppRouterDelegate {

    var resolver: Resolver { get }

    func presentModule(module: AppModule)
    func presentView(viewController: UIViewController)
}

class AppRouter: AppRouterDelegate {

    static let sharedInstance = AppRouter.createAppRouter()

    fileprivate var navigationController: UINavigationController?
    fileprivate var assembler: Assembler!

    init(navigationController: UINavigationController?, assembler: Assembler!) {
        self.navigationController = navigationController
        self.assembler = assembler
    }

    var resolver: Resolver {
        return assembler.resolver
    }

    func presentModule(module: AppModule) {
        module.presentView()
    }

    func presentView(viewController: UIViewController) {
        navigationController?.pushViewController(viewController, animated: true)
    }

    fileprivate static func createAppRouter() -> AppRouter {
        let rootVC = UIApplication.shared.keyWindow?.rootViewController as? UINavigationController
        let assembler = Assembler()
        assembler.apply(assemblies: [
            AppAssembly(),
            HomeAssembly(),
            DetailAssembly()
        ])

        let router = AppRouter(navigationController: rootVC, assembler: assembler)
        return router
    }
}
