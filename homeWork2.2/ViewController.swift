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
    @IBOutlet weak var alphaName: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    private var red = 0.5
    private var green = 0.5
    private var blue = 0.5
    private var alpha = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alphaName.text = " \u{1F4A7} "
        coloredView.backgroundColor = .init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: (1 - CGFloat(alpha)))
        redSlider.thumbTintColor = .init(red: CGFloat(red), green: 0, blue: 0, alpha: 1)
        redSlider.minimumTrackTintColor = .init(red: CGFloat(red), green: 0, blue: 0, alpha: 1)
        greenSlider.thumbTintColor = .init(red: 0, green: CGFloat(green), blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = .init(red: 0, green: CGFloat(green), blue: 0, alpha: 1)
        blueSlider.thumbTintColor = .init(red: 0, green: 0, blue: CGFloat(blue), alpha: 1)
        blueSlider.minimumTrackTintColor = .init(red: 0, green: 0, blue: CGFloat(blue), alpha: 1)
    }

    @IBAction func redSliderMoved() {
        redLabel.text = String(round(redSlider.value * 100) / 100)
        red = Double(redSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: (1 - CGFloat(alpha)))
        redSlider.thumbTintColor = .init(red: CGFloat(red), green: 0, blue: 0, alpha: 1)
        redSlider.minimumTrackTintColor = .init(red: CGFloat(red), green: 0, blue: 0, alpha: 1)
    }
    @IBAction func greenSliderMoved() {
        greenLabel.text = String(round(greenSlider.value * 100) / 100)
        green = Double(greenSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: (1 - CGFloat(alpha)))
        greenSlider.thumbTintColor = .init(red: 0, green: CGFloat(green), blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = .init(red: 0, green: CGFloat(green), blue: 0, alpha: 1)
    }
    @IBAction func blueSliderMoved() {
        blueLabel.text = String(round(blueSlider.value * 100) / 100)
        blue = Double(blueSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: (1 - CGFloat(alpha)))
        blueSlider.thumbTintColor = .init(red: 0, green: 0, blue: CGFloat(blue), alpha: 1)
        blueSlider.minimumTrackTintColor = .init(red: 0, green: 0, blue: CGFloat(blue), alpha: 1)
    }
    @IBAction func alphaSliderMoved() {
        alphaLabel.text = String(round(alphaSlider.value * 100) / 100)
        alpha = Double(alphaSlider.value)
        coloredView.backgroundColor = .init(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: (1 - CGFloat(alpha)))
    }
    
}

