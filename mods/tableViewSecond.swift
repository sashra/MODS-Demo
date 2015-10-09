//
//  tableViewSecond.swift
//  mods
//
//  Created by Saranya Bhattacharya on 10/6/15.
//  Copyright (c) 2015 Saranya Bhattacharya. All rights reserved.
//

import Foundation
import CoreData
import UIKit
import Social


class tableViewSecond: UITableViewController,UITableViewDataSource ,UITableViewDelegate{
   
    
    @IBOutlet var tbleView: UITableView!
    
    var eventList:NSArray = ["Outlandos Di Amore","two","three","four","five"]
    var eventImageIcon:NSArray = ["pic10.png","pic11.png","pic12.png","pic13.png","pic14.png","pic15.png"]
    var eventplusIcon:NSArray = ["pic9.png","pic9.png","pic9.png","pic9.png","pic9.png","pic9.png"]
    var imageDownloaded = [Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
//        tbleView.delegate = self
//        tbleView.dataSource = self
    }
    
    //MARK: TableView DataSource methods
    override func numberOfSectionsInTableView(tableView : UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView : UITableView ,numberOfRowsInSection section:Int) -> Int {
        return eventList.count
    }
    
    override func tableView(tableView : UITableView ,cellForRowAtIndexPath indexPath:NSIndexPath)-> UITableViewCell
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as CustomCell
        
        
        (cell as CustomCell).eventNameLabel.text = eventList[indexPath.row]as? String
        (cell as CustomCell).eventImageIcon.image = UIImage(named:eventImageIcon[indexPath.row] as String)  //eventImageIcon[indexPath.row]as? UIImage
        (cell as CustomCell).plusIcon.image = UIImage(named:eventplusIcon[indexPath.row] as String)
        
 
        //self.getSpeakerImageForURL((speakerList[indexPath.row].objectForKey("profile_pic_url")) as String, indexPath: indexPath, cell: cell as CustomCell)
        
        return cell
    }
    
   
  
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
  
    
}





