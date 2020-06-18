//
//  ViewController.swift
//  Lesson9HW1
//
//  Created by vaksakalov on 18.06.2020.
//  Copyright © 2020 Vladimir. All rights reserved.
//

import UIKit
import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationSpringButton: SpringButton!
    @IBOutlet var animationSpringView: SpringView!
    @IBOutlet var presetNameLabel: UILabel!
    @IBOutlet var curveNameLabel: UILabel!
    
    var curIndexPreset = 0
    var nextIndexPreset = 0
    var curIndexCurve = -1
    var nextIndexCurve = 0
    
    let animationPresets = DataManager.shared.amimationPresets
    let animationCurves = DataManager.shared.animationCurves

    override func viewDidLoad() {
        super.viewDidLoad()
        animationSpringView.layer.cornerRadius = 20
        animationSpringButton.layer.cornerRadius = 10
        animationSpringButton.titleLabel?.numberOfLines = 2
        animationSpringButton.setTitle("Next preset: \(animationPresets[nextIndexPreset])\nNext curve: \(animationCurves[nextIndexCurve])",
            for: .normal)
        presetNameLabel.text = ""
        curveNameLabel.text = ""
    }

    @IBAction func aminateButtonTapped() {
        curIndexCurve += 1
        if curIndexCurve == animationCurves.count {
            curIndexCurve = 0
            curIndexPreset += 1
            if curIndexPreset == animationPresets.count {
                curIndexPreset = 0
            }
        }
        
        nextIndexCurve = curIndexCurve + 1
        if nextIndexCurve == animationCurves.count {
            nextIndexCurve = 0
            nextIndexPreset = curIndexPreset + 1
            if nextIndexPreset == animationPresets.count {
                nextIndexPreset = 0
            }
        }
        
        animationSpringButton.setTitle("Next preset: \(animationPresets[nextIndexPreset])\nNext curve: \(animationCurves[nextIndexCurve])",
            for: .normal)
        
        showAnimation(animationPresetName: animationPresets[curIndexPreset],
                      animationCurveName: animationCurves[curIndexCurve])
        
        animationSpringButton.animation = "wobble"
        animationSpringButton.animate()
    }
    
    private func showAnimation(animationPresetName: String, animationCurveName: String) {
        presetNameLabel.text = animationPresetName
        curveNameLabel.text = animationCurveName
        animationSpringView.animation = animationPresetName
        animationSpringView.curve = animationCurveName
        animationSpringView.animate()
    }
        
}

