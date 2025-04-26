//
//  HapticsKit.swift
//  HapticsKit
//
//  Created by ceviixx on 26.04.25.
//

import UIKit

public enum HapticType {
    case selection
    case impact(style: UIImpactFeedbackGenerator.FeedbackStyle)
    case notification(type: UINotificationFeedbackGenerator.FeedbackType)
}

@MainActor
public struct HapticsKit {

    /// Triggers the specified type of haptic feedback.
    /// - Parameter type: The type of haptic feedback to trigger.
    public static func trigger(_ type: HapticType) {
        #if os(iOS) || os(watchOS)
        switch type {
        case .selection:
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            generator.selectionChanged()
        case .impact(let style):
            let generator = UIImpactFeedbackGenerator(style: style)
            generator.prepare()
            generator.impactOccurred()
        case .notification(let type):
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            generator.notificationOccurred(type)
        }
        #endif
    }

    // MARK: - Shortcut Methods

    public static func lightImpact() {
        trigger(.impact(style: .light))
    }

    public static func mediumImpact() {
        trigger(.impact(style: .medium))
    }

    public static func heavyImpact() {
        trigger(.impact(style: .heavy))
    }

    public static func success() {
        trigger(.notification(type: .success))
    }

    public static func error() {
        trigger(.notification(type: .error))
    }

    public static func warning() {
        trigger(.notification(type: .warning))
    }

    public static func selectionChanged() {
        trigger(.selection)
    }
}
