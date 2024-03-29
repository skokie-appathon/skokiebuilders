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
    var obj:PFObject = PFObject(className: "TestObject")
    var restaurants = ["Annie's Pancake House","YOLO Mexican","Pita Inn","Libertad","Tub Tim Thai","Kabul House"]
    var ratings = ["3.5","4.5","4","4.5","4","5"]
    var images = ["http://pics3.city-data.com/businesses/p/5/4/4/8/5265448.JPG","http://media-cdn.tripadvisor.com/media/photo-s/02/8f/a7/2b/yolo-mexican-eatery.jpg","http://www.yogagardens.org/wp-content/uploads/2013/12/top_logo_1.png","http://www.snackandbakery.com/ext/resources/Default_Images/TortillaTrends_feature.jpg?1417190857","http://4.bp.blogspot.com/_UIXOn06Pz70/SSs924dP3UI/AAAAAAAAFls/6pmRVsoDC4w/s800/Pad+Thai+500.jpg","http://www.foodrepublic.com/sites/default/files/imagecache/enlarge/qabiliapalau1_0.JPG"]
    var latArray = [42.026078,42.02783,42.040651,42.024469,42.026192,42.02623]
    var longArray = [-87.749334,-87.75556,-87.725609,-87.755448,-87.751136,-87.74636]
    var lastTapped:Int!
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
            let url = NSURL(string: images[indexPath.row])
            let data = NSData(contentsOfURL: url!) //make sure your image in this url does exist, otherwise unwrap in a if let check
            cell.img.image = UIImage(data: data!)
            return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.lastTapped = indexPath.row
        
        performSegueWithIdentifier("pushMap", sender: nil)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var newVC:MapViewController = segue.destinationViewController as! MapViewController
        newVC.lat = latArray[lastTapped]
        newVC.long = longArray[lastTapped]
        newVC.name = restaurants[lastTapped]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

