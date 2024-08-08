//
//  HomePageRouter.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 03/08/24.
//

import SwiftUI


class HomePageRouter {
    
    private let rootCoordinator: NavigationCoordinator

    var user: User
    
    
    init(rootCoordinator: NavigationCoordinator, user: User) {
        self.rootCoordinator = rootCoordinator
        self.user = user
    }
    
    func routeToMakeDonationPage() {
        let router = MakeDonationRouter(rootCoordinator: self.rootCoordinator, user: self.user)
        rootCoordinator.push(router)
    }
}

// MARK: - ViewFactory implementation

extension HomePageRouter: Routable {
    
    func makeView() -> AnyView {
        let viewModel = HomePageViewModel(router: self, user: user)
        let view = HomePageView(viewModel: viewModel)
        return AnyView(view)
    }
}

// MARK: - Hashable implementation

extension HomePageRouter {
    static func == (lhs: HomePageRouter, rhs: HomePageRouter) -> Bool {
        lhs.user.uid == rhs.user.uid
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.user.uid)
    }
}

// MARK: - Router mock for preview

extension HomePageRouter {
    static let mock: HomePageRouter = .init(rootCoordinator: AppRouter(), user: Datasource.mockUser)
}
