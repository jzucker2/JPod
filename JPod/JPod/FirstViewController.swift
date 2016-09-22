//
//  FirstViewController.swift
//  JPod
//
//  Created by Jordan Zucker on 9/19/16.
//  Copyright © 2016 Jordan Zucker. All rights reserved.
//

import UIKit
import MediaPlayer

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if MPMediaLibrary.authorizationStatus() != .authorized {
            MPMediaLibrary.requestAuthorization({ (status) in
                if status != .authorized {
                    fatalError("We can only handle authorized right now")
                }
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

