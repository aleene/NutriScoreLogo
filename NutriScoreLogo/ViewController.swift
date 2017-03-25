//
//  ViewController.swift
//  NutriScoreLogo
//
//  Created by arnaud on 24/03/17.
//  Copyright © 2017 Hovering Above. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreSegmentedControl: UISegmentedControl! {
        didSet {
            smallNutritionScore?.currentScore = nil
            mediumNutritionScore?.currentScore = nil
            largeNutritionScore?.currentScore = nil
        }
    }

    @IBAction func selectScoreSegmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            smallNutritionScore?.currentScore = .A
            mediumNutritionScore?.currentScore = .A
            largeNutritionScore?.currentScore = .A
        case 1:
            smallNutritionScore?.currentScore = .B
            mediumNutritionScore?.currentScore = .B
            largeNutritionScore?.currentScore = .B
        case 2:
            smallNutritionScore?.currentScore = .C
            mediumNutritionScore?.currentScore = .C
            largeNutritionScore?.currentScore = .C
        case 3:
            smallNutritionScore?.currentScore = .D
            mediumNutritionScore?.currentScore = .D
            largeNutritionScore?.currentScore = .D
        case 4:
            smallNutritionScore?.currentScore = .E
            mediumNutritionScore?.currentScore = .E
            largeNutritionScore?.currentScore = .E
        default:
            smallNutritionScore?.currentScore = nil
            mediumNutritionScore?.currentScore = nil
        largeNutritionScore?.currentScore = nil
        }
    }
    
    @IBOutlet weak var smallNutritionScore: NutriScoreView! {
        didSet {
            smallNutritionScore?.currentScore = nil
        }
    }
    
    @IBOutlet weak var mediumNutritionScore: NutriScoreView! {
        didSet {
            mediumNutritionScore?.currentScore = nil
        }
    }

    
    @IBOutlet weak var largeNutritionScore: NutriScoreView! {
        didSet {
            largeNutritionScore?.currentScore = nil
        }
    }

    func deviceDidRotate() {
        smallNutritionScore.layoutIfNeeded()
        mediumNutritionScore.layoutIfNeeded()
        largeNutritionScore.layoutIfNeeded()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(
            self,
            selector:  #selector(deviceDidRotate),
            name: .UIDeviceOrientationDidChange,
            object: nil
        )
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
        super.viewWillDisappear(animated)
    }

}

