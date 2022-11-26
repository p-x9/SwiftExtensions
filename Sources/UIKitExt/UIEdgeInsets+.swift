//
//  UIEdgeInsets+.swift
//  
//
//  Created by p-x9 on 2022/11/27.
//  
//

#if canImport(UIKit)
import UIKit

extension UIEdgeInsets {
    public var vertical: CGFloat {
        return top + bottom
    }

    public var horizontal: CGFloat {
        return left + right
    }
}

#endif
