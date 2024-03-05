//
//  FeedImageData.swift
//  InstaClone
//
//  Created by 김지훈 on 3/4/24.
//

import Foundation
import UIKit

//func imageUrl() {
//    let imageUrlString = "https://api.thecatapi.com/v1/images/search"
//
//    if let imageUrl = URL(string: imageUrlString) {
//        let urlSession = URLSession(configuration: .default)
//        let task = urlSession.dataTask(with: imageUrl) { data, response, error in
//            if let error = error {
//                print("Error fetching image:", error)
//                return
//            }
//            
//            if let data = data {
//                do {
//                    let images = try JSONDecoder().decode([FeedImageUrlData].self, from: data)
//                    if let imageUrl = URL(string: images.first?.url ?? "") {
//                        if let imageData = try? Data(contentsOf: imageUrl) {
//                            DispatchQueue.main.async {
////                                FeedImageCollectionViewCell().feedImage.image = UIImage(data: imageData)
////                                image = UIImage(data: imageData)
//                                UIImage(data: imageData)
//                            }
//                        }
//                    }
//                } catch {
//                    print("Error decoding JSON:", error)
//                }
//            }
//        }
//        task.resume()
//    }
//}

//func loadImageData(completion: @escaping (Data?) -> Void) {
//    let imageUrlString = "https://api.thecatapi.com/v1/images/search"
//    
//    if let imageUrl = URL(string: imageUrlString) {
//        let urlSession = URLSession(configuration: .default)
//        let task = urlSession.dataTask(with: imageUrl) { data, response, error in
//            if let error = error {
//                print("Error fetching image:", error)
//                completion(nil)
//                return
//            }
//            
//            if let data = data {
//                completion(data)
//            } else {
//                completion(nil)
//            }
//        }
//        task.resume()
//    } else {
//        completion(nil)
//    }
//}

