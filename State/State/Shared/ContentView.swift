//
//  ContentView.swift
//  Shared
//
//  Created by nick on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack{
            Text("\(count)")
                .padding()
            Button("@State + 1") {
                count = count + 1
            }
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
