import Foundation
import Swinject

class AppAssembly: Assembly {

    func assemble(container: Container) {
        container.register(AppRouterDelegate.self) {(r) in
            return AppRouter.sharedInstance
        }
    }
}
