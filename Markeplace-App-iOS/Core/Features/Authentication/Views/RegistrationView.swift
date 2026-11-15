import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) private var dismiss

    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var passwordsMatch = false
    @State private var isLoading = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {

                Text("@MarketPlace")
                    .foregroundStyle(.white)
                    .font(AppFonts.bold(40))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                AppTextField(
                    placeholder: "Enter your email",
                    icon: "envelope",
                    text: $email
                )

                ZStack(alignment: .trailing) {
                    AppSecureField(
                        placeholder: "Enter your password",
                        text: $password
                    )

                    if !password.isEmpty && !confirmPassword.isEmpty {
                        Image(
                            systemName: passwordsMatch
                                ? "checkmark.circle.fill" : "xmark.circle.fill"
                        )
                        .foregroundStyle(passwordsMatch ? .green : .red)
                        .padding(.horizontal)
                    }
                }

                ZStack(alignment: .trailing) {
                    AppSecureField(
                        placeholder: "Confirm your password",
                        text: $confirmPassword
                    )

                    if !password.isEmpty && !confirmPassword.isEmpty {
                        Image(
                            systemName: passwordsMatch
                                ? "checkmark.circle.fill" : "xmark.circle.fill"
                        )
                        .foregroundStyle(passwordsMatch ? .green : .red)
                        .padding(.horizontal)
                    }
                }
                .onChange(of: confirmPassword) {oldValue, newValue in
                    passwordsMatch = newValue == password
                    
                }
                
                AppButton(title: "Sign Up") {
                    print("Sign Up tapped")
                }

                NavigationLink {
                    LoginView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                            .foregroundStyle(.black)
                            .font(AppFonts.bold(18))

                        Text("Sign up.")
                            .foregroundStyle(.blue)
                            .font(AppFonts.bold(18))
                    }
                    .padding(8)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding(.top, 10)
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background {
                Image("BG_1")
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        Color.black.opacity(0.2)
                    }
                    .ignoresSafeArea()

            }
        }
    }

}
