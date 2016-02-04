//
//  DetailViewController.swift
//  colledgeBuilder
//
//  Created by Student on 1/25/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit
import SafariServices

class DetailViewController: UIViewController, SFSafariViewControllerDelegate
{
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var populationTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var webPageTextField: UITextField!
    
    var college : College!;
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
        collegeTextField.text = college.name;
        stateTextField.text = college.state;
        populationTextField.text = String(college.population);
        imageView.image = college.image;
        webPageTextField.text = college.webPage;
    }

    @IBAction func onTappedSaveButton(sender: AnyObject)
    {
        college.name = collegeTextField.text!;
        college.state = stateTextField.text!;
        college.population = Int(populationTextField.text!)!;
        college.webPage = webPageTextField.text!;
        
        collegeTextField.resignFirstResponder();
        stateTextField .resignFirstResponder();
        populationTextField.resignFirstResponder();
    }
    
    @IBAction func goToWebsiteButton(sender: AnyObject)
    {
        let url = NSURL(string: college.webPage);
        let svc = SFSafariViewController(URL: url!);
        svc.delegate = self;
        self.presentViewController(svc, animated: true, completion: nil);
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController)
    {
        controller.dismissViewControllerAnimated(true, completion: nil);
    }
}
