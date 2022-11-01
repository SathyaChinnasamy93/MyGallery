//
//  ContentView.swift
//  MySwiftUI
//
//  Created by Sathya on 28/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (alignment: .leading ){
            Text("Hello, world!")
                .font(.title)
            HStack {
                Text("Good Evening").font(.subheadline)
                Spacer()
                Text("Buddy!!").font(.subheadline)
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
