//
//  URLImage.swift
//  movies
//
//  Created by Inés Rojas on 27/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation
import SwiftUI

struct URLImage: View {
    
    @ObservedObject private var imageLoader = ImageLoaderView()
    
    var placeholder: Image
    
    init(url: String, placeholder: Image = Image(systemName: "photo")) {
        self.placeholder = placeholder
        self.imageLoader.load(url: url)
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage).resizable()
        } else {
            return placeholder
        }
    }
    
}
