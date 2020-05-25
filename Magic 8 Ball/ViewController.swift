//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImageView: UIImageView!
    @IBOutlet weak var askBtn: UIButton!
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        askBtn.layer.cornerRadius = 5
        askBtn.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func askBtnPressed(_ sender: UIButton) {
        ballImageView.image = ballArray.randomElement()
    }
}

