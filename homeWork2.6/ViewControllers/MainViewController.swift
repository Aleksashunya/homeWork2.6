//
//  MainViewController.swift
//  homeWork2.6
//
//  Created by Александра Мельникова on 04.06.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    private var color = Color(red: CGFloat(1), green: CGFloat(1), blue: CGFloat(1), alpha: CGFloat(1)) {
        didSet {
            mainView.backgroundColor = .init(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = color
        settingsVC.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .init(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func update(color: Color) {
        self.color = color
    }
}
