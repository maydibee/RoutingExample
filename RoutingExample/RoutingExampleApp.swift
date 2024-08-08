//
//  RoutingExampleApp.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 02/08/24.
//

import SwiftUI

@main
struct RoutingExampleApp: App {
    var body: some Scene {
        WindowGroup {
            CustomNavigationView(appRouter: .init())
        }
    }
}
