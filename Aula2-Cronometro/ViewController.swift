//
//  ViewController.swift
//  Aula2-Cronometro
//
//  Created by Willian Yudi Sirakawa on 11/03/16.
//  Copyright © 2016 Willian Yudi Sirakawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var counter = 0.0

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var TimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("UpdateTimeDate"), userInfo: nil, repeats: true)
        
    }
    
    func UpdateTimeDate() {
        
        let timeFormatter = NSDateFormatter()
        let dateFormatter = NSDateFormatter()
        
        timeFormatter.timeStyle = .MediumStyle
        dateFormatter.dateStyle = .MediumStyle
        
        TimeLabel.text = timeFormatter.stringFromDate(NSDate())
        DateLabel.text = dateFormatter.stringFromDate(NSDate())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Start(sender: AnyObject) {
        counter = 0.0
        Label.text = String(counter)
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("UpdateCounter"), userInfo: nil, repeats: true)
        
    }
    
    func UpdateCounter(){
        counter += 0.1
        Label.text = String(counter)
    }
    
    @IBAction func Stop(sender: AnyObject) {
        timer.invalidate()
        
    }
}

