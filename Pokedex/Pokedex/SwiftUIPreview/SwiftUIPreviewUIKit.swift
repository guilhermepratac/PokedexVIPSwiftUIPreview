//
//  SwiftUIPreviewUIKit.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

#if DEBUG
import SwiftUI
import Foundation

struct SwiftUIPreviewUIKit_Preview: PreviewProvider {
    static var previews: some View {
        HomeFactory.make(with: .init()).showPreview()
    }
}
#endif
