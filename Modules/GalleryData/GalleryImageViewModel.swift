//
//  File.swift
//  
//
//  Created by Admin on 08/01/24.
//

import Foundation
import UIKit

@MainActor
public protocol GalleryImageViewModel: ObservableObject, Hashable {
    var item: GalleryBean { get }
    var image: UIImage? { get }
}
