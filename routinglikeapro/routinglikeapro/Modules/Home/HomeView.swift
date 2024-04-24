import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: NavigationRouter
    
    let person = Person(profilePictureURL: URL(string: "https://i.ibb.co/FnV1yY8/Screenshot-2024-04-24-at-11-13-54-removebg-preview.png"),
                        firstName: "Ilyes",
                        lastName: "Djari",
                        jobTitle: "iOS Developer")
    
    var body: some View {
        VStack {
            Button {
                router.push(Destination.profile)
            } label: {
                HomeProfileComponent(person: person)
            }
            .hoverEffect(.lift)
            Spacer()
            NeumorphicButton(label: "Create profile") {
                router.push(Destination.createProfile)
            }
        }
        .padding(100)
    }
}
