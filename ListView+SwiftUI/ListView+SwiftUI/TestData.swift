//
//  TestData.swift
//  ListView+SwiftUI
//
//  Created by Developer on 26/01/2022.
//

import Foundation
struct TestData {
static var movies: [Movie] = {
    let url = Bundle.main.url(forResource: "Movies", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    let decoder = JSONDecoder()
    return try! decoder.decode([Movie].self, from: data)
}()
}
