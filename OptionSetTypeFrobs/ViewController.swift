//
//  ViewController.swift
//  OptionSetTypeFrobs
//
//  Created by Gene De Lisa on 6/16/15.
//  Copyright © 2015 Gene De Lisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        subView.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(subView)
        //subView.autoresizingMask = UIViewAutoresizing.FlexibleWidth | UIViewAutoresizing.FlexibleHeight
        
        subView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        
        var hoagie = Hoagie()
        hoagie.regular()
        print(hoagie)
        print(hoagie.hasIngredients())
        hoagie.plain()
        print(hoagie)
        print(hoagie.hasIngredients())
        
        print("old hoagie now")
        var hoagie1 = Hoagie1()
        hoagie1.regular()
        print(hoagie1)
        print(hoagie1.hasIngredients())
        hoagie1.plain()
        print(hoagie1)
        print(hoagie1.hasIngredients())

        if !hoagie1.hasOnions() {
            print("does not have onions")
        }
        hoagie1.addOnions()
        if hoagie1.hasOnions() {
            print("has onions")
        }

        
        let settings = UIUserNotificationSettings(forTypes: [.Alert, .Badge], categories: nil)
        if settings.types.contains(.Badge) {
            print("badge set")
        }


    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tomorrow(hour hour:Int, minute:Int) -> NSDate? {
        //    func dateByAddingComponents(comps: NSDateComponents, toDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
        
        
        if let gregorian = NSCalendar(calendarIdentifier:NSCalendarIdentifierGregorian) {
            
            let comps = gregorian.components([.Year, .Month, .Day, .Hour, .Minute, .Second], fromDate: NSDate())
            
            comps.day = comps.day + 1
            comps.hour = hour
            comps.minute = minute
            comps.second = 0
            comps.timeZone = NSTimeZone.defaultTimeZone()
            return gregorian.dateFromComponents(comps)
        }
        return nil
    }
    
    func yearFromNow() -> NSDate? {
        if let gregorian = NSCalendar(calendarIdentifier:NSCalendarIdentifierGregorian) {
            
            let calendarUnits = NSCalendarUnit( [.Month] )
            let calendarOptions = NSCalendarOptions ([.WrapComponents])
            
            return gregorian.dateByAddingUnit(
                calendarUnits,
                value: 12,
                toDate: NSDate(),
                options: calendarOptions)
        }
        
        return nil
    }
    
    func dayFromNow() -> NSDate? {
        if let gregorian = NSCalendar(calendarIdentifier:NSCalendarIdentifierGregorian) {
            
            let calendarUnits = NSCalendarUnit( [.Day] )
            let calendarOptions = NSCalendarOptions ([])
            //            let calendarOptions = NSCalendarOptions ([.WrapComponents])
            
            return gregorian.dateByAddingUnit(
                calendarUnits,
                value: 1,
                toDate: NSDate(),
                options: calendarOptions)
        }
        
        return nil
    }
    
    
    func firstDayOfMonth() -> NSDate? {
        if let gregorian = NSCalendar(calendarIdentifier:NSCalendarIdentifierGregorian) {
            let calendarUnits = NSCalendarUnit( [.Year, .Month] )
            let components = gregorian.components(calendarUnits, fromDate: NSDate())
            components.day = 1
            return gregorian.dateFromComponents(components)
        }
        return nil
    }


}

