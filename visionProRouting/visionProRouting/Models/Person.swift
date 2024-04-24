import Foundation

public struct Person: Hashable {
    var profilePictureURL: URL?
    var firstName: String
    var lastName: String
    var jobTitle: String
    
    // Initializing the struct with all properties
    public init(profilePictureURL: URL?,
                firstName: String,
                lastName: String,
                jobTitle: String) {
        self.profilePictureURL = profilePictureURL
        self.firstName = firstName
        self.lastName = lastName
        self.jobTitle = jobTitle
    }
}
