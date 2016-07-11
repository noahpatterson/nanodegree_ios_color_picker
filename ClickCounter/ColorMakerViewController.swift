//
//  ColorMakerViewController.swift
//  ClickCounter
//
//  Created by Noah Patterson on 7/10/16.
//  Copyright © 2016 Noah Patterson. All rights reserved.
//

import UIKit

class ColorMakerViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func changeColorComponent(sender: AnyObject) {
        let r: CGFloat = self.redSwitch.on   ? 1 : 0
        let g: CGFloat = self.greenSwitch.on ? 1 : 0
        let b: CGFloat = self.blueSwitch.on  ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
    @IBAction func changeColorWithSlider(sender: AnyObject) {
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}
