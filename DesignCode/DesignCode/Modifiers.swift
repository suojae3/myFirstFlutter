//
//  Modifiers.swift
//  DesignCode
//
//  Created by ㅣ on 2023/05/06.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.yellow.opacity(0.1), radius: 10, x: 0, y: 12)
            .shadow(color: Color.yellow.opacity(0.4), radius: 1, x: 0, y: 1 )
    }
}


struct FontModifier: ViewModifier {
    
    var style: Font.TextStyle = .body
    
    func body(content: Content) -> some View {
            content
                .font(.system(.body, design: .default))
        
    }
}

struct CustomFontModifier: ViewModifier {
    var size: CGFloat = 28
    
    
    func body(content: Content) -> some View {
        content.font(.custom("NanumPenScript-Regular", size: size))
    }
}
