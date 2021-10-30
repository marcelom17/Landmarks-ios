//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Marcelo Macedo on 30/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
