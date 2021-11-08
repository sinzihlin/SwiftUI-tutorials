//
//  ObserverView.swift
//  State
//
//  Created by nick on 2021/10/26.
//

import SwiftUI

struct ObserverView: View {
    @ObservedObject var people = People()
    var body: some View {
        Text("\(people.count)")
        Button {
            people.count = people.count + 1
        } label: {
            Text("123")
        }

    }
}

struct ObserverView_Previews: PreviewProvider {
    static var previews: some View {
        ObserverView()
    }
}
