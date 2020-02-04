//
//  EncryptionViewcontroller.swift
//  StringEncryption
//
//  Created by Sambit Das on 05/02/20.
//  Copyright © 2020 Sambit Das. All rights reserved.
//

import UIKit

class EncryptionViewcontroller: UIViewController {

    @IBOutlet weak var EncryptTextfield: UITextField!
    
    @IBOutlet weak var EncryptResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    

    @IBAction func EncryptSubmit(_ sender: Any) {
        let appleStrArray  = Array(EncryptTextfield.text!)
                  var newArray = ""
                  var count = 1
              
               
               for (index,ele) in appleStrArray.enumerated(){
                     // var count = 1
                      if  (index < appleStrArray.count - 1) && (ele != appleStrArray[index + 1]){
                          newArray.append(ele)
                          newArray.append(String(count))
                          count = 1
                      }else if (index < appleStrArray.count - 1) && ele == appleStrArray[index + 1]{
                          count += 1
                      }else{
                          newArray.append(ele)
                          newArray.append(String(count))
                      }
                   }
               EncryptResult.text! = newArray
               
}
    

}
