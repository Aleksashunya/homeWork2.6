//
//  ViewController.swift
//  homeWork2.2
//
//  Created by Александра Пушмина on 21.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var alphaNameLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alphaNameLabel.text = " \u{1F4A7} "
        coloredView.layer.cornerRadius = 10
    }
        
    @IBAction func redSliderMoved() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    @IBAction func greenSliderMoved() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    @IBAction func blueSliderMoved() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    @IBAction func alphaSliderMoved() {
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
    
}

