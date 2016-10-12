//
//  DecisionModel.swift
//  Decisions Making
//
//  Created by Enrique Barragán on 9/20/16.
//  Copyright © 2016 Enrique Barragan. All rights reserved.
//

import GameKit

struct DecisionModel {
    
    var decisionArray: [String] = []
    
        mutating func decide(choice1: String, choice2: String) -> String {
            decisionArray.append(choice1)
            decisionArray.append(choice2)
            let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound:decisionArray.count)
            return decisionArray[randomNumber]
        }
}
