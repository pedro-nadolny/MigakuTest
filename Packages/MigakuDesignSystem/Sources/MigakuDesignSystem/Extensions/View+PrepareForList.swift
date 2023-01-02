import Foundation
import SwiftUI

public extension View {
    func prepareForList() -> some View {
        listRowInsets(EdgeInsets())
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
    }
}
