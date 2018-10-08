//
//  ViewController.swift
//  SwiftyEvents
//
//  Created by Volkan Bicer on 10/08/2018.
//  Copyright (c) 2018 Volkan Bicer. All rights reserved.
//

import UIKit
import SwiftyEvents

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = addButton()    
        button.didTap {
            print("Button Tapped")
        }

        let segmentedControl = addSegmentedControl()
        segmentedControl.valueDidChange {
            print("Segment value changed")
        }

        let switcher = addSwitch()
        switcher.valueDidChange {
            print("Switch value changed")
        }

        let slider = addSlider()
        slider.valueDidChange {
            print(slider.value)
        }

        let textField = addTextField()
        textField.didEdit {
            print("Text did chage: ", textField.text!)
        }

        
    }
}

extension ViewController {
    @discardableResult
    func addButton() -> UIButton{
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        btn.setTitle("Tap", for: .normal)
        btn.backgroundColor = .green
        view.addSubview(btn)
        return btn
    }

    @discardableResult
    func addSegmentedControl() -> UISegmentedControl {
        let control = UISegmentedControl(items: ["Tab 1", "Tab 2"])
        control.frame = CGRect(x: 100, y: 200, width: 200, height: 30)
        control.selectedSegmentIndex = 0
        view.addSubview(control)
        return control
    }

    @discardableResult
    func addSwitch() -> UISwitch {
        let switcher = UISwitch(frame: CGRect(x: 100, y: 300, width: 40, height: 20))
        view.addSubview(switcher)
        return switcher
    }

    @discardableResult
    func addSlider() -> UISlider {
        let slider = UISlider(frame: CGRect(x: 100, y: 400, width: 100, height: 20))
        view.addSubview(slider)
        return slider
    }

    @discardableResult
    func addTextField() -> UITextField {
        let textField = UITextField(frame: CGRect(x: 100, y: 500, width: 150, height: 30))
        textField.backgroundColor = .gray
        view.addSubview(textField)
        return textField
    }
}
