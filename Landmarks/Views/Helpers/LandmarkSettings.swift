//
//  LandmarkSettings.swift
//  MacLandmarks
//
//  Created by Andy Xu on 5/5/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium

    var body: some View {
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(minWidth: 200)
        .navigationTitle("Landmark Settings")
        .padding(10)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
