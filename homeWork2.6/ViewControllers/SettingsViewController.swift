//
//  ViewController.swift
//  homeWork2.2
//
//  Created by Александра Пушмина on 21.05.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func update(color: Color)
}

class SettingsViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var coloredView: UIView!

    @IBOutlet var colorLabels: [UILabel]!
    @IBOutlet var colorSliders: [UISlider]!
    @IBOutlet var colorTextFields: [UITextField]!
    
    var color: Color!
    var delegate: SettingsViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloredView.layer.cornerRadius = 10
        setColor(color)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        if Double(textField.text ?? "1") ?? 1 > 1 {
            textField.text = "1"
        }
        color = Color(red: CGFloat(Double(colorTextFields[0].text ?? "0") ?? 0), green: CGFloat(Double(colorTextFields[1].text ?? "0") ?? 0), blue: CGFloat(Double(colorTextFields[2].text ?? "0") ?? 0), alpha: CGFloat(Double(colorTextFields[3].text ?? "0") ?? 0))
        
        setColor(color)
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        color = Color(red: CGFloat(colorSliders[0].value), green: CGFloat(colorSliders[1].value), blue: CGFloat(colorSliders[2].value), alpha: CGFloat(colorSliders[3].value))
        
        setColor(color)
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
        delegate?.update(color: color)
        dismiss(animated: true)
        
        for textField in colorTextFields {
            textField.delegate = self
        }
    }
}
