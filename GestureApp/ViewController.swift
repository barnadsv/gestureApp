//
//  ViewController.swift
//  GestureApp
//
//  Created by Leonardo de Araujo Barnabe on 25/08/17.
//  Copyright © 2017 Leonardo de Araujo Barnabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapDetected(_ sender: UITapGestureRecognizer) {
        statusLabel.text = "Tap detectado"
    }
    
    @IBAction func pinchDetected(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let velocity = sender.velocity
        let resultString = "Pinch detectado \nEscala = \(String(format: "%.02f", scale)) \nVelocidade = \(String(format: "%.02f", velocity))"
        statusLabel.text = resultString
    }
    
    @IBAction func swipeDetected(_ sender: UISwipeGestureRecognizer) {
        statusLabel.text = "Swipe à direita detectado"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

