//
//  LandmarkList.swift
//  LearnSwiftUI
//
//  Created by nick on 2021/10/13.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks, id: \.id){ landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                    LandMarkRow(landMark: landmark)
                }
                
            }
            .navigationTitle("LandMaeks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        LandmarkList().previewDevice(PreviewDevice.init(rawValue: "iPhone SE (2nd generation)"))
            .previewDisplayName("iPhone SE (2nd generation)")
        LandmarkList().previewDevice(PreviewDevice.init(rawValue: "iPhone 13 Pro"))
            .previewDisplayName("iPhone 13 Pro")
    }
}
