//
//  ControlVisbilityToggleView.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import SwiftUI

struct ControlVisibilityToggleView: View {
    @Binding var isBottomBarVisible: Bool
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Color.black.opacity(0.25)
                Button(action: {
                    print("Control Visibility Toggle Button pressed.")
                    self.isBottomBarVisible.toggle()
                }) {
                    Image(systemName: self.isBottomBarVisible ? "rectangle" : "slider.horizontal.below.rectangle")
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .buttonStyle(PlainButtonStyle())
                }
            }
            .frame(width: 50, height: 50)
            .cornerRadius(8.0)
        }
        .padding(.top, 45)
        .padding(.trailing, 20)
    }
}
