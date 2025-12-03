//
//  BounceButtonStyle.swift
//  SelfServiceDashboard
//
//  Created by Ironside on 11/29/25.
//

import SwiftUI

/// A reusable button style that adds a subtle "bounce" press animation.
/// Ideal for Dashboard tiles and tappable UI components.
///
/// Uses spring animation for a soft, natural feel.

struct BounceButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.94 : 1.0)
            .animation(
                .spring(
                    response: 0.25,          // duration of reaction
                    dampingFraction: 0.55,   // amount of bounce
                    blendDuration: 0.1       // smooth transitions
                ),
                value: configuration.isPressed
            )
    }
}

