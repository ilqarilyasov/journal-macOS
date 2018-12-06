//
//  EntriesTableViewController.swift
//  Journal
//
//  Created by Ilgar Ilyasov on 12/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Cocoa

class EntriesTableViewController: NSViewController, EntriesPresenter {
    
    // MARK: - Properties
    
    @objc dynamic var entriesController: NSArrayController?
    
    // MARK: - Actions
    
    @IBAction func add(_ sender: Any) {
        _ = Entry(title: "New Entry", bodyText: "")
    }
    
    @IBAction func remove(_ sender: Any) {
        entriesController?.remove(sender)
    }
}
