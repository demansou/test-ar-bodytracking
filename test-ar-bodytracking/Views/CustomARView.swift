//
//  CustomARView.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/12/21.
//

import ARKit
import RealityKit
import SwiftUI

//class CustomARView: ARView, ARSessionDelegate {
//    var sessionSettings: SessionSettings
//    var bodySkeletonAnchor: AnchorEntity = AnchorEntity()
//    var bodySkeleton: BodySkeleton?
//    
//    required init(frame frameRect: CGRect, sessionSettings: SessionSettings) {
//        self.sessionSettings = sessionSettings
//        super.init(frame: frameRect)
//        
//        self.session.run(self.getInitialConfiguration())
//        
//        self.session.delegate = self
//        
//        
//    }
//    
//    required init(frame frameRect: CGRect) {
//        fatalError("init(frame:) has not been implemented.")
//    }
//    
//    @objc
//    required dynamic init?(coder decoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented.")
//    }
//    
//    public func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
//        for anchor in anchors {
//            if let bodyAnchor = anchor as? ARBodyAnchor {
//                print("Updated body anchor.")
//                if let skeleton = self.bodySkeleton {
//                    skeleton.update(with: bodyAnchor)
//                } else {
//                    // Seeing body for the first time, create bodySkeleton variable
//                    let skeleton = BodySkeleton(for: bodyAnchor)
//                    self.bodySkeleton = skeleton
//                    bodySkeletonAnchor.addChild(skeleton)
//                }
//            }
//        }
//    }
//    
//    private func getInitialConfiguration() -> ARConfiguration {
//        guard ARBodyTrackingConfiguration.isSupported else {
//            fatalError("Body tracking not supported by current device.")
//        }
//        
//        let config = ARBodyTrackingConfiguration()
//        
//        return config
//    }
//}
