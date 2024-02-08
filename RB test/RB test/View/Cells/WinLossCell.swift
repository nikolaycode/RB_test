//
//  BottomCell.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import SwiftUI

struct WinLossCell: View {
    var stat: Stat
    
    var body: some View {
        VStack {
            HStack {
                Text("Выигрыши/проигрыши по букмейкерам")
                    .bold()
                
                Spacer()
            }
            .padding()
            
            HStack {
                Image("company")
                    .resizable()
                    .frame(width: 100, height: 60)
                
                Text("\(stat.countOfBets) ставки")
                
                Spacer()
            }
            .padding([.leading, .trailing])
            
            HGraphic(stat: stat)
                .padding([.leading, .trailing, .bottom])
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .border(Color.black)
    }
}

#Preview {
    WinLossCell(stat: Stat(countOfBets: 32, wins: 16, losses: 11, returns: 5))
}
