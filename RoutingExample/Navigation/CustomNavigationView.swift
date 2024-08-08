//
//  CustomNavigationView.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 02/08/24.
//

import SwiftUI

struct CustomNavigationView: View {
    
    @StateObject var appRouter: AppRouter
    
    var body: some View {
        NavigationStack(path: $appRouter.paths) {
            appRouter.resolveInitialRouter().makeView()
                .navigationDestination(for: AnyRoutable.self) { router in
                    router.makeView()
                }
        }
    }
}
