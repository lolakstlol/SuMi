//
//  Rolls.swift
//  SushiExample
//
//  Created by Macbook on 04.01.2020.
//  Copyright © 2020 EPLAN. All rights reserved.
//

import UIKit


struct Rolls {
    var mainImage : UIImage
    var smallDescription : String
    var sushiName : String
    var cost : Int
    
    static func fetchSushi() -> [Rolls] {
        let firstItem = Rolls(mainImage: UIImage(named: "sushi1")!,
                              smallDescription: "Original Japanese", sushiName: "Jengibre",
                                   cost: 8)
        let secondItem = Rolls(mainImage: UIImage(named: "sushi2")!,
                               smallDescription: "Original Japanese", sushiName: "Caviar",
                                    cost: 10)
        let thirdItem = Rolls(mainImage: UIImage(named: "sushi3")!,
                              smallDescription: "Original Japanese", sushiName: "Camaron",
                                   cost: 7)
        let fouthItem = Rolls(mainImage: UIImage(named: "sushi4")!,
                              smallDescription: "Original Japanese", sushiName: "Salmon",
                                   cost: 12)
        let five = Rolls(mainImage: UIImage(named: "sushi1")!,
                         smallDescription: "Original Japanese", sushiName: "Jengibre",
                              cost: 8)
        let six = Rolls(mainImage: UIImage(named: "sushi2")!,
                        smallDescription: "Original Japanese", sushiName: "Caviar",
                             cost: 10)
        let seven = Rolls(mainImage: UIImage(named: "sushi3")!,
                          smallDescription: "Original Japanese", sushiName: "Camaron",
                               cost: 7)
        
        let eight = Rolls(mainImage: UIImage(named: "sushi4")!,
                          smallDescription: "Original Japanese", sushiName: "Salmon",
                               cost: 12)
        
        
        return [firstItem, secondItem, thirdItem, fouthItem, five, six, seven, eight]
    }
    
    
}
