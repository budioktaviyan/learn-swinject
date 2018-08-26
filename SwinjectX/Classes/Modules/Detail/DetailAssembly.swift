import Foundation
import Swinject

class DetailAssembly: Assembly {

    func assemble(container: Container) {
        container.register(DetailModule.self) {(r, delegate: AppRouterDelegate) in
            return DetailModule(router: delegate)
        }

        setupAssembleDetail(container: container)
    }

    func setupAssembleDetail(container: Container) {
        container.register(DetailViewController.self) {(r) in
            return DetailViewController(brand: "Brand")
        }
    }
}
