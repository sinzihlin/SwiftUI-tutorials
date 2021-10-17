//
//  LandmarkList.swift
//  LearnSwiftUI
//
//  Created by nick on 2021/10/13.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView{
            List {
                Toggle.init(isOn: $showFavoriteOnly) {
                    Text("Favorite")
                }
                ForEach.init(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                        LandMarkRow(landMark: landmark)
                    }
                }
            }
            .navigationTitle("LandMaeks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        LandmarkList()
        
    }
}
