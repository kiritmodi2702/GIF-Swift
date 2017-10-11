
#Swift tutorial blog :  https://iosdevcenters.blogspot.com/

# GIF-Swift

This tutorial have one Class name as iOSDevCenters+GIF.swift downlaod this file and adding the file in your project. after you can use as below code.

#Load GIF image Using Name

        let jeremyGif = UIImage.gifImageWithName("funny")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 20.0, y: 50.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView)

#Load GIF image Using Data

        let imageData = try? Data(contentsOf: Bundle.main.url(forResource: "play", withExtension: "gif")!)
        let advTimeGif = UIImage.gifImageWithData(imageData!)
        let imageView2 = UIImageView(image: advTimeGif)
        imageView2.frame = CGRect(x: 20.0, y: 220.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView2)

#Load GIF image URL

        let gifURL : String = "http://www.gifbin.com/bin/4802swswsw04.gif"
        let imageURL = UIImage.gifImageWithURL(gifURL)
        let imageView3 = UIImageView(image: imageURL)
        imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 150.0)
        view.addSubview(imageView3)

#OutPut 

![Swift GIF Image](http://i.imgur.com/y6jHCsX.gif)

for more referance tutorial of Swift : https://iosdevcenters.blogspot.com/

