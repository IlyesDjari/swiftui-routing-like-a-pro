import SwiftUI

struct ProfileView: View {
    
    internal var person: Person
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                AsyncImage(url: person.profilePictureURL) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray.frame(width: 750, height: 750).clipShape(Circle())
                }
                .aspectRatio(contentMode: .fill)
                .frame(width: 750, height: 750)
                .clipShape(Circle())
                .padding()
                
                Text("\(person.firstName) \(person.lastName)")
                    .font(.system(size: 120, weight: .bold))
                    .bold()
                    .foregroundStyle(.gray)
                
                Text(person.jobTitle)
                    .font(.system(size: 80, weight: .medium))
                    .foregroundStyle(.gray.opacity(0.7))
                    .padding([.leading, .trailing, .bottom], 20)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .glassBackgroundEffect()
    }
}
