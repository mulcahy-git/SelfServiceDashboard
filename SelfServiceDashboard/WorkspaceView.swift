//
//  WorkspaceViews.swift
//  SelfServiceDashboard
//
//  Created by Ironside on 11/29/25.
//

import SwiftUI

// MARK: - Shared Workspace Container
/// A reusable layout for all workspace screens.
/// Handles padding, full-screen background, and consistent structure.

struct WorkspaceContainer<Content: View>: View {
    let title: String
    @ViewBuilder let content: () -> Content

    var body: some View {
        VStack {
            content()
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.brandLight2.ignoresSafeArea())
        .navigationTitle(title)
        .toolbarTitleDisplayMode(.inline)
    }
}

//////////////////////////////////////////////////////////////
// MARK: - Incident Workspace
//////////////////////////////////////////////////////////////

struct IncidentWorkspace: View {
    var body: some View {
        WorkspaceContainer(title: "Incident") {
            Text("Incident")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.brandDark1)
        }
    }
}

//////////////////////////////////////////////////////////////
// MARK: - Problem Workspace
//////////////////////////////////////////////////////////////

struct ProblemWorkspace: View {
    var body: some View {
        WorkspaceContainer(title: "Problem") {
            Text("Problem")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.brandDark1)
        }
    }
}

//////////////////////////////////////////////////////////////
// MARK: - Change Workspace
//////////////////////////////////////////////////////////////

struct ChangeWorkspace: View {
    var body: some View {
        WorkspaceContainer(title: "Change") {
            Text("Change")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.brandDark1)
        }
    }
}

//////////////////////////////////////////////////////////////
// MARK: - Knowledge Workspace
//////////////////////////////////////////////////////////////

struct KnowledgeWorkspace: View {
    var body: some View {
        WorkspaceContainer(title: "Knowledge") {
            Text("Knowledge")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.brandDark1)
        }
    }
}

#Preview {
    IncidentWorkspace()
}
