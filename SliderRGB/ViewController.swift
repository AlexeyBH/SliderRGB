//
//  ViewController.swift
//  SliderRGB
//
//  Created by Alexey Khestanov on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var colorField: UIView!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func changeColor() {
        guard let r = sliderRed,
              let g = sliderGreen,
              let b = sliderBlue
        else {
            print("Outlet connection error..")
            return
        }
        colorField.backgroundColor = UIColor(
            red: CGFloat(r.value),
            green: CGFloat(g.value),
            blue: CGFloat(b.value),
            alpha: 1.0
        )

    }
    

}

