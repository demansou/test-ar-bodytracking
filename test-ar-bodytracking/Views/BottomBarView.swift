//
//  BottomBarView.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack {
            HStack {
                
                // MostRecentlyPlaced Button
                ControlButtonView(systemIconName: "clock.fill") {
                    print("MostRecentlyPlaced button pressed.")
                }
                
                Spacer()
                
                // Browse Button
                ControlButtonView(systemIconName: "square.grid.2x2") {
                    print("Browse button pressed.")
                }
                
                Spacer()
                
                // Settings Button
                ControlButtonView(systemIconName: "slider.horizontal.3") {
                    print("Settings button pressed.")
                }
            }
            .frame(maxWidth: 500)
            .padding(30)
            .background(Color.black.opacity(0.25))
        }
    }
}
