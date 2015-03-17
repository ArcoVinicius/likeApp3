//
//  ViewController.swift
//  likeApp3
//
//  Created by Vinícius Arcoverde on 3/15/15.
//  Copyright (c) 2015 Vinícius Arcoverde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UITextFieldDelegate, UIGestureRecognizerDelegate, UINavigationControllerDelegate {
    
    var addingLike = false
    var addingDislike = false
    
    var likes = LikeDelegate()
    var dislikes = LikeDelegate()
    
    var photoImageView = UIImageView()
    
    var likeTableView = UITableView()
    var dislikeTableView = UITableView()
    
    var likeAdd = UIButton()
    var dislikeAdd = UIButton()
    
    var nameLabel = UITextField()
    var likesText = UITextField()
    
    var likesView = UIView()
    
    var sizeRect = UIScreen.mainScreen().applicationFrame
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        photoImageView.frame = CGRectMake((sizeRect.size.width - 100)/2, 50, 100, 100)
        photoImageView.backgroundColor = UIColor.grayColor()
        photoImageView.userInteractionEnabled = true
        
        let selecPhoto = UITapGestureRecognizer(target: self, action:Selector("selectPhoto"))
        selecPhoto.delegate = self
        photoImageView.addGestureRecognizer(selecPhoto)
        
        nameLabel.frame = CGRectMake((sizeRect.size.width - 300)/2, 170, 300, 50)
        nameLabel.textAlignment = .Center
        nameLabel.text = "Clique para mudar seu nome"
        
        nameLabel.delegate = self
        
        likesView.frame = CGRectMake(0, 0, sizeRect.size.width, sizeRect.size.height/2)
        likesView.backgroundColor = UIColor.whiteColor()
        likesView.hidden = true
        
        var y: CGFloat = 170 + 50 + 30
        var tablesHeight: CGFloat = sizeRect.size.height - y - 100
        
        dislikeTableView.frame = CGRectMake(0, y, sizeRect.size.width/2, tablesHeight)
        likeTableView.frame = CGRectMake(sizeRect.size.width/2, y, sizeRect.size.width/2, tablesHeight)
        
        likeTableView.delegate = likes
        likeTableView.dataSource = likes
        
        dislikeTableView.delegate = dislikes
        dislikeTableView.dataSource = dislikes
        
        dislikeAdd.frame = CGRectMake(((sizeRect.size.width/2)-100)/2, y + tablesHeight + 30, 100, 40)
        likeAdd.frame = CGRectMake( (((sizeRect.size.width/2)-100)/2) + sizeRect.size.width/2 , y + tablesHeight + 30, 100, 40)
        likeAdd.addTarget(self, action: "addLike", forControlEvents: .TouchUpInside)
        dislikeAdd.targetForAction(Selector("addDislike"), withSender: nil)
        
        dislikeAdd.setTitle("Add", forState: .Normal)
        likeAdd.setTitle("Add", forState: .Normal)
        
        dislikeAdd.setTitleColor(UIColor.blueColor(), forState: .Normal)
        likeAdd.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        likesText.frame = CGRectMake((sizeRect.size.width - 200)/2, 50, 200, 40)
        likesText.borderStyle = UITextBorderStyle.Line
        
        likesText.delegate = self
        
        likesView.addSubview(likesText)
        
        self.view.addSubview(nameLabel)
        self.view.addSubview(photoImageView)
        self.view.addSubview(likeTableView)
        self.view.addSubview(dislikeTableView)
        self.view.addSubview(likeAdd)
        self.view.addSubview(dislikeAdd)
        self.view.addSubview(likesView)
        
    }
    
    func addLike() {
        addingLike = true
        addingDislike = false
        likesView.hidden = false
        
    }
    
    func addDislike() {
        addingLike = true
        addingDislike = false
        likesView.hidden = false
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if(addingLike == true) {
            likes.addItem(likesText.text)
            likeTableView.reloadData()
        }
        
        if(addingDislike == true) {
            dislikes.addItem(likesText.text)
            dislikeTableView.reloadData()
        }
        
        addingDislike = false
        addingLike = false
        
        likesView.hidden = true
        likesText.text = ""
        
        textField.resignFirstResponder()
        return true;
    }
    
    func selectPhoto() {
        
        var photoPicker = UIImagePickerController()
        photoPicker.delegate = self
        photoPicker.sourceType = .PhotoLibrary
        self.presentViewController(photoPicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject:AnyObject])
    {
        photoImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismissViewControllerAnimated(false, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

