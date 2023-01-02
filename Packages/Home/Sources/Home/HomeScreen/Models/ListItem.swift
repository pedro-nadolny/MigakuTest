import Foundation
import UIKit
import SwiftUI

struct HomeListItem: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let image: Image
    let tags: [Tag]
    let disclaimer: String?
    
    struct Tag: Identifiable, Equatable {
        let id = UUID()
        let text: String
        let color: Color
    }
}

extension HomeListItem {
    static var sampleList: [HomeListItem] {
        [
            .init(
                title: "Kanji Deck",
                image: .Assets.KLetter,
                tags: [
                    .init(text: "23 reviews", color: .Basic.Seafoam),
                    .init(text: "8 new cards", color: .Basic.Blue),
                ],
                disclaimer: nil),
            .init(
                title: "Japanese Native Flower Species",
                image: .Assets.Flower,
                tags: [
                    .init(text: "6 reviews", color: .Basic.Seafoam),
                    .init(text: "5 new cards", color: .Basic.Blue),
                ],
                disclaimer: nil),
            .init(
                title: "Sushi types",
                image: .Assets.Sushi,
                tags: [
                    .init(text: "6 reviews", color: .Basic.Seafoam),
                    .init(text: "2 overdue", color: .Basic.Red),
                ],
                disclaimer: nil),
            .init(
                title: "Japanese geography",
                image: .Assets.Japan,
                tags: [
                    .init(text: "6 reviews", color: .Basic.Seafoam),
                    .init(text: "0 new", color: .Basic.Red),
                ],
                disclaimer: "Make 5 new cards")
        ]
    }
}
