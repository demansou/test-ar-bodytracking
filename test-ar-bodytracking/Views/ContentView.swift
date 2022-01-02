//
//  ContentView.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import SwiftUI

struct ContentView : View {
    @State private var isBottomBarVisible: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            CustomARViewContainer()
            ControlView(isBottomBarVisible: self.$isBottomBarVisible)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SessionSettings())
    }
}
#endif
