//
//  UIImage+.swift
//  
//
//  Created by p-x9 on 2022/11/27.
//  
//

#if canImport(UIKit)
import UIKit

extension UIImage {
    public func withAspectRatio(_ ratio: CGFloat) -> UIImage? {
        let currentRatio = size.width / size.height
        let resizedSize: CGSize
        if currentRatio > ratio {
            resizedSize = .init(width: size.width,
                                height: size.width / ratio)
        } else {
            resizedSize = .init(width: size.height * ratio,
                                height: size.height)
        }

        return resized(size: resizedSize, safeAspect: false)
    }

    public func resized(size resizedSize: CGSize, safeAspect: Bool = true) -> UIImage? {
        let widthRatio = resizedSize.width / size.width
        let heightRatio = resizedSize.height / size.height

        let resizedSize: CGSize
        if safeAspect {
            let ratio = widthRatio < heightRatio ? widthRatio : heightRatio
            resizedSize = CGSize(width: size.width * ratio, height: size.height * ratio)
        } else {
            resizedSize = CGSize(width: size.width * widthRatio, height: size.height * heightRatio)
        }

        UIGraphicsBeginImageContextWithOptions(resizedSize, false, 0.0)
        draw(in: CGRect(origin: .zero, size: resizedSize))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return resizedImage
    }
}

#endif
