//
//  ContentView.swift
//  AceOfSpadesSwiftUI
//
//  Created by Ivan Ramirez on 6/3/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
      ZStack {
          LinearGradient(colors: [Color("Background1"), Color("Background2")], startPoint: .topLeading, endPoint: .bottomTrailing)
          Rectangle()
              .foregroundColor(Color("Card"))
              .frame(width: 275, height: 450, alignment: .center)
              .cornerRadius(10)
          
          VStack (spacing: 130) {
              VStack(spacing: 1) {
                  Text("A")
                  Image("Spade")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height: 20)
              }
              .offset(x: -110)
              
              Image("Spade")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 80, height: 80)
              
              VStack(spacing: 1) {
                  Text("A")
                  Image("Spade")
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 20, height: 20)
              }
              .offset(x: -110)
              .rotationEffect(Angle(degrees: 180))
          }
      }
      .ignoresSafeArea()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
