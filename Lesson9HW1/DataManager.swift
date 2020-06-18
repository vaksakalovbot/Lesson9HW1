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
        
    let amimationPresets = ["slideLeft",
                            "slideRight",
                            "slideDown",
                            "slideUp",
                            "squeezeLeft",
                            "squeezeRight",
                            "squeezeDown",
                            "squeezeUp",
                            "fadeIn",
                            "fadeOut",
                            "fadeOutIn",
                            "fadeInLeft",
                            "fadeInRight",
                            "fadeInDown",
                            "fadeInUp",
                            "zoomIn",
                            "zoomOut",
                            "fall",
                            "shake",
                            "pop",
                            "flipX",
                            "flipY",
                            "morph",
                            "squeeze",
                            "flash",
                            "wobble",
                            "swing"]
    
    let animationCurves = ["easeIn",
                           "easeOut",
                           "easeInOut",
                           "linear",
                           "spring",
                           "easeInSine",
                           "easeOutSine",
                           "easeInOutSine",
                           "easeInQuad",
                           "easeOutQuad",
                           "easeInOutQuad",
                           "easeInCubic",
                           "easeOutCubic",
                           "easeInOutCubic",
                           "easeInQuart",
                           "easeOutQuart",
                           "easeInOutQuart",
                           "easeInQuint",
                           "easeOutQuint",
                           "easeInOutQuint",
                           "easeInExpo",
                           "easeOutExpo",
                           "easeInOutExpo",
                           "easeInCirc",
                           "easeOutCirc",
                           "easeInOutCirc",
                           "easeInBack",
                           "easeOutBack",
                           "easeInOutBack"]
    
    private init() {}
    
}
