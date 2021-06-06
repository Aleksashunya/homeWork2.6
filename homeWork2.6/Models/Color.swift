//
//  Color.swift
//  homeWork2.6
//
//  Created by Александра Мельникова on 05.06.2021.
//

import UIKit

struct Color {
    var red: CGFloat
    var green: CGFloat
    var blue: CGFloat
    var alpha: CGFloat
    
    var rgb: [CGFloat] {
        [red, green, blue, alpha]
    }
}
