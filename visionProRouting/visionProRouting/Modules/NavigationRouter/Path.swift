import Foundation

public enum Path: Hashable {
    case home
    case profile(person: Person)
}
