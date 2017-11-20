//
//  ViewController.swift
//  SeaFood
//
//  Created by 晨光 on 2017/11/19.
//  Copyright © 2017年 tplink. All rights reserved.
//

import UIKit
import CoreML
import Vision

//TODO 1: add the protocol and delegate
class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ImageView: UIImageView!
    //TODO 3: creat an object of UIImagePickerController
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    //TODO 4: set the property of the object
        
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
        
        
    }
    
    //TODO 5:
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let userPickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
        
        ImageView.image = userPickedImage
        
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    
    //TODO 2: link the camera button and the image view outlet
    @IBAction func CameraButtonPressed(_ sender: UIBarButtonItem) {
     
        present(imagePicker, animated: true, completion: nil)
        
        
        
    }
    
}

