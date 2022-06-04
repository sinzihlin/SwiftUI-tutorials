//
//  ContentView.swift
//  Shared
//
//  Created by nick on 2021/12/2.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Circle().foregroundColor(Color("PrimaryColor")).overlay {
                Image(systemName: "paperplane.fill")
            }
                
            
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
