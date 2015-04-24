//
//  AddTaskViewController.swift
//  TaskManager2
//
//  Created by Evan Wineland on 4/24/15.
//  Copyright (c) 2015 Evan Wineland. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text, notes: notesField.text)
            TaskStore.sharedInstance.add(task)
            println(TaskStore.sharedInstance.get(0))
        }
    }
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
