//
//  ViewController.swift
//  rollDice
//
//  Created by Anes Mehai  on 6/20/18.
//  Copyright © 2018 Anes Mehai . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lftIMG: UIImageView!
    @IBOutlet weak var rghtIMG: UIImageView!
    
    @IBOutlet weak var rollBttn: UIButton!
    


    
    @IBAction func buttonPressed(_ sender: Any) {
        
        viewDidLoad()
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var hopAnimation: [UIImage] = [
            
        ]
        
        var hopAnimation2: [UIImage] = [
            
        ]
        
        for _ in 0...6 {
            
            let rndmNUMOne:Int = Int(arc4random_uniform(5)) + 1
            let rndmNUMTwo:Int = Int(arc4random_uniform(5)) + 1
            
            lftIMG.image = UIImage(named: "dice\(rndmNUMOne).jpg")
            rghtIMG.image = UIImage(named: "dice\(rndmNUMTwo).jpg")


            hopAnimation.append(UIImage(named: "dice\(rndmNUMOne).jpg")!)
            hopAnimation2.append(UIImage(named: "dice\(rndmNUMTwo).jpg")!)
 
        } // end of for loop
        
        lftIMG.animationImages = hopAnimation
        lftIMG.animationDuration = 1.0
        lftIMG.animationRepeatCount = 4
        lftIMG.startAnimating()
        
        rghtIMG.animationImages = hopAnimation2
        rghtIMG.animationDuration = 1.0
        rghtIMG.animationRepeatCount = 4
        rghtIMG.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
