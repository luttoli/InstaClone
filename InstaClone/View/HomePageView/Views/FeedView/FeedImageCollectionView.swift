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
    
    func loadImageData(completion: @escaping (Data?) -> Void) {
//        let imageUrlString = "https://cdn2.thecatapi.com/images/8o8.jpg"
        
        let imageUrlString = "https://lh3.googleusercontent.com/fife/ALs6j_ERtekBdUpzZMW9cxmlpTYj4nA0xuczFDOAahT2o1v16Mdj2IRu8v63Jxwt0uG64R2VXa-JC8o2ay73W279NqkY3S3qtZ-quM9tY7NaG9-PMOOjweqMNA3I5oqJcdxONsgVEye8J7Cgyu3fvMDhrJQsNcocyMNJBXHYXC_cR-GvJvsZ0veVw-rzHTYf3fsuwB-Np8mDOqYlJ3mwaVKWLbJbj5LWR_k-U5_aQ4o5VrNAsM_M96t0xUhoCV4poyUFfWvshTpwQWGUb0XwVif8BlRnFbhUNY6Pc5z8KZwqwbspkDmZmbqhj2vL5oLa162RucNsy-oYFW64_nfagOaC--6q1l47Gqq9JTcB9G9ZhaQl4DGeE_tb9ZlNk1Mf1lxLc0dg9rfeFw_pcm4v7RujUGA-EVSWoFw1rCJF1WSCVb-ooMHyTUVPM4HW4O8pzW44DbpD_uht7OepCld9hZyb1qSGdlKGqchygvNU_xv6eFlYtquavszT9aZVRNvaNbKu8_QivGAknbchksHI3wtcchhPCMGs4O3OHDnqBx17OBw183jfPTZycSrcasubc9QczxPi7pVyUSJntT0Sz_xv9r0l0NKP1vcd4bTU5mDkx7pDQY0yz5Xq1Kf_CzChdvA5o9BS9LEO85gsWVK_uDjbnu7obkMU1NE86mH1dPG1ReMGxaQHilhu2kbKHpVL7KliNmYrLnw1Mb3P2BVwbNaSmPpUkLkpFSBsDnN7C4cVUSyRpe7TWngnKqPuWiilR73i_ZD5DoyOP3MzhASBk0TPpyVGnzOIIKpWqsO_5ut1YtGdzOEHtrxSzWV5dpO0KkIXcqdwQXedpG40Shz0jlf5a3g2ZWzaVApThfLzU-6dh3Evww-ySos8uhTO5ULts1SrkhiZBZSDQ_QSrutFMk8_f5lzDTE7emor2ypek8fwW06QY8KD5jECCsAuqJ9HwUR_zHLl9RgXLK1-Z_RR8nwqTAxXs0KUM7hlJ4YYftWAWZ7ZarmI8--qYtJCqueCYefMcRQMZj1_fCp_MgXhHxVdLATHubEIkKUdiYwufQGTB3XzTZ2kVwI8nAy2ZVijkx9KwrrgXXXYcV7L0_XhuyJiv2plzYqQITbi9h_In9ehacR1NYXtMfoJ4EACT2jOjUeJRqJ9cSQPMxdTgxxjFWfQxHD5o1aVW_WHvLybFr8-lDryuV8TaWwIO0PDcfMDYX8D2PxbAkoa4mfhFIvU38qF3zyi7aXNjoEBWGtpEqpjB--ZaxhcSfeqVXqnsxNkrJUrRvUvNGiJCbG44U7P0BMLgCTtuJexwiziq6V8JaF-8svb61SqcB4bcRcqaA-rUIM4p6ua0U3eK-UfhnjLgbm42s1-EbAnl45lTXQyeHVWGkrd1fDKiQ4srB-Key5Q2NXV0tipuCc8x-pXXHVZ9B-MonIzCbvMd3u4j9Phn2VD7jU5EiS8pO5obqQQs3BudjZjS9oXjvfts9hW-jTurrS-GcBrGzzu872HaaYZ7wJMgFWxEVac6WWXqOpdC7Uv1eBWG89coVnbWURo28dIFQBVzdVNCGwoH5NL8QWwqWJPVDoLER3TkBgiXtNLAw7mBv_V1nqKuk6fDVm2dpF8x2E=w1920-h934"
    
        let width = Int(self.bounds.width)
        let height = Int(self.bounds.width)
        
        //URLSession을 사용하여 이미지 데이터 가져오기
        if let imageUrl = URL(string: imageUrlString) {
            let urlSession = URLSession(configuration: .default)
            let task = urlSession.dataTask(with: imageUrl) { data, response, error in
                if let error = error {
                    print("이미지 가져오기 오류:", error)
                    completion(nil)
                    return
                }
                
                if let data = data {
                    //이미지 크기 조정
                    if let resizedImageData = self.resizeImage(data: data, targetWidth: Int(width), targetHeight: Int(height)) {
                        completion(resizedImageData)
                    } else {
                        completion(nil)
                    }
                } else {
                    completion(nil)
                }
            }
            task.resume()
        } else {
            completion(nil)
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
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeedImageCollectionViewCell.identifier, for: indexPath) as? FeedImageCollectionViewCell else { return UICollectionViewCell() }
        
        //
        loadImageData { imageData in
            DispatchQueue.main.async {
                if let imageData = imageData {
                    cell.feedImage.image = UIImage(data: imageData)
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
