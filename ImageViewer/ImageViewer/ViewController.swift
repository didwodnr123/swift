//
//  ViewController.swift
//  ImageViewer
//
//  Created by 양재욱 on 2020/04/08.
//  Copyright © 2020 양재욱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numImage: Int = 1
    var maxImage: Int = 3
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "1.png")
    }

    @IBAction func btnPrevImage(_ sender: UIButton) {
        numImage -= 1

        if numImage < 1 {
            numImage = maxImage
        }
        
        let imgName = String(numImage) + ".png"

        imgView.image = UIImage(named: imgName)
    }
    
    @IBAction func btnNextImage(_ sender: UIButton) {
        numImage += 1

        if numImage > maxImage {
            numImage = 1
        }
        
        let imgName = String(numImage) + ".png"

        imgView.image = UIImage(named: imgName)
    }
}

