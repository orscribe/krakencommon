//
//  SwiftUIView.swift
//  
//
//  Created by wesley Mitchell on 2/9/22.
//

import SwiftUI

public struct KrakenTitle: View {
    @EnvironmentObject var krakenApp: KrakenApp
    var text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        Text(text)
            .font(.custom(krakenApp.Theme.Typography.Title.typeFace,
                          size: krakenApp.Theme.Typography.Title.size))
    }
}
