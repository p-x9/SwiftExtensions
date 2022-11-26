//
//  UICollectionView+.swift
//  
//
//  Created by p-x9 on 2022/11/27.
//  
//

#if canImport(UIKit)
import UIKit

extension UICollectionView {
    public func register<T: UICollectionViewCell>(type: T.Type) {
        register(T.self, forCellWithReuseIdentifier: String(describing: type))
    }

    public func registerFromNib<T: UICollectionViewCell>(type: T.Type) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: .init(for: T.self))
        register(nib, forCellWithReuseIdentifier: className)
    }

    public func register<T: UICollectionReusableView>(type: T.Type, ofKind kind: String) {
        self.register(T.self, forSupplementaryViewOfKind: kind, withReuseIdentifier: String(describing: type))
    }

    public func registerFromNib<T: UICollectionReusableView>(type: T.Type, ofKind kind: String) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: .init(for: T.self))
        register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
}

#endif
