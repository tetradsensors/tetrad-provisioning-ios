//
//  EULAViewController.swift
//  ESPProvisionSample
//
//  Created by Tom Becnel on 1/12/21.
//  Copyright © 2021 Espressif. All rights reserved.
//

import UIKit

class EULAViewController: UIViewController {

    @IBOutlet weak var agreeButton: UIButton!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        let userAccepted = defaults.bool(forKey: "EULAAccepted")
        print("acc: ", defaults.bool(forKey: "EULAAccepted"))
        if(userAccepted){
            let mainVC = self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as! ViewController
            navigationController?.pushViewController(mainVC, animated: false)
        }
        else {
            super.viewDidLoad()
            navigationController?.setNavigationBarHidden(true, animated: false)
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func userDidAgree(_ sender: Any) {
        print("userDidAgree")
        defaults.set(true, forKey: "EULAAccepted")
        print("accepted: ", defaults.bool(forKey: "EULAAccepted"))
        let mainVC = self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as! ViewController
        navigationController?.pushViewController(mainVC, animated: false)
    }

}
