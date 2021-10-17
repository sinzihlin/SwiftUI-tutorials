//
//  ModelData.swift
//  LearnSwiftUI
//
//  Created by nick on 2021/10/13.
//

import Foundation
import Combine
final class ModelData: ObservableObject{
    @Published var landmarks: [Landmark] = load("landmarkData.json")

}

func load<T: Decodable>(_ filename: String) -> T{
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else{
        fatalError("Could't find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
        
    }catch{
        fatalError("Could't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
       return try decoder.decode(T.self, from: data)
        
    }catch{
        fatalError("Could't pares \(filename) as \(T.self):\n\(error) ")
    }
            
}
