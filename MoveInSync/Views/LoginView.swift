//
//  LoginView.swift
//  MoveInSync
//
//  Created by Shaurya Verma on 06/04/26.
//


import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            HomeView()
        } else {
            ZStack {
                Color(hex: "1A3C6E")
                    .ignoresSafeArea()

                VStack(spacing: 30) {

                    // Logo + Title
                    VStack(spacing: 10) {
                        Image(systemName: "bus.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.white)

                        Text("MoveInSync")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)

                        Text("Employee Transport Management")
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    .padding(.top, 60)

                    Spacer()

                    // Input Fields
                    VStack(spacing: 16) {
                        TextField("Work Email", text: $email)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)

                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 24)

                    // Login Button
                    Button {
                        isLoggedIn = true
                    } label: {
                        Text("Login")
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "1A3C6E"))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(12)
                    }
                    .padding(.horizontal, 24)

                    Spacer()

                    Text("© 2024 MoveInSync Technology Solutions")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.5))
                        .padding(.bottom, 20)
                }
            }
        }
    }
}
