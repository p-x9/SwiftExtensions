//
//  UITableView+.swift
//  
//
//  Created by p-x9 on 2022/11/27.
//  
//

#if canImport(UIKit)
import UIKit

extension UITableView {
    public func register<T: UITableViewCell>(type: T.Type) {
        register(T.self, forCellReuseIdentifier: String(describing: type))
    }

    public func registerFromNib<T: UITableViewCell>(type: T.Type) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: .init(for: T.self))
        register(nib, forCellReuseIdentifier: className)
    }
}

#endif
