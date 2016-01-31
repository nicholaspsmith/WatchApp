//
//  InterfaceController.swift
//  AppleWatchApp1 WatchKit Extension
//
//  Created by Nick on 1/27/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var nameLbl: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func buttonPressed() {
        
        let randomNumber = arc4random_uniform(2)
        var label = ""
        
        if randomNumber == 0 {
            label = "Heads"
        } else {
            label = "Tails"
        }
        
        nameLbl.setText("\(label)")
    }

}
