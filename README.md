# SwiftyEvents

[![CI Status](https://img.shields.io/travis/Volkan Bicer/SwiftyEvents.svg?style=flat)](https://travis-ci.org/VolkanBicer/SwiftyEvents)
[![Version](https://img.shields.io/cocoapods/v/SwiftyEvents.svg?style=flat)](https://cocoapods.org/pods/SwiftyEvents)
[![License](https://img.shields.io/cocoapods/l/SwiftyEvents.svg?style=flat)](https://cocoapods.org/pods/SwiftyEvents)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyEvents.svg?style=flat)](https://cocoapods.org/pods/SwiftyEvents)

This library aims to use swifty way when you need to add target your **UIControl** objects. 

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Installation

SwiftyEvents is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyEvents'
```

## Usage


```swift
func addButton() {
let button = UIButton()
button.didTap {
print("Button did tap")
}
}
```

```swift
func addTextField() {
let textField = UITextField()
textField.didEdit {
print(textField.text)
}
}
```
```swift
func addSegmentedControl() {
let segmentedControl = UISegmentedControl()
segmentedControl.valueDidChange {
print("Value did change!")
}
}
```
Or you can use it for your custom **UIControl**'s you don't need to do anything.
```swift
func addCustomControl() {
let control = FancyCustomControl()
control.action(for: .touchUpInside) {
print("Tap event did fire")
}
}
```

##### Supported actions
* didTap
* UIButton
* valueDidChange
* UISegmentedControl
* UISwitch
* UISlider
* UIStepper
* UIRefreshControl
* didEdit
* UITextField



## Author

Volkan Bicer, vlknbcr@gmail.com

## License

SwiftyEvents is available under the MIT license. See the LICENSE file for more info.
