# HapticsKit

Simple and expressive haptic feedback manager for iOS and watchOS using Swift.

<p align="center">
  <img src="./images/HapticsKit.png" />
</p>
                                                    
## ✨ Features

- Trigger system haptic feedback with a clean Swift API
- Predefined shortcut methods for common feedback types
- Works with `Button`, `Text`, or any SwiftUI view
- Supports `iOS 13+` and `watchOS 6+`
- Includes a SwiftUI `ViewModifier` for one-liner usage

---

## 📦 Installation

### Swift Package Manager

In Xcode:

1. Go to **File > Add Packages**
2. Enter the repository URL: https://github.com/ceviixx/HapticsKit.git
3. Add the `HapticsKit` library to your target.

---

## 🔧 Usage

### Trigger feedback manually

```swift
import HapticsKit

HapticsManager.success()
HapticsManager.selectionChanged()
HapticsManager.trigger(.impact(style: .medium))


## Use in SwiftUI with ViewModifier
```swift
import SwiftUI
import HapticsKit

Text("Tap me")
    .padding()
    .background(Color.gray.opacity(0.2))
    .cornerRadius(8)
    .hapticFeedback(.selection)
```

## 🎛 Available Feedback Types
### Manual
```swift
HapticsManager.trigger(.selection)
HapticsManager.trigger(.impact(style: .light))
HapticsManager.trigger(.notification(type: .success))
```

### Shortcuts
```swift
HapticsManager.selectionChanged()
HapticsManager.lightImpact()
HapticsManager.mediumImpact()
HapticsManager.heavyImpact()
HapticsManager.success()
HapticsManager.error()
HapticsManager.warning()
```

## 🛠 Requirements
- iOS 13+ or watchOS 6+
- Swift 5.9+
- Xcode 15+
