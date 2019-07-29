//
//  ViewController.swift
//  Practicecamera
//
//  Created by Apple on 7/29/19.
//  Copyright © 2019 WarriorCats. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate ,UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController ()

    @IBOutlet weak var newImage: UIImageView!
    
    @IBAction func takeSelfieTap(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    @IBAction func chooseFromLibraryTap(_ sender: Any) {
        imagePicker.sourceType = .savedPhotosAlbum
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage =
        info[UIImagePickerController.InfoKey
        .originalImage] as? UIImage {
            newImage.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }

}

