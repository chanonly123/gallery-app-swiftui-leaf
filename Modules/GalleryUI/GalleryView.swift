//
//  SwiftUIView.swift
//
//
//  Created by Admin on 08/01/24.
//

import SwiftUI
import GalleryData

public struct GalleryView<Model: GalleryViewModel>: View {
    @StateObject var model: Model
    
    public init(model: Model) {
        self._model = StateObject(wrappedValue: model)
    }
    
    public var body: some View {
        List {
            ForEach(model.items, id: \.self) { item in
                GalleryImageView(model: item)
            }
        }
        .listStyle(.plain)
    }
}

public class GalleryViewModelPreview: GalleryViewModel {
    public var items: [GalleryImageViewModelPreview]
    
    public init() {
        self.items = GalleryBean.dummyList.map { GalleryImageViewModelPreview(item: $0) }
    }
    
}

#Preview {
    GalleryView(model: GalleryViewModelPreview())
}
