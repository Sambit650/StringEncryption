//
//  DecryptViewController.swift
//  StringEncryption
//
//  Created by Sambit Das on 05/02/20.
//  Copyright © 2020 Sambit Das. All rights reserved.
//

import UIKit

class DecryptViewController: UIViewController {

    @IBOutlet weak var DecryptTextfield: UITextField!
    
    @IBOutlet weak var DecryptResult: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DecryptSubmit(_ sender: Any) {
        
        //Decryption method
        let oldDecArray = Array(DecryptTextfield.text!)
        var decArray = ""
        
            for value in  stride(from: 1, to: oldDecArray.count, by: 2){
            var temp = ""
            let toMove = Int(String(oldDecArray[value]))!
            for _ in 1...toMove{
                temp.append(oldDecArray[value - 1])

            }
            decArray.append(contentsOf: temp)
        }

        DecryptResult.text = decArray

        
        
    }
    
    

}
