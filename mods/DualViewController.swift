//
//  DualViewController.swift
//  mods
//
//  Created by Saranya Bhattacharya on 10/8/15.
//  Copyright (c) 2015 Saranya Bhattacharya. All rights reserved.
//

import Foundation
import UIKit

class DualViewController :UIViewController,UITableViewDataSource,UITableViewDelegate
{
    var eventList:NSArray = [ "Recent  Creations","Acrobatic Acoustics","Air Guitar Battle","Blues For Charlie","Chill After Dark","Death By Noise","Friday Night Lights","Something Wild"]
    //var eventviewAllIcon:NSArray = ["pic9.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "MIX-A-TAPE"
        
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
        
        
        if indexPath.row==0
        {
            var cell = tableView.dequeueReusableCellWithIdentifier("CustomCellOne", forIndexPath: indexPath) as CustomCellOne
            (cell as CustomCellOne).RecentCreationsLabel.text = eventList[indexPath.row]as? String
                return cell
        }
        else
        {
            var cell = tableView.dequeueReusableCellWithIdentifier("CustomCellTwo", forIndexPath: indexPath) as CustomCellTwo
            (cell as CustomCellTwo).namesLabel.text = eventList[indexPath.row]as? String
            if indexPath.row%2==0{
                cell.contentView.backgroundColor = UIColor.blackColor()
            }
            else {
                cell.contentView.backgroundColor = UIColor.blackColor()            }
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5
    }
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    
}
