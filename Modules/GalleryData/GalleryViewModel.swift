//
//  File.swift
//  
//
//  Created by Admin on 08/01/24.
//

import Foundation

@MainActor
public protocol GalleryViewModel: ObservableObject {
    associatedtype SubModel: GalleryImageViewModel
    var items: [SubModel] { get set }
}
