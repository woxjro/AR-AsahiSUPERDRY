//
//  ContentView.swift
//  AR-AsahiSUPERDRY
//
//  Created by YU on 2020/04/06.
//  Copyright © 2020 YU. All rights reserved.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {

        // RealityKit のメインとなるビュー
        let arView = ARView(frame: .zero)

        // デバッグ用設定
        // 処理の統計情報と、検出した3D空間の特徴点を表示する。
        arView.debugOptions = [.showStatistics, .showFeaturePoints]

        // シーンにアンカーを追加する
        let anchor = AnchorEntity(plane: .horizontal, minimumBounds: [0.15, 0.15])
        arView.scene.anchors.append(anchor)
        
        
        // Load the "Can" scene from the "Experience" Reality File
        let CanAnchor = try! Experience.loadCan()
        
        // Add the Can anchor to the scene
        arView.scene.anchors.append(CanAnchor)
        
        
        /*
        // テキストを作成
        let textMesh = MeshResource.generateText(
            "Hello, world!",
            extrusionDepth: 0.1,
            font: .systemFont(ofSize: 1.0), // 小さいとフォントがつぶれてしまうのでこれぐらいに設定
            containerFrame: CGRect.zero,
            alignment: .left,
            lineBreakMode: .byTruncatingTail)
        // 環境マッピングするマテリアルを設定
        let textMaterial = SimpleMaterial(color: UIColor.yellow, roughness: 0.0, isMetallic: true)
        let textModel = ModelEntity(mesh: textMesh, materials: [textMaterial])
        textModel.scale = SIMD3<Float>(0.1, 0.1, 0.1) // 10分の1に縮小
        textModel.position = SIMD3<Float>(0.0, 0.0, -0.2) // 奥0.2m
        anchor.addChild(textModel)

        
        
        
        
        // 立方体を作成
        let boxMesh = MeshResource.generateBox(size: 0.1)
        // 光源を無視する単色を設定
        let boxMaterial = UnlitMaterial(color: UIColor.red)
        let boxModel = ModelEntity(mesh: boxMesh, materials: [boxMaterial])
        boxModel.position = SIMD3<Float>(-0.2, 0.0, 0.0) // 左0.2m
        anchor.addChild(boxModel)

        
        
        
        
        // 球体を作成
        let sphereMesh = MeshResource.generateSphere(radius: 0.1)
        // 環境マッピングするマテリアルを設定
        let sphereMaterial = SimpleMaterial(color: UIColor.white, roughness: 0.0, isMetallic: true)
        let sphereModel = ModelEntity(mesh: sphereMesh, materials: [sphereMaterial])
        sphereModel.position = SIMD3<Float>(0.0, 0.0, 0.0)
        anchor.addChild(sphereModel)

        */
        
        
        
        
        
        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {}
}
