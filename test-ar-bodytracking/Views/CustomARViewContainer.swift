//
//  CustomARViewContainer.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import SwiftUI
import RealityKit

struct CustomARViewContainer: UIViewRepresentable {
    typealias UIViewType = ARView
    @EnvironmentObject var sessionSettings: SessionSettings
    
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
        arView.setupForBodyTracking()
        arView.scene.addAnchor(ARViewHelper.instance.bodySkeletonAnchor)
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
