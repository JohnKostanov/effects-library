//
//  ConfettiView.swift
//  
//
//  Created by Stefan Blos on 10.03.22.
//

import SwiftUI

public struct ConfettiView: View {
    
    var config: ConfettiConfig = ConfettiConfig(
        emitterPosition: .top,
        clipsToBounds: false,
        intensity: .low,
        lifetime: 8,
        fallDirection: .downwards
    )
    
    public var body: some View {
        GeometryReader { proxy in
            ConfettiViewRepresentable(proxy: proxy, config: config)
        }
    }
}

struct ConfettiView_Previews: PreviewProvider {
    static var previews: some View {
        ConfettiView()
    }
}
