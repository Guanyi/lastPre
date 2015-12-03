//
//  ViewController.swift
//  Internationalization
//
//  Created by Guanyi Fang on 2015-12-03.
//  Copyright © 2015 Guanyi Fang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enptyLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var currencyFormatter: NSNumberFormatter {
            let formatter = NSNumberFormatter()
            formatter.numberStyle = .CurrencyStyle
            return formatter
        }
        
        var dateFormatter: NSDateFormatter {
            let formatter = NSDateFormatter()
            formatter.dateStyle = .MediumStyle
            formatter.timeStyle = .MediumStyle
            return formatter
        }
        
        amountLabel.text = currencyFormatter.stringFromNumber(Double(amountLabel.text!)!)
        timeLabel.text = dateFormatter.stringFromDate(NSDate())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

