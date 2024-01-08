//
//  File.swift
//  
//
//  Created by Admin on 08/01/24.
//

import Foundation
import GalleryData

public class GalleryViewModelImpl: GalleryViewModel {
    public var items: [GalleryImageViewModelImpl]
    
    public init() {
        self.items = GalleryBean.dummyList.map { GalleryImageViewModelImpl(item: $0) }
    }
    
}
