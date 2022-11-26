//
//  CGPoint+.swift
//  
//
//  Created by p-x9 on 2022/11/27.
//  
//

import Foundation

extension CGPoint {

    public var norm: CGFloat {
        hypot(x, y)
    }

    public var normalized: CGPoint {
        CGPoint(x: x / norm, y: y / norm)
    }

    public func distance(to point: CGPoint) -> CGFloat {
        hypot(self.x - point.x, self.y - point.y)
    }

    public func dot(_ point: CGPoint) -> CGFloat {
        self.x * point.x + self.y * point.y
    }

    public func angle(to  point: CGPoint) -> CGFloat {
        let from = self.normalized
        let to = point.normalized
        return acos(from.dot(to))
    }

}
