//
//  SimailViewController.swift
//  Simail
//
//  Created by Russ on 01/08/15.
//  Copyright (c) 2015 Russ. All rights reserved.
//

import Cocoa

class SimailViewController: NSViewController {

    @IBOutlet var textLabel: NSTextField!
    
    let messages = Message.all
    
    var currentMessageIndex: Int = 0 {
        didSet {
            updateMessage()
        }
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        
        currentMessageIndex = 0
    }
    
    func updateMessage() {
        textLabel.stringValue = toString(messages[currentMessageIndex])
    }
}

// MARK: Actions

extension SimailViewController {
    
    @IBAction func goLeft(sender: NSButton) {
        currentMessageIndex = (currentMessageIndex - 1 + messages.count) % messages.count
    }
    
    @IBAction func goRight(sender: NSButton) {
        currentMessageIndex = (currentMessageIndex + 1) % messages.count
    }
    
    @IBAction func quit(sender: NSButton) {
        NSApplication.sharedApplication().terminate(sender)
    }
}
