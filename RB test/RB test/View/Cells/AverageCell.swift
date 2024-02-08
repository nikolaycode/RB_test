//
//  TopCell.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import SwiftUI

struct AverageCell: View {
    var coefficientPercents: CoefficientPercents
    
    var coefficients: Coefficients {
        coefficientPercents.getCoefficients()
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Средние коэффициенты")
                    .bold()

                Spacer()
            }
            
            CoefficientCell(percent: coefficientPercents.winsPer, color: .green, text: "Выигрыш", coefficient: coefficients.wins)
            CoefficientCell(percent: coefficientPercents.lossesPer, color: .red, text: "Проигрыш", coefficient: coefficients.losses)
            CoefficientCell(percent: coefficientPercents.returnsPer, color: .gray, text: "Возврат", coefficient: coefficients.returns)

        }
        .padding()
        .border(Color.black)
        .frame(minWidth: 0, maxWidth: .infinity)
    }
}

#Preview {
    AverageCell(coefficientPercents: CoefficientPercents(winsPer: 50, lossesPer: 30, returnsPer: 20))
}
