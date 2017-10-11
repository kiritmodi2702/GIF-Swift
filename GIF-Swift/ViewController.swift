//
//  ViewController.swift
//  GIF-Swift
//
//  Created by iOSDevCenters on 12/08/16.
//  Copyright © 2016 iOSDevCenters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /************************ Load GIF image Using Name ********************/
        
        let jeremyGif = UIImage.gifImageWithName("funny")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView)
        
        
        /************************ Load GIF image Using Data ********************/
        
        let imageData = try? Data(contentsOf: Bundle.main.url(forResource: "play", withExtension: "gif")!)
        let advTimeGif = UIImage.gifImageWithData(imageData!)
        let imageView2 = UIImageView(image: advTimeGif)
        imageView2.frame = CGRect(x: 20.0, y: 220.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView2)
        
        /************************ Load GIF image URL **************************/
        
        let gifURL : String = "http://www.gifbin.com/bin/4802swswsw04.gif"
        let imageURL = UIImage.gifImageWithURL(gifURL)
        let imageView3 = UIImageView(image: imageURL)
        imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

