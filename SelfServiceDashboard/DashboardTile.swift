//
//  DashboardTile.swift
//  SelfServiceDashboard
//
//  Created by Ironside on 11/29/25.
//

import SwiftUI

// MARK: - Dashboard Tile Component
/// A reusable tile for the Dashboard grid.
/// Displays an icon + title with brand styling and a soft background.
/// Designed to be lightweight so it can be wrapped in NavigationLink
/// and animated using custom button styles.

struct DashboardTile: View {
    let title: String        // Visible label on tile
    let icon: String         // SF Symbol name
    let color: Color         // Icon tint (brand color)

    var body: some View {
        VStack(spacing: 16) {

            // MARK: Icon
            Image(systemName: icon)
                .symbolRenderingMode(.hierarchical)
                .font(.system(size: 40, weight: .semibold))
                .foregroundColor(color)

            // MARK: Title
            Text(title)
                .font(.headline)
                .foregroundColor(.brandDark1)
                .multilineTextAlignment(.center)
        }
        .padding(.vertical, 24)
        .frame(maxWidth: .infinity, minHeight: 150)
        .background(tileBackground)
        .shadow(color: .black.opacity(0.08), radius: 6, x: 0, y: 4)
    }

    // MARK: - Background
    private var tileBackground: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.brandLight1)
    }
}

// MARK: - Preview
#Preview {
    DashboardTile(
        title: "Incident",
        icon: "exclamationmark.triangle.fill",
        color: .brandPrimary
    )
    .padding()
}

