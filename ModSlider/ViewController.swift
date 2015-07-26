//
//  ViewController.swift
//  ModSlider
//
//  Created by Michael Vilabrera on 7/25/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sliderValueChanged(sender: UISlider) {
        // records the value of UISlider
        var currentValue = CGFloat(sender.value)
        
        println("\(currentValue)")
    }
    
    func makeLayout() {
        slider = UISlider()
        slider.setTranslatesAutoresizingMaskIntoConstraints(false)
        slider.addTarget(self, action: "sliderValueChanged:", forControlEvents: .ValueChanged)
        view.addSubview(slider)
        
        //----------------------------------------constraints
        let viewsDictionary = ["slider":slider]
        
        // constraint strings
        let slider_H: String! = "H:[slider]"
        let slider_V: String! = "V:[slider]"
        
        // sizing constraints
        let slider_constraint_H: Array = NSLayoutConstraint.constraintsWithVisualFormat(slider_H, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        let slider_constraint_V: Array = NSLayoutConstraint.constraintsWithVisualFormat(slider_V, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary)
        
        let view_H: String! = "H:|[slider]|"
        let view_V: String! = "V:|[slider]|"
        
//        let spinNumber: CGFloat = CGFloat(M_PI) * 1.5
//        let transform: CGAffineTransform = CGAffineTransformMakeRotation(spinNumber)
//        
//        slider.transform = transform
        slider.addConstraints(slider_constraint_H)
        slider.addConstraints(slider_constraint_V)
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(view_H, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat(view_V, options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDictionary))
    }
}

