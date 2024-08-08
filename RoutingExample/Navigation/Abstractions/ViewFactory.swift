//
//  ViewFactory.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 07/08/24.
//

import SwiftUI

protocol ViewFactory {
    func makeView() -> AnyView
}
