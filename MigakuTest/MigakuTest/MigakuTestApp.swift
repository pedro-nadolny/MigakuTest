import SwiftUI
import Home
import MigakuDesignSystem

@main
struct MigakuTestApp: App {
    init() {
        MigakuDesignSystem.registerAllFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            Home.makeHome()
        }
    }
}
