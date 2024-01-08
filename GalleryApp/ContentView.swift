//
//  ContentView.swift
//  GalleryApp
//
//  Created by Admin on 08/01/24.
//

import SwiftUI
import GalleryData
import GalleryCore
import GalleryUI

struct ContentView: View {
    var body: some View {
        GalleryView(model: GalleryViewModelImpl())
    }
}

#Preview {
    ContentView()
}
