import SwiftUI

struct NeumorphicButton: View {
    var label: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(label)
                .font(.system(size: 80))
                .fontWeight(.bold)
                .foregroundColor(.gray.opacity(0.9))
                .padding(.horizontal, 50)
                .padding(.vertical, 30)
        }
        .background(Color.offWhite)
        .clipShape(Capsule())
        .shadow(color: .black.opacity(0.2), radius: 10, x: 5, y: 5)
        .shadow(color: .white, radius: 10, x: -5, y: -5)
    }
}
