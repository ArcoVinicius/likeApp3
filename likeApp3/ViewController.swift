//
//  ViewController.swift
//  likeApp3
//
//  Created by Vinícius Arcoverde on 3/15/15.
//  Copyright (c) 2015 Vinícius Arcoverde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    var photoImageView = UIImageView(frame: CGRectMake(40, 120, 180, 180))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.backgroundColor = UIColor.grayColor()
        self.view.addSubview(photoImageView)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openPhotoLibrary(sender: AnyObject) {
        
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

    @IBOutlet weak var textField: UITextField?
    
    class TableViewController: UIViewController {
    var likes
    }
}

