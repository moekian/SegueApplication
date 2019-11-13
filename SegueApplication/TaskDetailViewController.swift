//
//  TaskDetailViewController.swift
//  SegueApplication
//
//  Created by Mohammad Kiani on 2019-11-03.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    weak var taskTableView: TaskTableViewController?
    var taskString: String?
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.textView.text = (taskString ?? "")
//        self.textView.becomeFirstResponder()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        taskTableView?.updateText(text: textView.text)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
