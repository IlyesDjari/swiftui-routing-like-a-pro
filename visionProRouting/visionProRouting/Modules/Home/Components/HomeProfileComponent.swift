import SwiftUI

struct HomeProfileComponent: View {
    
    internal var person: Person
    
    var body: some View {
        HStack(spacing: 50) {
            NeumorphicView(profilePicture: person.profilePictureURL)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("\(person.firstName) \(person.lastName)")
                    .font(.system(size: 120))
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                Text(person.jobTitle)
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.offWhite.opacity(0.6))
        .clipShape(Capsule())
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
        .padding(22)
    }
}
