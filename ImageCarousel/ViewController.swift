//
//  ViewController.swift
//  ImageCarousel
//
//  Created by Ryan on 2019/06/09.
//  Copyright © 2019 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentImg: Int = 0
    var imageName = ["01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]

    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: imageName[currentImg])
        //Setting Default image
    }

    @IBAction func btnPrevious(_ sender: UIButton) {
        if currentImg != 0 {
            currentImg -= 1
        }
        imgView.image = UIImage(named: imageName[currentImg])
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if currentImg != imageName.count - 1 {
            currentImg += 1
        }
        imgView.image = UIImage(named: imageName[currentImg])
    }
}

