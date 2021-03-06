//
//  AppDelegate.swift
//  Simpler
//
//  Created by Morten Just Petersen on 11/21/15.
//  Copyright © 2015 Morten Just Petersen. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var languageMenu: NSMenuItem!
    

    @IBAction func languageClicked(sender: NSMenuItem) {
        print("you clicked language")
    }


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        
        let ud = NSUserDefaults.standardUserDefaults()
        ud.registerDefaults(C.defaultPrefValues)
        
        if ud.stringForKey("language") == "" { ud.setValue("English", forKey: "language") }
    }
    
    

    


    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

