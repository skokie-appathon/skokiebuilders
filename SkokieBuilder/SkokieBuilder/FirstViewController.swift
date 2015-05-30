//
//  FirstViewController.swift
//  SkokieBuilder
//
//  Created by Josh Byster on 5/30/15.
//  Copyright (c) 2015 Josh Byster. All rights reserved.
//
import Parse
import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var obj = PFObject(className: "TestObject")
    var restaurants = ["Annie's Pancake House","YOLO Mexican","Pita Inn","Libertad","Tub Tim Thai","Kabul House"]
    var ratings = ["3.5","4.5","4","4.5","4","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
        
    }
    
        // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
        // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
        
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCellWithIdentifier("event") as! Cell
            cell.name.text = restaurants[indexPath.row]
            cell.rating.text = ratings[indexPath.row]
            return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

