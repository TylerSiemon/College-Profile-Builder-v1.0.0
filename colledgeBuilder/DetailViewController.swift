//
//  DetailViewController.swift
//  colledgeBuilder
//
//  Created by Student on 1/25/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    var college : College!;
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        collegeTextField.text = college.name;
        stateTextField.text = college.state;
        populationTextField.text = String(college.population);
        imageView.image = college.image;
    }

    @IBAction func onTappedSaveButton(sender: AnyObject)
    {
        college.name = collegeTextField.text!;
        college.state = stateTextField.text!;
        college.population = Int(populationTextField.text!)!;
        
        collegeTextField.resignFirstResponder();
        stateTextField .resignFirstResponder();
        populationTextField.resignFirstResponder();
    }
}
