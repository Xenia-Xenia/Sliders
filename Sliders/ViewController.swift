//
//  ViewController.swift
//  Sliders
//
//  Created by Ксения Загарьева on 19.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    @IBOutlet var rLabel: UILabel!
    @IBOutlet var gLabel: UILabel!
    @IBOutlet var bLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
    }

    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    
    
    @IBAction func rgbSliderChanged(_ sender: Any) {
        changeColor()
        rLabel.text = String(format: "%.3f", rSlider.value)
        gLabel.text = String(format: "%.3f", gSlider.value)
        bLabel.text = String(format: "%.3f", bSlider.value)
    }
    
}

