//
//  StandardImage.swift
//  seahunt
//
//  Created by Fowler, Elena on 7/10/17.
//  Copyright © 2017 Chen, Alan (DS). All rights reserved.
//

import UIKit
import MobileCoreServices

class StandardImage: Image{
    
    func dismiss(_ picker: UIImagePickerController, _ viewController: ViewController) {
        viewController.dismiss(animated: true, completion: nil)
    }
    
    /*func imagePickerController(viewController: ViewController, picture: UIImageView, newMedia: Bool?, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let mediaType = info[UIImagePickerControllerMediaType] as! NSString
        viewController.dismiss(animated: true, completion: nil)
        if mediaType.isEqual(to: kUTTypeImage as String)
        {
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            
            func setNewImage(imageView: UIImageView!)
            {
                if imageView != nil
                {
                    imageView.contentMode = UIViewContentMode.scaleAspectFit
                    imageView.image = image
                }
            }
            
            setNewImage(imageView: picture)
            
            
            if newMedia == true
            {
                UIImageWriteToSavedPhotosAlbum(image, viewController, #selector(ViewController.image(image:didFinishSavingWithError:contextInfo:)), nil)
            }
        }
    } */
}
