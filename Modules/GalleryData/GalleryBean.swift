//
//  File.swift
//
//
//  Created by Admin on 08/01/24.
//

import Foundation

public struct GalleryBean: Codable, Hashable {
    public let url: String
    
    init(url: String) {
        self.url = url
    }
}

public extension GalleryBean {
    static let dummyList: [GalleryBean] = [
        .init(url: "https://picsum.photos/id/17/200/133"),
        .init(url: "https://picsum.photos/id/15/200/133"),
        .init(url: "https://picsum.photos/id/11/200/133"),
        .init(url: "https://picsum.photos/id/14/200/133"),
        .init(url: "https://picsum.photos/id/12/200/133"),
        .init(url: "https://picsum.photos/id/13/200/133"),
        .init(url: "https://picsum.photos/id/9/200/130"),
        .init(url: "https://picsum.photos/id/6/200/133"),
        .init(url: "https://picsum.photos/id/1/200/133"),
        .init(url: "https://picsum.photos/id/16/200/133"),
        .init(url: "https://picsum.photos/id/5/200/133"),
        .init(url: "https://picsum.photos/id/2/200/133"),
        .init(url: "https://picsum.photos/id/3/200/133"),
        .init(url: "https://picsum.photos/id/8/200/133"),
        .init(url: "https://picsum.photos/id/0/200/133"),
        .init(url: "https://picsum.photos/id/4/200/133"),
        .init(url: "https://picsum.photos/id/7/200/134"),
        .init(url: "https://picsum.photos/id/10/200/133")
    ]
}
