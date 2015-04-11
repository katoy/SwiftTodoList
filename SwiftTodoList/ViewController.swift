//
//  ViewController.swift
//  SwiftTodoList
//
//  Created by katoy on 2015/04/11.
//  Copyright (c) 2015年 Youichi Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNewTask: UITextField!

    @IBAction func btnAdd(sender: AnyObject) {
        myData.append(textNewTask.text)
        NSUserDefaults.standardUserDefaults().setObject(myData, forKey: "ToDoKey")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    @IBAction func btnCancel(sender: AnyObject) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

