//
//  ContentView.swift
//  Shared
//
//  Created by nick on 2021/12/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
//            Text("Hello, world!")
//                .padding()
            TabView.init {
                DogsView().tabItem {
                    NavigationLink(destination:  DogsView()) {
                        Text("dog")
                    }.tag(1)
                    
                }
                CatsView().tabItem {
                    NavigationLink(destination:  CatsView()) {
                        Text("cog")
                    }.tag(2)
                }
            }
        }
    }
    
}
struct DogsView: View{
    var dogs = ["dog1","dog2","dog3","dog4","dog5"]
    var body: some View{
        NavigationView() {
            List{
                ForEach(1..<100){ _ in
                    NavigationLink(destination: DogView()) {
                        Text("狗狗")
                    }.navigationBarTitle(Text("旺旺123333"))
                }.navigationBarTitle(Text("旺旺"))
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}
struct DogView: View{
    var body: some View{
        Text("text")
    }
}
struct CatsView: View{
    
    var body: some View{
        List{
            ForEach(1..<100){ _ in
                Text("cat")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
