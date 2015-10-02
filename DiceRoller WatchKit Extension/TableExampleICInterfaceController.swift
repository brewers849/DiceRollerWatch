//
//  TableExampleICInterfaceController.swift
//  DiceRoller
//
//  Created by Jonathan Dummer on 9/30/15.
//  Copyright © 2015 Jonathan Dummer. All rights reserved.
//

import WatchKit
import Foundation


class TableExampleICInterfaceController: WKInterfaceController
{

    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: {() -> Void in})
    let sides = [4,6,8,10,12,20,100]
    
    @IBOutlet var theTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        let labelNames = ["D4","D6","D8","D10","D12","D20","D100"]
        self.theTable .setNumberOfRows(labelNames.count, withRowType: "cell")
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! diceRow
            currRow.theLabel.setText(labelNames[i])
            if(i == 0)
            {
                currRow.theImage.setImageNamed("d4.jpg")
            }
            else if(i == 1)
            {
                currRow.theImage.setImageNamed("d6.jpg")
            }
            
            else if(i == 2)
            {
                currRow.theImage.setImageNamed("d8.jpg")
            }
            
            else if(i == 3)
            {
                currRow.theImage.setImageNamed("d10.jpg")
            }
            
            else if(i == 4)
            {
                currRow.theImage.setImageNamed("d12.jpg")
            }
            else if(i == 5)
            {
                currRow.theImage.setImageNamed("d20.jpg")
            }
            
            else if(i == 6)
            {
                currRow.theImage.setImageNamed("d100.jpg")
            }
            
        }
    }

    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%Int32(self.sides[rowIndex]) + 1)", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
