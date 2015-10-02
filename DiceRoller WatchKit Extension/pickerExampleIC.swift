//
//  pickerExampleIC.swift
//  DiceRoller
//
//  Created by Jonathan Dummer on 10/2/15.
//  Copyright © 2015 Jonathan Dummer. All rights reserved.
//

import WatchKit
import Foundation


class pickerExampleIC: WKInterfaceController
{

    @IBOutlet var thePicker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        var thePickerItems = [WKPickerItem]()
        let labelNames = ["D4","D6","D8","D10","D12","D20","D100"]
        for(var i = 0; i < labelNames.count; i++)
        {
            thePickerItems.append(WKPickerItem())
            thePickerItems[i].title = labelNames[i]
            thePickerItems[i].contentImage = WKImage(imageName: labelNames[i] + ".jpg")
            thePickerItems[i].caption = labelNames[i]
        }
        self.thePicker.setItems(thePickerItems)
        // Configure interface objects here.
    }
    
    @IBAction func pickerWasClicked(value: Int)
    {
        
    }

    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate()
    {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
