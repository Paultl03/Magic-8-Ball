//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Paul Logan III on 6/11/19.
//  Copyright © 2019 Paul Logan III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   var randomBallNumber: Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
   
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: Any) {
   
            randomBallNumber = Int.random(in: 0...4)
            imageView.image = UIImage(named: ballArray[randomBallNumber])
    
    
   
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
      
}
    

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}






