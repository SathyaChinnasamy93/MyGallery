//
//  CircleImage.swift
//  MySwiftUI
//
//  Created by Sathya on 28/10/22.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
//       Image("nature").resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 150, height: 150)
//            .clipped()
//            .cornerRadius(150)
//            .padding(.bottom, 75)
        ZStack {
            ScrollView {
                VStack (alignment: .leading, spacing: 20) {
                    ForEach(0 ..< 50) { item in
                        Text("Hello World")
                            .padding()
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .background(.red)
                    }
                }
            } .background(.blue)
                .frame(width: .infinity)
              
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
