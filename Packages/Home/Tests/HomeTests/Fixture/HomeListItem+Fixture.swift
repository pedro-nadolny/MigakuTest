import Foundation
import SwiftUI
@testable import Home

extension HomeListItem {
    static func fixture(
        title: String = .init(),
        image: Image = Image(systemName: .init()),
        tags: [Tag] = [],
        disclaimer: String? = nil
    ) -> HomeListItem {
        .init(
            title: title,
            image: image,
            tags: tags,
            disclaimer: disclaimer
        )
    }
}
