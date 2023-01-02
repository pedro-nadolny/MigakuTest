import Foundation
import SwiftUI

struct HomeListCard: View {
    let item: HomeListItem
    
    var body: some View {
        HStack(spacing: 16) {
            item.image
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.interMedium(16))
                    .lineLimit(2)
                HStack {
                    ForEach(item.tags) { tag in
                        Text(tag.text)
                            .pillStyle(backgroundColor: tag.color)
                    }
                }
                if let disclaimer = item.disclaimer {
                    Text(disclaimer)
                        .font(.interMedium(14))
                        .foregroundColor(.Basic.Red)
                }
            }
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .background(.white)
        .cornerRadius(16)
        .shadowMedium()
    }
}
