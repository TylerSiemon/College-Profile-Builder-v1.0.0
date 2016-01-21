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
    
    var colleges = ["UOI", "NIU", "CLC"];
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return colleges.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath);
        cell.textLabel?.text = colleges[indexPath.row];
        return cell;
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete {
            colleges.removeAtIndex(indexPath.row);
            tableView.reloadData();
        }
    }
    
}

