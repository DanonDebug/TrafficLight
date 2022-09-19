//
//  ViewController.swift
//  HW
//
//  Created by user on 19.09.2022.
//

import UIKit

enum CurrentLight {
    case red,yellow,green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var redColorView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight: CurrentLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        greenColorView.layer.cornerRadius = greenColorView.frame.height / 2
        redColorView.layer.cornerRadius = redColorView.frame.height / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.height / 2
    }
    
    @IBAction func startButtonTapped() {
        switchColor()
    }
    
    private func switchColor() {
        if startButton.titleLabel?.text == "Start"{
            startButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redColorView.layer.opacity = 1
            yellowColorView.layer.opacity = 0.5
            greenColorView.layer.opacity = 0.5
            currentLight = .yellow
        case .yellow:
            yellowColorView.layer.opacity = 1
            redColorView.layer.opacity = 0.5
            greenColorView.layer.opacity = 0.5
            currentLight = .green
        case .green:
            yellowColorView.layer.opacity = 0.5
            redColorView.layer.opacity = 0.5
            greenColorView.layer.opacity = 1
            currentLight = .red
        }
    }
}
