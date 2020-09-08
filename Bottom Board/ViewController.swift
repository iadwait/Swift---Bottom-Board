//
//  ViewController.swift
//  Bottom Board
//
//  Created by Adwait Barkale on 08/09/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import BLTNBoard

class ViewController: UIViewController {
    
    @IBOutlet var btnBottomBoard: UIButton!

    let myBoardManager: BLTNItemManager = {
       let item = BLTNPageItem(title: "Push Notifications")
        item.image = UIImage(named: "bell")
        item.actionButtonTitle = "Continue"
        item.alternativeButtonTitle = "Maybe Later"
        item.descriptionText = "Would you like to get Notifications?"
        item.actionHandler = { _ in
            ViewController.btnContinueTapped()
        }
        
        item.alternativeHandler = { _ in
            ViewController.btnMayBeLaterTapped()
        }
        return BLTNItemManager(rootItem: item)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnBottomBoardTapped(_ Sender: UIButton)
    {
        myBoardManager.showBulletin(above: self)
    }

    static func btnContinueTapped()
    {
        print("Allow Notifications")
    }
    
    static func btnMayBeLaterTapped()
    {
        print("Remind Tomorrow")
    }
}

