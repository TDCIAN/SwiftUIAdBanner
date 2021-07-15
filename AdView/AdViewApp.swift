//
//  AdViewApp.swift
//  AdView
//
//  Created by JeongminKim on 2021/07/15.
//

import SwiftUI
import GoogleMobileAds

@main
struct AdViewApp: App {
    
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
