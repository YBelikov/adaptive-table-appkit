//
//  ViewController.swift
//  AdaptiveTableAppKit
//
//  Created by Yuriy Belikov on 13.01.2024.
//

import Cocoa

class ViewController: NSViewController {
	let popup = NSPopover()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popup.behavior = .transient
        popup.animates = true

    	print("In NSViewController")
    }
    
    @IBAction func openTableClicked(_ sender: NSButton) {
        popup.contentViewController = AdaptiveTableController()
        popup.show(relativeTo: sender.bounds, of: sender, preferredEdge: .maxX)
        print("Button clicked")

    }
}
