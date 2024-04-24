//
//  routinglikeaproApp.swift
//  routinglikeapro
//
//  Created by Ilyes Djari on 24/04/2024.
//

import SwiftUI

@main
struct routinglikeaproApp: App {
    var body: some Scene {
        WindowGroup {
            HomeCoordinatorView()
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 2.5, height: 1.5, depth: 0.15, in: .meters)
    }
}
