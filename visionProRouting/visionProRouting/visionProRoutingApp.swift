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
            NavigationRouterView {  _ in
                makeView(for: .home)
                    .navigationDestination(for: Path.self, destination: makeView)
            }
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 4, height: 2, depth: 1, in: .meters)
    }
    
    @ViewBuilder
    private func makeView(for path: Path) -> some View {
        Group {
            switch path {
            case .home:
                HomeView()
            case .profile(let person):
                ProfileView(person: person)
            }
        }
    }
}
