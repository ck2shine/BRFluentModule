# BRFluentModule
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SPM supported](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager)

BRFluentModule is a simple swift wrapper for creating swift object in fluent interface , just like SwiftUI . 
* In SwiftUI , it can write like this 
```swift
    Text("Shine")
        .frame(width: 100)
        .border(Color.red)
        .opacity(0.3)
```
By using this wrapper , it is able to write swift object in fluent interface.

## Requirement
| Version | OS | Swift | 
|------------|---------------|--------------------|
| **1.0.0** | iOS 11+ , macOS 10.14+ , watchOS 6+ |  5.1| 

## Installation

### Carthage

BRFluentModule is available through [Carthage](https://github.com/Carthage/Carthage). To install, simply just add the following line to Cartfile:

`github "ck2shine/BRFluentModule"`

### Swift Package Manager

* BRFluentModule is also available through [Swift Package Manager](https://github.com/apple/swift-package-manager/).
* Select File > Swift Packages > Add Package Dependency
* Search for https://github.com/ck2shine/BRFluentModule.git

### Install Manually

Simply copy file ``BRFluentModule.swift`` into your project , and it is ready to use .


## Usage
create object , add a **postfix operator** of ``^+`` after the object that want to write in fluent interface , then end with **postfix operator** of ``^-`` to avoid unused warning .
```swift
    let button = UIButton()
    button^+
        .frame(CGRect(x: 100, y: 100, width: 100, height: 40))
        .backgroundColor(.red)
        .alpha(0.8)^-
```

or

```swift
    let someView =
        UIView()^+
        .frame(CGRect(x: 10, y: 20, width: 300, height: 400))
        .isHidden(true)
        .backgroundColor(.blue)^-

    someView.layer^+
        .borderWidth(3)
        .borderColor(UIColor.gray.cgColor)
        .cornerRadius(5)^-
```


