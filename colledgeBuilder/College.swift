//
//  College.swift
//  colledgeBuilder
//
//  Created by Student on 1/21/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class College: NSObject
{
    var name = "";
    var state = "";
    var population = 0;
    var webPage = "";
    var image = UIImage(named: "Default");
    
    convenience init(name: String, state: String, population: Int, image: UIImage, webPage : String)
    {
        self.init();
        self.name = name;
        self.state = state;
        self.population = population;
        self.image = image;
        self.webPage = webPage;
    }
    
    convenience init(name: String)
    {
        self.init();
        self.name = name;
    }
}
