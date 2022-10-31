//
//  LoginView.swift
//  MySwiftUI
//
//  Created by Sathya on 28/10/22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        NavigationView {
        VStack {
            WelcomeView()
            ProfileImage()
            TextField("User name", text: $userName).padding().background(lightGreyColor).cornerRadius(5.0).padding(.bottom,20).padding(.leading).padding(.trailing)
            SecureField("Password", text: $password).padding().background(lightGreyColor).cornerRadius(5.0).padding(.bottom,20).padding(.leading).padding(.trailing)
            NavigationToGallery()
            HStack {
                Image("gmail").resizable().aspectRatio(contentMode:.fill).frame(width: 50, height: 50).clipped().cornerRadius(50).padding(.trailing,10)
                Image("facebook").resizable().aspectRatio(contentMode:.fill).frame(width: 50, height: 50).clipped().cornerRadius(50).padding(.trailing,10)
                Image("twitter").resizable().aspectRatio(contentMode:.fill).frame(width: 50, height: 50).clipped().cornerRadius(50)
            }.padding(.top, 30)
        }.padding()
    }
    }
}

struct WelcomeView : View {
    var body: some View {
        Text("Welcome!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.bottom, 10)
    }
    
    
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct ProfileImage: View {
    var body: some View {
        Image("nature").resizable().aspectRatio(contentMode:.fill).frame(width: 150, height: 150).clipped().cornerRadius(150).padding(.bottom,30)
    }
}


struct NavigationToGallery: View {
    var body: some View {
        NavigationLink(destination: GalleryView()) {
            Text ("Login").font(.headline).foregroundColor(.white).padding().frame(width: 250, height: 60).background(.green).cornerRadius(15)
        }
    }
}
