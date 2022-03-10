//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    
    let stories = [
        Story(q: "você encontra uma bifurcação na estrada", a: "segue a esquerda", b: "segue a direita"),
        Story(q: "você encontra um tigre", a: "grita por ajuda", b: "se finge de morto"),
        Story(q: "você encontra um baú do tesouro", a: "abre", b: "procura por armadilhas")
    ]
    
    var storieNumber = 0
    var choiceTracker = 0
    
    func getChoice() -> Int {
        return choiceTracker
    }
    
    func getStorie() -> String {
        return stories[storieNumber].text
    }
    
    mutating func nextStorie () {
        if storieNumber + 1 < stories.count {
            storieNumber += 1
        } else {
            storieNumber = 0
            choiceTracker = 0
        }
    }
    
}
