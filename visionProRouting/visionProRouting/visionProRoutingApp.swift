//
//  visionProRoutingApp.swift
//  visionProRouting
//
//  Created by Ilyes Djari on 24/04/2024.
//

import SwiftUI

@main
struct visionProRoutingApp: App {
    var body: some Scene {
        WindowGroup {
            HomeCoordinatorView()
                .frame(depth: 0)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 4, height: 2, depth: 1, in: .meters)
    }
}
