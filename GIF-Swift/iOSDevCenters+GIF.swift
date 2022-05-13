//
//  iOSDevCenters+GIF.swift
//  GIF-Swift
//
//  Created by iOSDevCenters on 11/12/15.
//  Copyright © 2016 iOSDevCenters. All rights reserved.
//

import UIKit

extension UIImage {
    // MARK: GifImage Callers
    static func gifImage(data: Data) -> UIImage? {
        guard let sourceData = CGImageSourceCreateWithData(data as CFData, nil) else { return nil }
        return UIImage.animatedImageWithSource(sourceData)
    }

    static func gifImage(url: String) -> UIImage? {
        guard let bundleURL: URL = URL(string: url) else { return nil }
        guard let imageData = try? Data(contentsOf: bundleURL) else { return nil }
        return gifImage(data: imageData)
    }

    static func gifImage(name: String) -> UIImage? {
        guard let bundleURL = Bundle.main.url(forResource: name, withExtension: "gif") else { return nil }
        guard let imageData = try? Data(contentsOf: bundleURL) else { return nil }
        return gifImage(data: imageData)
    }

    // MARK: GifImage Helper
    static func animatedImageWithSource(_ source: CGImageSource) -> UIImage? {
        let frameAnimationDelay: Int = 25
        let imagesCount = CGImageSourceGetCount(source)
        var frames = [UIImage]()
        for index in 0..<imagesCount {
            if let cgImage = CGImageSourceCreateImageAtIndex(source, index, nil) {
                let frame = UIImage(cgImage: cgImage)
                frames.append(frame)
            }
        }
        let animation = UIImage.animatedImage(
            with: frames,
            duration: TimeInterval(imagesCount * frameAnimationDelay / 1000)
        )
        return animation
    }
}
