//
//  ViewController.swift
//  UnderlineUILabel
//
//  Created by MAC on 23.05.2019.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func label(_ sender: Any) {
        
        text.underline()
        
    }
    
}
extension UILabel {
    func underline() {
        if let textUnwrapped = self.text {
            
            let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
            
            let underlineAttributedString = NSAttributedString(string: textUnwrapped, attributes: underlineAttribute)
            
            self.attributedText = underlineAttributedString
        }
    }
}
