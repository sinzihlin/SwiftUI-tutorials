//
//  LearnSwiftUIApp.swift
//  Shared
//
//  Created by nick on 2021/10/4.
//

import SwiftUI

@main
struct LearnSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            //FirestView()
            ContentView().environmentObject(modelData)
        }
    }
}
