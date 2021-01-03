//
//  RegistrationViewController.swift
//  ESPProvisionSample
//
//  Created by Tom Becnel on 1/3/21.
//  Copyright © 2021 Espressif. All rights reserved.
//

import ESPProvision
import Foundation
import UIKit

class RegistrationViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var textView: UITextView!
    var espDevice: ESPDevice!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let theURL = "https://google.com"
        let attributedString = NSMutableAttributedString(string: "Registration Page")
        attributedString.addAttribute(.link, value: theURL, range: NSRange(location: 0, length: theURL.count))
        textView.attributedText = attributedString
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}
