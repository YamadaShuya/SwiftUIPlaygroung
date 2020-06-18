//
//  Indicator.swift
//  MVVM
//
//  Created by 山田　修也 on 2020/06/18.
//  Copyright © 2020 YamadaShuya. All rights reserved.
//

import SwiftUI

struct Indicator: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
        
        let view = UIActivityIndicatorView(style: .large)
        view.startAnimating()
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        
    }
}
