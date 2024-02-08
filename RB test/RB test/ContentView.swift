//
//  ContentView.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import SwiftUI

let WINS = 60
let LOSSES = 25
let RETURNS = 15

struct ContentView: View {
    @State var stat = Stat.rand()
    
    var body: some View {
        VStack {
            AverageCell(coefficientPercents: CoefficientPercents(winsPer: WINS, lossesPer: LOSSES, returnsPer: RETURNS))
                .padding(.bottom)
            
            WinLossCell(stat: stat)
                .padding(.bottom)
            
            Button {
                withAnimation(.easeInOut(duration: 1)) {
                    stat = Stat.rand()
                }
            } label: {
                Text("Обновить значения")
            }
        }
    }
}

#Preview {
    ContentView()
}
