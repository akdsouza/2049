//
//  HighScoreManager.swift
//  2049
//
//  Created by Daniel Beard on 7/7/15.
//  Copyright © 2015 DanielBeard. All rights reserved.
//

import Foundation

class HighScoreManager {
    
    static let highScoreKey = "highscore"
    
    class func updateHighScoreIfNeeded(newScore: Int) {
        if (newScore > currentHighScore()) {
            NSUserDefaults.standardUserDefaults().setInteger(newScore, forKey: highScoreKey)
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }

    class func currentHighScore() -> Int {
        return NSUserDefaults.standardUserDefaults().integerForKey(highScoreKey)
    }
    
}