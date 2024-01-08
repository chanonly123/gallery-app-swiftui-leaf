//
//  File.swift
//  
//
//  Created by Admin on 08/01/24.
//

import Foundation
import GalleryData
import UIKit

public class GalleryImageViewModelImpl: GalleryImageViewModel {
    public let item: GalleryBean
    public var image: UIImage?
    
    public init(item: GalleryBean) {
        self.item = item
        image = createDummyImage(size: CGSize(width: 100, height: 100))
    }
    
    func createDummyImage(size: CGSize) -> UIImage {
        let color = [UIColor.red, .yellow, .green, .blue, .orange].randomElement()!
        let renderer = UIGraphicsImageRenderer(size: size)
        let image = renderer.image { context in
            color.setFill()
            context.fill(CGRect(origin: .zero, size: size))
        }
        return image
    }
}

extension GalleryImageViewModelImpl {
    public func hash(into hasher: inout Hasher) {}
    
    public static func == (lhs: GalleryImageViewModelImpl, rhs: GalleryImageViewModelImpl) -> Bool {
        lhs === rhs
    }
}
