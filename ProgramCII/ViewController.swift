//
//  ViewController.swift
//  ProgramCII
//
//  Created by Rev on 17/04/19.
//  Copyright © 2019 Paramakshara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        helloWorld()
        helloWorld(str: "india")
    }

    func helloWorld() {
        print("helloWorld")
    }
    func helloWorld(str: String) {
        print("helloWorld")
    }

}

