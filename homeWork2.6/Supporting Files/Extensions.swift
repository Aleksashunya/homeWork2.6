//
//  Extensions.swift
//  homeWork2.6
//
//  Created by Александра Мельникова on 06.06.2021.
//

import UIKit

extension SettingsViewController {
    func setColor(_: Color) {
        coloredView.backgroundColor = .init(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
        
        for (label, color) in zip(colorLabels, color.rgb) {
            label.text = String(format: "%.2f", color)
        }
        for (textField, color) in zip(colorTextFields, color.rgb) {
            textField.text = String(format: "%.2f", color)
        }
        for (slider, color) in zip(colorSliders, color.rgb) {
            slider.value = Float(color)
        }
    }
}

extension UITextField{
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}
