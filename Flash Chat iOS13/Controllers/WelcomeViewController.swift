//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "loginVC", sender: nil)
    }
    
    @IBAction func regButtonVC(_ sender: UIButton) {
        performSegue(withIdentifier: "registaterVC", sender: nil)
    }
    
    
    func labelAnimation() {
        titleLabel.text = " "
        var charIndex: Double = 0.0
        let titleText: String = "⚡️FlashChat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

      //  labelAnimation()
        
        self.titleLabel.text = "⚡️FlashChat"
       
    }
    

}
