
import SwiftUI

struct AppTextField: View {

    let placeholder: String
    var icon: String? = nil
    @Binding var text: String

    var body: some View {
        HStack(spacing: 12) {

            if let icon {
                Image(systemName: icon)
                    .foregroundStyle(.gray)
                    .frame(width: 22)
            }

            TextField(placeholder, text: $text)
                .font(AppFonts.regular(16))
                .tint(.purple)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
        }
        .padding(.horizontal, 16)
        .frame(height: 58)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .overlay {
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        }
    }
}

struct AppSecureField: View {

    let placeholder: String
    @Binding var text: String

    var body: some View {
        HStack(spacing: 12) {

            Image(systemName: "lock")
                .foregroundStyle(.gray)
                .frame(width: 22)

            SecureField(placeholder, text: $text)
                .font(AppFonts.regular(16))
                .tint(.purple)
        }
        .padding(.horizontal, 16)
        .frame(height: 58)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .overlay {
            RoundedRectangle(cornerRadius: 14)
                .stroke(Color.gray.opacity(0.2), lineWidth: 1)
        }
    }
}
