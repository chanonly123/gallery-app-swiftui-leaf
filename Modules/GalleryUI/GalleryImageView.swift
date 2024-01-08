//
//  SwiftUIView.swift
//  
//
//  Created by Admin on 08/01/24.
//

import SwiftUI
import GalleryData

struct GalleryImageView<Model: GalleryImageViewModel>: View {
    @StateObject var model: Model
    
    var body: some View {
        if let image = model.image {
            Image(uiImage: image)
        } else {
            ProgressView()
                .colorInvert()
        }
    }
}

public class GalleryImageViewModelPreview: GalleryImageViewModel {
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

extension GalleryImageViewModelPreview {
    public func hash(into hasher: inout Hasher) {}
    
    public static func == (lhs: GalleryImageViewModelPreview, rhs: GalleryImageViewModelPreview) -> Bool {
        lhs === rhs
    }
}

#Preview {
    GalleryImageView(model: GalleryImageViewModelPreview(item: GalleryBean.dummyList.first!))
}
