//
//  ViewController.swift
//  modeltransparency
//
//  Created by Manuel Trezza on 26.08.18.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add scene
        let sceneView = SCNView()
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sceneView)
        NSLayoutConstraint.activate([
            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        
        // Configure model hair
//        let scene = SCNScene(named: "hair.scnassets/collada.scn")
        let scene = SCNScene(named: "hair.scnassets/collada2.scn")
        let capNode = scene!.rootNode.childNodes.filter({ $0.name == "Cap" }).first!
        let hairNode = scene!.rootNode.childNodes.filter({ $0.name == "Hair" }).first!
        capNode.renderingOrder = 0
        hairNode.renderingOrder = 1
        
        let capMaterial = capNode.geometry!.firstMaterial!
        let hairMaterial = hairNode.geometry!.firstMaterial!
        capMaterial.writesToDepthBuffer = false
        hairMaterial.writesToDepthBuffer = false
        
//        // Configure model hair2
//        let scene = SCNScene(named: "hair2.scnassets/collada.scn")
//        let node = scene!.rootNode.childNodes.first?.childNodes.first
//        let material = node!.geometry!.firstMaterial
//        material!.writesToDepthBuffer = false
        
        // Configure scene
        sceneView.scene = scene
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        sceneView.backgroundColor = .white
    }
}

