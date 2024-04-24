import SwiftUI

public class NavigationRouter: ObservableObject {
    
    @Published public var path = NavigationPath()
    
    /// Pushes a new screen onto the navigation stack.
    @MainActor
    public func push(_ value: some Hashable) {
        path.append(value)
    }
    
    /// Pops the topmost screen from the navigation stack.
    @MainActor
    public func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    
    /// Pops the entire navigation stack.
    @MainActor
    public func popToRoot() {
        path = NavigationPath()
    }
}

public struct NavigationRouterView<Root>: View where Root: View {
    
    @StateObject private var router = NavigationRouter()
    
    private let root: (NavigationRouter) -> Root
    
    public init(@ViewBuilder root: @escaping (NavigationRouter) -> Root) {
        self.root = root
    }
    
    public var body: some View {
        NavigationStack(path: $router.path) {
            root(router)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .environmentObject(router)
    }
}
