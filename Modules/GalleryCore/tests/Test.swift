//
//  Test.swift
//  
//
//  Created by Admin on 08/01/24.
//

import XCTest
import GalleryData
import GalleryCore

final class Test: XCTestCase {

    @MainActor
    func testExample1() throws {
        let galleryViewModel = GalleryViewModelImpl()
        XCTAssert(galleryViewModel.items.isEmpty == false)
    }
    
    @MainActor
    func testExample2() throws {
        let imageModel = GalleryImageViewModelImpl(item: GalleryBean.dummyList[0])
        XCTAssert(imageModel.image != nil)
    }

}
