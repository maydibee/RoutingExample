//
//  NavigationCoordinator.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 07/08/24.
//

protocol NavigationCoordinator {
    func push(_ path: any Routable)
    func popLast()
    func popToRoot()
}
