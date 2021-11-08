//
//  ContentView.swift
//  Shared
//
//  Created by nick on 2021/11/8.
//

import SwiftUI

struct ContentView: View {
    let buttons = [
        ["7","8","9","x"],
        ["4","5","6","-"],
        ["1","2","3","+"],
        ["0",".",".","="],
    ]
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing:12){
                HStack{
                    Spacer()
                    Text("999")
                        .foregroundColor(.white)
                        .font(.system(size: 64))
                }.padding()
                
                ForEach(buttons,id: \.self){ row in
                    HStack(spacing:12){
                    ForEach(row,id: \.self){button in
                        
                        Text(button)
                            .font(.system(size: 32))
                            .frame(width: buttonWidth(), height: buttonWidth())
                            .foregroundColor(.white)
                            .background(Color.yellow)
                            .cornerRadius(40)
                            
                    }
                }
                }
            }.padding(.bottom)

        }
    }
    func buttonWidth() -> CGFloat{
        return  (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
