//
//  PlaylistViewController.swift
//  mods
//
//  Created by Saranya Bhattacharya on 10/8/15.
//  Copyright (c) 2015 Saranya Bhattacharya. All rights reserved.
//

import Foundation
import UIKit

class PlaylistViewController :UIViewController,UITableViewDataSource,UITableViewDelegate
{
    var eventList:NSArray = ["Outlandos Di Amore","Outbound","Outfield","Outside In","Outinng"]
    var eventImageIcon:NSArray = ["pic10.png","pic11.png","pic12.png","pic13.png","pic14.png","pic15.png"]
    var eventplusIcon:NSArray = ["pic9.png","pic9.png","pic9.png","pic9.png","pic9.png","pic9.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: TableView DataSource methods
     func numberOfSectionsInTableView(tableView : UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as CustomCell
        
        
        (cell as CustomCell).eventNameLabel.text = eventList[indexPath.row]as? String
        (cell as CustomCell).eventImageIcon.image = UIImage(named:eventImageIcon[indexPath.row] as String)  //eventImageIcon[indexPath.row]as? UIImage
        (cell as CustomCell).plusIcon.image = UIImage(named:eventplusIcon[indexPath.row] as String)
        
        
        //self.getSpeakerImageForURL((speakerList[indexPath.row].objectForKey("profile_pic_url")) as String, indexPath: indexPath, cell: cell as CustomCell)
        
        return cell

    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5
    }
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
}


 