//
//  ViewController.swift
//  Image Filtering App
//
//  Created by Timothy Barrett on 4/6/17.
//  Copyright © 2017 Timothy Barrett. All rights reserved.
//

import UIKit
import Sharaku

class ViewController: UIViewController, SHViewControllerDelegate {

    @IBOutlet weak var editedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openFilterButtonTapped(_ sender: UIButton) {
        
        let imageToBeFiltered = #imageLiteral(resourceName: "iceland")
        
        let vc = SHViewController(image: imageToBeFiltered)
        vc.delegate = self
        self.present(vc, animated: true)
        
    }
    
    func shViewControllerImageDidFilter(image: UIImage) {
        
        editedImageView.image = image
        
    }
    
    func shViewControllerDidCancel() {
        
        editedImageView.image = #imageLiteral(resourceName: "iceland")
        dismiss(animated: true)
    }
}

