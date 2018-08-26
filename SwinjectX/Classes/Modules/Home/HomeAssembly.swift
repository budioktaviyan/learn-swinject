import Foundation
import Swinject

class HomeAssembly: Assembly {

    func assemble(container: Container) {
        container.register(HomeModule.self) {(r, delegate: AppRouterDelegate) in
            return HomeModule(router: delegate)
        }

        setupAssembleHome(container: container)
    }

    func setupAssembleHome(container: Container) {
        container.register(HomeViewController.self) {(r) in
            return HomeViewController()
        }
    }
}
