//
//  RootViewController.swift
//  MadLibs
//
//  Created by Harold Kurth on 7/30/15.
//  Copyright © 2015 Harold Kurth. All rights reserved.
//

import Cocoa

class RootViewController: NSViewController {

    @IBOutlet weak var pastTenseVerbTextField: NSTextField!
    
    @IBOutlet weak var singularNounCombo: NSComboBox!
    var singularNouns: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func awakeFromNib() {
        print("View Controller instance with view: \(self.view)")
        pastTenseVerbTextField.stringValue = "ate"
        singularNouns = ["dog", "muppet", "ninja", "fat dude"]
        singularNounCombo.removeAllItems()
        singularNounCombo.addItemsWithObjectValues(singularNouns)
        singularNounCombo.selectItemAtIndex(2)
    }
    
}
