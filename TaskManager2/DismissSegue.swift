//
//  DismissSegue.swift
//  TaskManager2
//
//  Created by Evan Wineland on 4/24/15.
//  Copyright (c) 2015 Evan Wineland. All rights reserved.
//

import UIKit

@objc(DismissSegue) class DismissSegue: UIStoryboardSegue {
    override func perform() {
        if let controller = sourceViewController.presentingViewController {
            controller!.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
