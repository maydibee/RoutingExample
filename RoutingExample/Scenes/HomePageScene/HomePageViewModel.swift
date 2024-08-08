//
//  HomePageViewModel.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 02/08/24.
//

import Foundation


class HomePageViewModel: ObservableObject {
    
    private let router: HomePageRouter
    
    @Published var user: User
    

    init(router: HomePageRouter, user: User) {
        self.router = router
        self.user = user
    }
    
    func navigateToMakeDonationPage() {
        self.router.routeToMakeDonationPage()
    }
}

// MARK: - HomePageViewModel mock for preview

extension HomePageViewModel {
    static let mock: HomePageViewModel = .init(router: HomePageRouter.mock, user: HomePageRouter.mock.user)
}


