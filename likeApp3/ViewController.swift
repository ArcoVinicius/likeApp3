//
//  ViewController.swift
//  likeApp3
//
//  Created by Vinícius Arcoverde on 3/15/15.
//  Copyright (c) 2015 Vinícius Arcoverde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate {
    
    var photoImageView = UIImageView()
    var likeTableView = UITableView()
    var dislikeTableView = UITableView()
    var nameLabel = UILabel()
    var sizeRect = UIScreen.mainScreen().applicationFrame
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        photoImageView.frame = CGRectMake((sizeRect.size.width - 100)/2, 50, 100, 100)
        photoImageView.backgroundColor = UIColor.grayColor()
        
        nameLabel.frame = CGRectMake((sizeRect.size.width - 300)/2, 170, 300, 50)
        nameLabel.textAlignment = .Center
        nameLabel.text = "Clique para mudar seu nome"
        
        var y: CGFloat = 170 + 50 + 30
        var tablesHeight: CGFloat = sizeRect.size.height - y - 60
        
        dislikeTableView.frame = CGRectMake(0, y, sizeRect.size.width/2, tablesHeight)
        likeTableView.frame = CGRectMake(sizeRect.size.width/2, y, sizeRect.size.width/2, tablesHeight)
        
        self.view.addSubview(nameLabel)
        self.view.addSubview(photoImageView)
        self.view.addSubview(likeTableView)
        self.view.addSubview(dislikeTableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    @IBAction func openPhotoLibrary(sender: AnyObject) {
//        
//        var photoPicker = UIImagePickerController()
//        photoPicker.delegate = self
//        photoPicker.sourceType = .PhotoLibrary
//        self.presentViewController(photoPicker, animated: true, completion: nil)
//    }
//    
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject:AnyObject])
//    {
//        photoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
//        self.dismissViewControllerAnimated(false, completion: nil)
//    }
    
}

