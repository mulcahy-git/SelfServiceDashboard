//
//  ContentView.swift
//  SelfServiceDashboard
//
//  Created by Ironside on 11/29/25.
//

import SwiftUI

struct ContentView: View {

    // MARK: - Grid Layouta
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {

                    // MARK: - Incident
                    NavigationLink(destination: IncidentWorkspace()) {
                        DashboardTile(
                            title: "Incident",
                            icon: "exclamationmark.triangle.fill",
                            color: .brandPrimary
                        )
                    }
                    .buttonStyle(BounceButtonStyle())

                    // MARK: - Problem
                    NavigationLink(destination: ProblemWorkspace()) {
                        DashboardTile(
                            title: "Problem",
                            icon: "questionmark.circle.fill",
                            color: .brandSecondary
                        )
                    }
                    .buttonStyle(BounceButtonStyle())

                    // MARK: - Change
                    NavigationLink(destination: ChangeWorkspace()) {
                        DashboardTile(
                            title: "Change",
                            icon: "arrow.triangle.2.circlepath",
                            color: .brandAccent
                        )
                    }
                    .buttonStyle(BounceButtonStyle())

                    // MARK: - Knowledge
                    NavigationLink(destination: KnowledgeWorkspace()) {
                        DashboardTile(
                            title: "Knowledge",
                            icon: "book.fill",
                            color: .brandPrimary
                        )
                    }
                    .buttonStyle(BounceButtonStyle())
                }
                .padding(.horizontal)
                .padding(.top, 16)
            }
            .background(Color.brandLight2.ignoresSafeArea())
            .navigationTitle("Self Service Dashboard")
            .toolbarTitleDisplayMode(.inline)

            // ⭐ FIX FOR DARK MODE NAV BAR (iOS ONLY)
            #if os(iOS)
            .toolbarBackground(.thinMaterial, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            #endif
        }
    }
}


// MARK: - Preview
#Preview {
    ContentView()
}
