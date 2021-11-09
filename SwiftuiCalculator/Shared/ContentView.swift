//
//  ContentView.swift
//  Shared
//
//  Created by nick on 2021/11/8.
//

import SwiftUI
enum CalculatorButton:String{
    case zero, one, two, three, four, five, six, seven, eight, night
    case equal, plus, miuns, multiply, divide
    case decimal
    case ac, plusMinus, percent
    
    var title: String{
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five:  return "5"
        case .six:  return "6"
        case .equal:  return "="
        case .plus:  return "+"
        case .miuns:  return "-"
        case .multiply: return "X"
        case .divide:  return "AC"
        case .ac:  return "AC"
        case .plusMinus: return "+/-"
        case .percent: return "%"
        case .seven: return "7"
        case .eight: return "8"
        case .night: return "9"
        case .decimal: return "."
        }
    }
    var backgroundColor: Color{
    
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .night, .decimal:
            return Color(.gray)
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
        default:
            return .orange
        }
    }
    
}
struct ContentView: View {
    let buttons : [[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .night, .miuns],
        [.four, .five, .six, .miuns],
        [.one, .two, .three, .plus],
        [.zero, .decimal, .equal]
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
                        Button {
                            //..
                        } label: {
                            Text(button.title)
                                .font(.system(size: 32))
                                .frame(width: buttonWidth(button: button), height:  (UIScreen.main.bounds.width - 5 * 12) / 4)
                                .foregroundColor(.white)
                                .background(button.backgroundColor )
                                .cornerRadius(buttonWidth(button: button))
                        }

                       
                            
                    }
                }
                }
            }.padding(.bottom)

        }
    }
    func buttonWidth(button:CalculatorButton) -> CGFloat{
        if button == .zero {
            return  (UIScreen.main.bounds.width - 4 * 12) / 4 * 2
        }
        return  (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
