//
//  ControlView.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import SwiftUI

struct ControlView: View {
    @Binding var isBottomBarVisible: Bool
    
    var body: some View {
        VStack {
            ControlVisibilityToggleView(isBottomBarVisible: self.$isBottomBarVisible)
            Spacer()
            if self.isBottomBarVisible {
                BottomBarView()
            }
        }
    }
}
