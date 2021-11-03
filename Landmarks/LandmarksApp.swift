//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Marcelo Macedo on 19/09/2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        var mainWindow = WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if os(macOS)
        mainWindow
            .commands{
                LandmarkCommands()
            }
        #else
        mainWindow
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
