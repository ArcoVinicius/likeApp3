//
//  tableViewLikeDislikeViewController.swift
//  likeApp3
//
//  Created by Vinícius Arcoverde on 3/15/15.
//  Copyright (c) 2015 Vinícius Arcoverde. All rights reserved.
//

import UIKit

class tableViewLikeDislikeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var items = ["Flamengo", "Literatura Russa","Comida Jponesa", "Esportes", "Jogos de Tabuleiro" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
