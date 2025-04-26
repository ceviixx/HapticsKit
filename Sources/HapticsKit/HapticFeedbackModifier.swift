//
//  HapticFeedbackModifier.swift
//  HapticsKit
//
//  Created by ceviixx on 26.04.25.
//

import SwiftUI

/// A ViewModifier that triggers haptic feedback when the view is tapped.
struct HapticFeedbackModifier: ViewModifier {
    let type: HapticType

    func body(content: Content) -> some View {
        content
            .onTapGesture {
                HapticsKit.trigger(type)
            }
    }
}

public extension View {
    /// Triggers haptic feedback when the view is tapped.
    /// - Parameter type: The type of haptic feedback to trigger.
    /// - Returns: The modified view.
    func hapticFeedback(_ type: HapticType) -> some View {
        self.modifier(HapticFeedbackModifier(type: type))
    }
}
