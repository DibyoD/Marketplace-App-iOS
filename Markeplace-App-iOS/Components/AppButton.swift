
import SwiftUI

struct AppButton: View {

    let title: String
    var backgroundColor: Color = .blue
    var foregroundColor: Color = .white
    var height: CGFloat = 48
    var cornerRadius: CGFloat = 8

    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.regular(16))
                .frame(maxWidth: .infinity)
                .frame(height: height)
                .background(backgroundColor)
                .foregroundStyle(foregroundColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: cornerRadius)
                )
        }
        .padding(.vertical, 8)
    }
}
