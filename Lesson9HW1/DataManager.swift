//
//  DataManager.swift
//  Lesson9HW1
//
//  Created by vaksakalov on 18.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    var amimationPresets = [String]()
    var animationCurves = [String]()
    
    private init() {
        
    }
    
}
