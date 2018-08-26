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
        
        let sceneView = SCNView()
        sceneView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sceneView)
        NSLayoutConstraint.activate([
            sceneView.topAnchor.constraint(equalTo: view.topAnchor),
            sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        
        sceneView.scene = SCNScene(named: "hair.scnassets/collada.scn")
//        sceneView.scene = SCNScene(named: "hair.scnassets/collada.dae")
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        sceneView.backgroundColor = .white
    }
}

