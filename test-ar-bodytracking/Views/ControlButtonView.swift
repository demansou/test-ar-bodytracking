//
//  ControlButton.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import SwiftUI

struct ControlButtonView: View {
    let systemIconName: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: {
            self.buttonAction()
        }) {
            Image(systemName: self.systemIconName)
                .font(.system(size: 35))
                .foregroundColor(.white)
                .buttonStyle(PlainButtonStyle())
        }
        .frame(width: 50, height: 50)
    }
}
