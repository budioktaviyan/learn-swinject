import Foundation

class HomeModule: AppModule {

    let router: AppRouterDelegate

    init(router: AppRouterDelegate) {
        self.router = router
    }

    func presentView() {
        let homeVC = router.resolver.resolve(HomeViewController.self, argument: router)!
        router.presentView(viewController: homeVC)
    }
}
