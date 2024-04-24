import SwiftUI

struct HomeCoordinatorView: View {
    
    var body: some View {
        NavigationRouterView {  _ in
            makeView(for: .home)
                .navigationDestination(for: Destination.self, destination: makeView)
        }
    }
    
    @ViewBuilder func makeView(for destination: Destination) -> some View {
        Group {
            switch destination {
            case .home:
                HomeView()
            case .profile:
                ProfileView()
            case .createProfile:
                CreateProfileView()
            }
        }
    }
}
