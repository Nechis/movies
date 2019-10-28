//
//  ImageLoaderView.swift
//  movies
//
//  Created by Inés Rojas on 27/10/19.
//  Copyright © 2019 leinaro. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoaderView: ObservableObject {
    
    let didChange = PassthroughSubject<ImageLoaderView?, Never>()
    var downloadedImage: UIImage?
    
    func load(url: String) {
        guard let imageUrl = URL(string: url) else {
            fatalError("imageUrl not found")
        }
        
        URLSession.shared.dataTask(with: imageUrl) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.didChange.send(nil)
                }
                return
            }
            
            self.downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.didChange.send(self)
            }
        }.resume()
    }
}
