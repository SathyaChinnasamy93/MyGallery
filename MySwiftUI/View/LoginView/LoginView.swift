//
//  LoginView.swift
//  MySwiftUI
//
//  Created by Sathya on 28/10/22.
//

import SwiftUI

struct LoginView: View
{
    @StateObject private var viewModel = LoginModel()
    let verticalPaddingForForm = 40.0
    var body: some View {
        ZStack {
            
            VStack(spacing: CGFloat(verticalPaddingForForm)) {
                Text("Welcome \(viewModel.userName)!")
                    .font(.title)
                    .foregroundColor(Color.white)
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Enter your name", text: $viewModel.userName)
                        .foregroundColor(Color.black)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                
                HStack {
                    Image(systemName: "password")
                        .resizable()
                        .frame(width: 16.0, height: 16.0) .foregroundColor(.secondary)
                    SecureField("Enter password", text: $viewModel.password)
                        .foregroundColor(Color.black)
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Login")
                        .padding()
                    
                }
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
            }.padding(.horizontal, CGFloat(verticalPaddingForForm))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(RadialGradient(gradient: Gradient(colors: [.orange, .blue]), center: .center, startRadius: 100, endRadius: 500))
    };
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

