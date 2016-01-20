//
//  ViewController.swift
//  colledgeBuilder
//
//  Created by Student on 1/20/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet weak var tableView: UITableView!
    
    var colleges = ["UOI", "NIU", "CLC"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
}

