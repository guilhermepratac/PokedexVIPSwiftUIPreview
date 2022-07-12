//
//  SwiftUIPreviewUIKit.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//

#if DEBUG
import SwiftUI

struct SwiftUIPreviewUIKit_Preview: PreviewProvider {
    static var previews: some View {
        HomeViewController().showPreview()
    }
}
#endif
