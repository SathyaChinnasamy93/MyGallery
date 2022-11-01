////
////  LoginSample1.swift
////  MySwiftUI
////
////  Created by Sathya Chinnasamy on 01/11/22.
////
//
//import SwiftUI
//
//struct LoginSample1: View {
//    var body: some View
//    {
//
//        var body: some View {
//
//    //        ZStack(alignment: .center) {
//            VStack(alignment: .center) {
//                ScrollView {
//                    VStack {
//                        Text("Hello \(viewModel.userName)!")
//                            .font(.largeTitle)
//                        Text("Welcome back you've been missed!")
//                            .font(.title)
//                            .multilineTextAlignment(.center)
//
//                        TextField("User name", text: $viewModel.userName)
//                            .cornerRadius(4.0)
//                            .background(.white)
//                        SecureField("Password", text: $viewModel.userName)
//                            .cornerRadius(4.0)
//                            .background(.white)
//                    }
//                    Spacer()
//
//
//                }
//            }
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.backgroundColor)
//                    .onAppear {
//                        viewModel.onAppear()
//                    }
//
//
//
//        }
//
//    }
//
//
//
//}
//
//struct LoginSample1_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginSample1()
//    }
//}
