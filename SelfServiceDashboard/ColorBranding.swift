//
//  ColorBranding.swift
//  SelfServiceDashboard
//
//  Created by Ironside on 11/29/25.
//

import SwiftUI

// MARK: - Brand Color Palette
/// Centralized color system for the Self Service Dashboard.
/// Update these values to globally reskin your entire application.

extension Color {

    // MARK: Primary Brand Colors
    static let brandPrimary   = Color(hex: "#2D9CDB")   // Bright blue
    static let brandSecondary = Color(hex: "#9B51E0")   // Purple accent
    static let brandAccent    = Color(hex: "#6FCF97")   // Green/teal highlight

    // MARK: Dark Backgrounds
    static let brandDark1     = Color(hex: "#0F172A")   // Deep slate
    static let brandDark2     = Color(hex: "#1E293B")   // Slightly lighter slate

    // MARK: Light Backgrounds
    static let brandLight1    = Color(hex: "#F1F5F9")   // Soft gray
    static let brandLight2    = Color(hex: "#FFFFFF")    // Pure white
}

// MARK: - Hex Color Initializer
/// Allows constructing a SwiftUI Color using a hex string.
/// Handles 6-digit RGB and also supports optional alpha (8-digit hex).
/// 
extension Color {
    init(hex: String) {
        var cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleaned = cleaned.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: cleaned).scanHexInt64(&rgb)

        let hasAlpha = cleaned.count == 8

        let r = Double((rgb >> (hasAlpha ? 24 : 16)) & 0xFF) / 255
        let g = Double((rgb >> (hasAlpha ? 16 : 8)) & 0xFF) / 255
        let b = Double((rgb >> (hasAlpha ? 8 : 0)) & 0xFF) / 255
        let a = hasAlpha ? Double(rgb & 0xFF) / 255 : 1.0

        self.init(red: r, green: g, blue: b, opacity: a)
    }
}

