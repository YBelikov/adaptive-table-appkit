//
//  AdaptiveTableViewModel.swift
//  AdaptiveTable
//
//  Created by Yuriy Belikov on 12.01.2024.
//

import Foundation
import AppKit

class AdaptiveTableController : NSViewController {
    private var data: [DataModel] = [DataModel(imageName: "Lock", rowTitle: "Title1", rowDescription: "Lorem ipsum dolor sit amet")]
    
    override func viewDidLoad() {
        print("Controller did load")
        super.viewDidLoad()
        self.view.frame = NSRect(x: 0.0, y: 0.0, width: 300.0, height: 600.0)
        let tableRow = NSStackView()
        tableRow.orientation = .horizontal
        tableRow.distribution = .equalSpacing
        tableRow.translatesAutoresizingMaskIntoConstraints = false
        guard let image = NSImage(named: "appleid_button") else {
            print("Unable to initialize image")
            return
        }
        image.resizingMode = .stretch
        image.size = NSSize(width: 30.0, height: 30.0)
        let imageView = NSImageView(image: image)
        tableRow.addArrangedSubview(imageView)
        let descriptiveStack = NSStackView()
        descriptiveStack.orientation = .vertical
        descriptiveStack.alignment = .leading
        descriptiveStack.distribution = .equalSpacing
        let title = NSTextField(labelWithString: "Title")
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = .systemFont(ofSize: 14.0)
        let description = NSTextField(wrappingLabelWithString: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        description.translatesAutoresizingMaskIntoConstraints = false
        description.font = .systemFont(ofSize: 10.0)
        descriptiveStack.addArrangedSubview(title)
        descriptiveStack.addArrangedSubview(description)
        descriptiveStack.translatesAutoresizingMaskIntoConstraints = false
        tableRow.addArrangedSubview(descriptiveStack)
        NSLayoutConstraint.activate([descriptiveStack.leadingAnchor.constraint(greaterThanOrEqualTo: imageView.trailingAnchor, constant: 10.0), descriptiveStack.trailingAnchor.constraint(equalTo: tableRow.trailingAnchor)])
        self.view.addSubview(tableRow)
        NSLayoutConstraint.activate([tableRow.centerXAnchor.constraint(equalTo: self.view.centerXAnchor), tableRow.centerYAnchor.constraint(equalTo: self.view.centerYAnchor), tableRow.leadingAnchor.constraint(greaterThanOrEqualTo: self.view.leadingAnchor, constant: 20.0), tableRow.trailingAnchor.constraint(lessThanOrEqualTo: self.view.trailingAnchor, constant: -20.0)])
    }
}

extension AdaptiveTableController : NSTableViewDataSource {
    
}

extension AdaptiveTableController : NSTableViewDelegate {
    
}
