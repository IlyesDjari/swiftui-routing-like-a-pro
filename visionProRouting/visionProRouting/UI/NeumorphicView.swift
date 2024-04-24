import SwiftUI

struct NeumorphicView: View {
    var profilePicture: URL?
    
    var body: some View {
        AsyncImage(url: profilePicture, content: { image in
            image.resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.gray.opacity(0.4), lineWidth: 2)
                        .shadow(radius: 4, x: 4, y: 4)
                        .clipShape(Circle())
                        .shadow(radius: 4, x: -4, y: -4)
                        .clipShape(Circle())
                )
                .shadow(color: Color.white.opacity(0.8), radius: 16, x: -16, y: -16)
                .shadow(color: Color.gray.opacity(0.4), radius: 16, x: 16, y: 16)
        }, placeholder: {
            PlaceholderView()
        })
    }
}
