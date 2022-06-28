//
//  UIKLabel.swift
//  CalcConvert
//
//  Created by 김도형 on 2022/06/28.
//

import SwiftUI

struct UIKLabel: UIViewRepresentable {
    typealias TheUIView = UILabel
    fileprivate var configuration = { (view: TheUIView) in}
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> TheUIView { TheUIView() }
    func updateUIView(_ uiView: TheUIView, context: UIViewRepresentableContext<Self>) {
        configuration(uiView)
    }
}

