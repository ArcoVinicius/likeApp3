//
//  LikeDelegate.swift
//  likeApp3
//
//  Created by Joao Nassar Galante Guedes on 17/03/15.
//  Copyright (c) 2015 Vinícius Arcoverde. All rights reserved.
//

import UIKit

class LikeDelegate: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    var interests:[String] = []
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
       
        
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
       
        return 1
    }
   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return interests.count
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete)
        {
            interests.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Top)
        }
        
    }
    
    func addItem(item: String) {
        
        interests.append(item)
        
    }

}
