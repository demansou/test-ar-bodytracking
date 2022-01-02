//
//  ARView+Extension.swift
//  test-ar-bodytracking
//
//  Created by Daniel Mansour on 12/13/21.
//

import ARKit
import RealityKit
import SwiftUI

class ARViewHelper {
    static var instance: ARViewHelper = ARViewHelper()
    var bodySkeleton: BodySkeleton?
    var bodySkeletonAnchor: AnchorEntity = AnchorEntity()
}

extension ARView : ARSessionDelegate {
    
    func setupForBodyTracking() {
        let config = ARBodyTrackingConfiguration()
        self.session.run(config)
        self.session.delegate = self
    }
    
    public func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        for anchor in anchors {
            if let bodyAnchor = anchor as? ARBodyAnchor {
                if let skeleton = ARViewHelper.instance.bodySkeleton {
                    skeleton.update(with: bodyAnchor)
                } else {
                    let skeleton = BodySkeleton(for: bodyAnchor)
                    ARViewHelper.instance.bodySkeleton = skeleton
                    ARViewHelper.instance.bodySkeletonAnchor.addChild(skeleton)
                }
            }
        }
    }
}
