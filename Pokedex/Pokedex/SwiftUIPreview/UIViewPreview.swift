//
//  UIViewPreview.swift
//  Pokedex
//
//  Created by Guilherme Prata Costa on 12/07/22.
//
import UIKit
#if canImport(SwiftUI)
import SwiftUI

extension UIView {

    @available(iOS 13, *)
    private struct Preview: UIViewRepresentable {
        typealias UIViewType = UIView
        let view: UIView

        func makeUIView(context: Context) -> UIView {
            return view
        }

        func updateUIView(_ uiView: UIView, context: Context) { }
    }

    @available(iOS 13, *)
    func showPreview() -> some View {
        Preview(view: self)
    }
}

extension UIViewController {

    @available(iOS 13, *)
    private struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController

        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) { }
    }

    @available(iOS 13, *)
    func showPreview() -> some View {
        Preview(viewController: self)
    }
}
#endif
