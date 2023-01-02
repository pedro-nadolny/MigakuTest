import Foundation
import SwiftUI
import MigakuDesignSystem
import AudioToolbox

struct HomeCard: View {
    var body: some View {
        ZStack {
            Retangular3DButton(height: Layout.retangularButton3DHeight) {
                VStack(spacing: Layout.contentSpacing) {
                    Text(Strings.title)
                        .titleStyle(Layout.titleSize)
                        .lineLimit(2)
                        .multilineTextAlignment(.center)
                    HStack {
                        Text(Strings.reviews)
                            .pillStyle(backgroundColor: .Basic.Seafoam)
                        Text(Strings.news)
                            .pillStyle(backgroundColor: .Basic.Blue)
                    }
                }
                .padding(.vertical, Layout.contentVerticalPadding)
                .padding(.horizontal, Layout.contentHorizontalPadding)
            }
            .pressAction(onPress: {
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
            })
            
            HStack {
                Spacer()
                Round3DButton()
                    .frame(width: Layout.goButtonSize, height: Layout.goButtonSize)
                    .offset(x: Layout.goButtonSize/2)
                    .pressAction(onPress: {
                        let generator = UINotificationFeedbackGenerator()
                        generator.notificationOccurred(.warning)
                    })
            }
        }
        .frame(width: Layout.width, height: Layout.height)
    }
}

private enum Layout {
    static let width = 240.0
    static let height = 157.0
    static let goButtonSize = 56.0
    static let contentVerticalPadding = 16.0
    static let contentHorizontalPadding = 16.0
    static let contentSpacing = 8.0
    static let titleSize = 36.0
    static let retangularButton3DHeight = 10.0
}

private enum Strings {
    static let title = "Study all\ndecks"
    static let reviews = "134 reviews"
    static let news = "18 new"
}
