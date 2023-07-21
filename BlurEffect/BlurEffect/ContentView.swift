//
//  ContentView.swift
//  BlurEffect
//
//  Created by ㅣ on 2023/06/23.
//

import SwiftUI

struct ContentView: View {
    
   
    
    var body: some View {
        
        GeometryReader {
            let size = $0.size
            
            Home(size: size)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
