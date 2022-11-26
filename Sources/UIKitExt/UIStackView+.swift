//
//  UIStackView.swift
//  
//
//  Created by p-x9 on 2022/11/27.
//  
//

#if canImport(UIKit)
import UIKit

extension UIStackView {
    public func addArrangedSubviews(_ views: [UIView]) {
        views.forEach {
            addArrangedSubview($0)
        }
    }

    public func removeAllArrangedSubViews() {
        arrangedSubviews.forEach {
            removeArrangedSubview($0)
        }
    }
}

#endif
