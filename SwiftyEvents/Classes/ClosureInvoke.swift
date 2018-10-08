//
//  ClosureInvoke.swift
//  SwiftyEvents
//
//  Created by Volkan Bicer on 8.10.2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

open class ClosureInvoke {
    let closure: () -> Void

    init(_ closure: @escaping () -> Void) {
        self.closure = closure
    }

    @objc public func invoke() {
        closure()
    }
}
