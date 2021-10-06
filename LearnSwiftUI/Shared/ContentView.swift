//
//  ContentView.swift
//  Shared
//
//  Created by nick on 2021/10/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame( height: 300)
            CircleImage()
                .offset(y: -120)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Hello, world!")
                    .font(.title)
                    .foregroundColor(Color.green)
                    .padding()
                HStack{
                    Text("Joshua tree national park ")
                        .font(.subheadline)
                    Spacer()
                    Text("Californal")
                        .font(.subheadline)
                }
                Divider()
            }
            .padding()
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
