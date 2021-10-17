//
//  LandMarkRow.swift
//  LearnSwiftUI
//
//  Created by nick on 2021/10/13.
//

import SwiftUI

struct LandMarkRow: View {
    var landMark: Landmark
    var body: some View {
        HStack{
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandMarkRow(landMark: landmarks[0])
            LandMarkRow(landMark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
