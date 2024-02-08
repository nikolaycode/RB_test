//
//  HGraphic.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import SwiftUI

struct HGraphic: View {
    var stat: Stat
    
    var percents: StatPercents {
        stat.getPercents()
    }
    
    var body: some View {
        HStack(spacing: 0) {
            GraphicCell(
                percent: percents.winsPer,
                text: "\(stat.wins) (\(percents.winsPer)%)"
            )
            .foregroundStyle(.green)
            
            Spacer()

            GraphicCell(
                percent: percents.lossesPer,
                text: "\(stat.losses) (\(percents.lossesPer)%)"
            )
            .foregroundStyle(.red)
            
            Spacer()
            
            GraphicCell(
                percent: percents.returnsPer,
                text: "\(stat.returns) (\(percents.returnsPer)%)"
            )
            .foregroundStyle(.gray)
        }
        .frame(height: 10)
    }
}

#Preview {
    HGraphic(stat: Stat(countOfBets: 32, wins: 16, losses: 11, returns: 5))
}
