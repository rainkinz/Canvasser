//
//  AddressTVC.swift
//  Canvasser
//
//  Created by brendan on 3/4/15.
//  Copyright (c) 2015 SwiftMeetup. All rights reserved.
//

import UIKit

class AddressTVC: UITableViewController
{
    var addressList = [String]()
    
    
    override func viewDidLoad() {
        addressList.append("Brendan's House")
        addressList.append("Cameron's House")
        addressList.append("Alex's House")
        addressList.append("Bob's House")
        addressList.append("Jane's House")
        addressList.append("John's House")
        
        self.splitViewController?.preferredDisplayMode = UISplitViewControllerDisplayMode.AllVisible
    }
        
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addressList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "addressCell")
        cell.textLabel?.text = addressList[indexPath.row]
        println(cell.textLabel?.text)
        return cell
    }
    
}


