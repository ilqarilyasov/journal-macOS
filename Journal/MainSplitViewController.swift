//
//  MainSplitViewController.swift
//  Journal
//
//  Created by Ilgar Ilyasov on 12/6/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Cocoa

@objc protocol EntriesPresenter {
    @objc var entriesController: NSArrayController? { get set }
}

class MainSplitViewController: NSSplitViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for splitViewItem in splitViewItems {
            if let vc = splitViewItem.viewController as? EntriesPresenter {
                vc.entriesController = entriesController
            }
        }
    }

    //MARK: - Properties
    
    @objc dynamic var managedObjectContext: NSManagedObjectContext {
        return CoreDataStack.shared.mainContext
    }
    
    @IBOutlet weak var entriesController: NSArrayController!
    
}
