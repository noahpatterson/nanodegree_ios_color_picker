//
//  ViewController.swift
//  ClickCounter
//
//  Created by Noah Patterson on 7/9/16.
//  Copyright © 2016 Noah Patterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var twoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //label
        let label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //label2
        let label2 = UILabel()
        label2.frame = CGRectMake(150, 100, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.twoLabel = label2
        
        //button
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 100, 100)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        //decrement button
        let button2 = UIButton()
        button2.frame = CGRectMake(150, 350, 100, 100)
        button2.setTitle("Decrement", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        button2.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
        
        //chage background color button
        let button3 = UIButton()
        button3.frame = CGRectMake(150, 450, 100, 100)
        button3.setTitle("Background", forState: .Normal)
        button3.setTitleColor(UIColor.yellowColor(), forState: .Normal)
        button3.addTarget(self, action: #selector(ViewController.changeBackgroundColor), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button3)
    }
    
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.twoLabel.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.twoLabel.text = "\(self.count)"
    }
    
    func changeBackgroundColor() {
        let randomColor = UIColor(red: CGFloat(randomCGFloat()), green: CGFloat(randomCGFloat()), blue: CGFloat(randomCGFloat()), alpha: 1.0)
        self.view.backgroundColor = randomColor
    }
    
    func randomCGFloat() -> Float {
        return Float(arc4random()) /  Float(UINT32_MAX)
    }
}

