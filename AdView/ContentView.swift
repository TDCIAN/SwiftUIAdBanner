//
//  ContentView.swift
//  AdView
//
//  Created by JeongminKim on 2021/07/15.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    private var fullScreenAd: Interstital?
    init() {
        fullScreenAd = Interstital()
    }
    
    var body: some View {
        NavigationView {
            Form {
                Button("test", action: {
                    self.fullScreenAd?.showAd()
                })
                
                // Banner
                HStack {
                    Spacer()
                    GADBannerViewController()
                        .frame(width: kGADAdSizeBanner.size.width, height: kGADAdSizeBanner.size.height)
                }
            }
            .navigationTitle("Ad Test")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
