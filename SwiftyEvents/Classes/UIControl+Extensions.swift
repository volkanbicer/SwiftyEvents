//
//  UIControl+Extensions.swift
//  SwiftyEvents_Example
//
//  Created by Volkan Bicer on 8.10.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

extension UIControl {
    @discardableResult
    public func action (for controlEvents: UIControl.Event, _ handler: @escaping () -> Void) -> ClosureInvoke{
        let closureInvoke = ClosureInvoke(handler)
        self.addTarget(closureInvoke,
                       action: #selector(closureInvoke.invoke),
                       for: controlEvents)
        objc_setAssociatedObject(self,
                                 String(format: "[%d]", arc4random()),
                                 closureInvoke,
                                 objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        return closureInvoke
    }


    public func test() {}
}


public class Vada {}

