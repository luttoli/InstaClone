//
//  FeedImageCollectionView.swift
//  InstaClone
//
//  Created by 김지훈 on 3/3/24.
//

import UIKit

class FeedImageCollectionView: UICollectionView {
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        self.register(FeedImageCollectionViewCell.self, forCellWithReuseIdentifier: FeedImageCollectionViewCell.identifier)
        self.backgroundColor = .coustomBackgroundColor
//        self.backgroundColor = .orange
        self.showsHorizontalScrollIndicator = false
        self.allowsMultipleSelection = true
        self.isPagingEnabled = true
        self.dataSource = self
        self.delegate = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadImageData(from urls: [String], completion: @escaping ([Data?]) -> Void) {
        let urlSession = URLSession(configuration: .default)
        var downloadedImages: [Data?] = []

        let width = Int(self.bounds.width)
        let height = Int(self.bounds.width)

        let group = DispatchGroup()

        for urlString in urls {
            group.enter()

            if let imageUrl = URL(string: urlString) {
                let task = urlSession.dataTask(with: imageUrl) { data, response, error in
                    defer {
                        group.leave()
                    }

                    if let error = error {
                        print("이미지 가져오기 오류:", error)
                        downloadedImages.append(nil)
                    } else if let data = data {
                        let resizedImageData = self.resizeImage(data: data, targetWidth: width, targetHeight: height)
                        downloadedImages.append(resizedImageData)
                    } else {
                        downloadedImages.append(nil)
                    }
                }
                task.resume()
            } else {
                downloadedImages.append(nil)
                group.leave()
            }
        }

        group.notify(queue: DispatchQueue.main) {
            completion(downloadedImages)
        }
    }
    
    //이미지 크기 조정 함수
    func resizeImage(data: Data, targetWidth: Int, targetHeight: Int) -> Data? {
        if let image = UIImage(data: data) {
            let renderer = UIGraphicsImageRenderer(size: CGSize(width: targetWidth, height: targetHeight))
            let resizedImage = renderer.image { _ in
                image.draw(in: CGRect(x: 0, y: 0, width: targetWidth, height: targetHeight))
            }
            
            return resizedImage.jpegData(compressionQuality: 1.0)
        }
        return nil
    }
    
}

extension FeedImageCollectionView: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3 //테이블뷰에서 인덱스 넘겨줄거
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeedImageCollectionViewCell.identifier, for: indexPath) as? FeedImageCollectionViewCell else {
            return UICollectionViewCell()
        }

//        guard let image = FeedData.feedList[indexPath.row].feedImage[indexPath.row]
        
//        guard let imageUrl = FeedData.feedImage[indexPath.row] else {
//            return cell
//        }
        
        guard let imageUrl = steak[indexPath.item] else {
            return cell
        }

        loadImageData(from: [imageUrl]) { imageData in
            DispatchQueue.main.async {
                if let imageData = imageData.first {
                    cell.feedImage.image = UIImage(data: imageData ?? Data())
                } else {
                    cell.feedImage.image = UIImage(systemName: "person")
                }
            }
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.bounds.width)
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
