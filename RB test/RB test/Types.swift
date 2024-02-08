//
//  types.swift
//  RB test
//
//  Created by Nikolay Bogdanov on 08.02.2024.
//

import Foundation

struct Coefficients {
    var wins: Float
    var losses: Float
    var returns: Float
}

struct CoefficientPercents {
    var winsPer: Int
    var lossesPer: Int
    var returnsPer: Int
    
    func getCoefficients() -> Coefficients {
        Coefficients(wins: 100 / Float(winsPer), losses: 100 / Float(lossesPer), returns: 100 / Float(returnsPer))
    }
}

struct StatPercents {
    var winsPer: Int
    var lossesPer: Int
    var returnsPer: Int
}

struct Stat {
    var countOfBets: Int
    
    var wins: Int
    var losses: Int
    var returns: Int
    
    func getPercents() -> StatPercents {
        let per = Double(countOfBets) / 100.0
        
        return StatPercents(winsPer: Int(Double(wins) / per), lossesPer: Int(Double(losses) / per), returnsPer: Int(Double(returns) / per))
    }
    
    static func rand() -> Stat {
        let wins = Int.random(in: 25 ..< 35)
        let losses = Int.random(in: 20 ..< 25)
        let returns = Int.random(in: 10 ..< 15)
        
        let count = wins + losses + returns
        
        return Stat(countOfBets: count, wins: wins, losses: losses, returns: returns)
    }
}
