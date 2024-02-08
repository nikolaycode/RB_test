//
//  GraphicCell.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import SwiftUI

struct GraphicCell: View {
    var percent: Int
    var text: String
    
    var width: CGFloat {
        UIScreen.width / 100.0 * CGFloat(percent)
    }
    var padding: CGFloat {
        CGFloat(6) * 2
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 1)
                .frame(
                    width: width - padding,
                    height: 8
                )

            Text(text)
                .font(.footnote)
                .bold()
        }
    }
}

#Preview {
    GraphicCell(percent: 20, text: "test")
}
