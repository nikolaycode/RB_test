//
//  OddCell.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import SwiftUI

struct CoefficientCell: View {
    var percent: Int
    var color: Color
    var text: String
    var coefficient: Float
    
    var width: CGFloat {
        UIScreen.width * 0.60
    }
    
    var body: some View {
        HStack {
            Rectangle()
                .frame(width: width, height: 8)
                .foregroundStyle(.gray.opacity(0.4))
                .overlay {
                    HStack {
                        Rectangle()
                            .frame(width: width / CGFloat(100) * CGFloat(percent))
                            .foregroundStyle(color)

                        Spacer()
                    }
                }
            
            Spacer()
            
            Text(text)
                .foregroundStyle(.gray)
                .font(.footnote)
                .bold()
            
            Spacer()
            
            Text(String(format: "%.2f", coefficient))
        }
    }
}

#Preview {
    CoefficientCell(percent: 60, color: .green, text: "Выигрыш", coefficient: 1.94)
}
