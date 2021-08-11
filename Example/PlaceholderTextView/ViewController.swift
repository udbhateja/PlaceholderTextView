//
//  ViewController.swift
//  PlaceholderTextView
//
//  Created by udbhateja on 08/09/2021.
//  Copyright (c) 2021 udbhateja. All rights reserved.
//

import UIKit
import UDPlaceholderTextView

class ViewController: UIViewController {

    var textView: UDPlaceholderTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textView = UDPlaceholderTextView(frame: CGRect(x: 0, y: 0, width: 100.0, height: 100.0))
        textView.placeholder = "Please enter your comments"
        textView.placeholderColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

