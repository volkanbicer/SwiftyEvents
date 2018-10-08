//
//  Tappable.swift
//  SwiftyEvents_Example
//
//  Created by Volkan Bicer on 8.10.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

public protocol Tappable {
    func didTap(handler: @escaping () -> Void)
}

extension Tappable where Self: UIControl {
    public func didTap(handler: @escaping () -> Void) {
        self.action(for: .touchUpInside, handler)
    }
}

extension UIButton: Tappable {}

