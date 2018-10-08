//
//  EditingChangable.swift
//  SwiftyEvents
//
//  Created by Volkan Bicer on 8.10.2018.
//

import Foundation

public protocol EditingChangable {
    func didEdit(handler: @escaping () -> Void)
}

extension EditingChangable where Self: UIControl {
    public func didEdit(handler: @escaping () -> Void) {
        self.action(for: .editingChanged, handler)
    }
}

extension UITextField: EditingChangable {}
