import SwiftUI

struct PlaceholderView: View {
    var body: some View {
        Rectangle()
            .fill(Color.offWhite.opacity(0.6))
            .frame(width: 300, height: 300)
            .overlay(
                ProgressView() 
                    .progressViewStyle(CircularProgressViewStyle(tint: .gray))
            )
            .clipShape(Circle())
            .shadow(color: Color.white.opacity(0.8), radius: 16, x: -16, y: -16)
        .shadow(color: Color.gray.opacity(0.4), radius: 16, x: 16, y: 16)    }
}

