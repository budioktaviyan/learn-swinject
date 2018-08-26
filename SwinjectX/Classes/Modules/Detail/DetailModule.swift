import Foundation

class DetailModule: AppModule {

    let router: AppRouterDelegate

    init(router: AppRouterDelegate) {
        self.router = router
    }

    func presentView() {
        let detailVC = router.resolver.resolve(DetailViewController.self, argument: router)!
        router.presentView(viewController: detailVC)
    }
}
