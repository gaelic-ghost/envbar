//
//  envbarApp.swift
//  envbar
//
//  Created by Gale Williams on 2/24/26.
//

import SwiftUI

@main
struct envbarApp: App {
	
	@State private var isInserted: Bool = true
	
    var body: some Scene {
		MenuBarExtra(
			"envbar",
			systemImage: "SystemImageString",
			isInserted: $isInserted
		) {
			MenuBarExtraWindow()
				.barwinVM()
		}
		.menuBarExtraStyle(.window)
		
		UtilityWindow("WindowTitle", id: "WindowID") {
			UtilityWindowView()
				.utilVM()
		}
		
    }
}

// MARK: - Custom ViewModifier Types

struct barItemWindowFormat: ViewModifier {
	func body(content: Content) -> some View {
		content
	}
}

struct utilityWindowFormat: ViewModifier {
	func body(content: Content) -> some View {
		content
	}
}

// MARK: View Extension for Above

extension View {
	func barwinVM() -> some View {
		modifier(barItemWindowFormat())
	}
	func utilVM() -> some View {
		modifier(utilityWindowFormat())
	}
}
