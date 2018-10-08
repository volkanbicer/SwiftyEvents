//
//  ValueChangable.swift
//  SwiftyEvents
//
//  Created by Volkan Bicer on 8.10.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

public protocol ValueChangable {
    func valueDidChange(handler: @escaping () -> Void)
}

extension ValueChangable where Self: UIControl  {
    public func valueDidChange(handler: @escaping () -> Void) {
        self.action(for: .valueChanged, handler)
    }
}


extension UISegmentedControl: ValueChangable {}
extension UISwitch: ValueChangable {}
extension UISlider: ValueChangable {}
extension UIStepper: ValueChangable {}
extension UIRefreshControl: ValueChangable {}


/*
 UIPageControl
 UIDatePicker
 UIProgessView
 UIActivityIndicatorView
 */
