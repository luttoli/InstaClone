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
        
//        let imageUrlString = "https://lh3.googleusercontent.com/fife/ALs6j_Evqdqp5IyReOnnfsH3lXwhRZAN8DYmZeOmIeyyY__1jibKTFgrPrEgZEc4SWIZDbyha7D4W1YqbI0TxoBGwEVKHhophH2xD7nA8fGhJKntbIg2HQxUdOpdJjVgc1oEJMuAb6H-PLT2sDJxIopjrQjMTe8wZbP7eTOBBZQ0ubPSy-a0UrTdawt0eXIo9l6Mve1bM_eNR-InCbnjSv5vVfDoV9UNrHlw6iJK3FzLD-oeA9E3gyq2x1HAF0dftHKvJpMpDxqJb69rSkO4amK0-hjgLrhSgwD5nMtXIT1I8yDHFZNNA-rnDD4xlxkZYb87LKbVz0hgkqBQHiEK54vC5eQOTJjadTfHNVeQ2oehnAc1SyHblcnv_6nb6ND5e1sgVKoCuMQ5ANxtyJhO19FchxJIm8h6OYhlFrdb2SMSe9MC13A-5nS2qxnKjEoDXERPzVFeBcBqS5C3DxzI9S8kT7kpC4Dzlq84ThayqIDt6jEQuNr-8x6uZ_pLQjYNmYLqGsc20T3RDgUFPQf4-Uusld6XnMsBFqDnKJ8tNYjvL-1ZPlJb7iMC-hrQyckprfWZk-zqBHES-xJqzos4qSCcc_b2wFd8HEO-XyiJ9yloxV3jjbRWaWc2I1_7oTEaHhSJkN372V02GL1C2HHM7EEX7sgOueB1Gl7gASwCXDf9AeLdLMi7omtAj5CU0-KM-YT1zHT6w_ZMFxETo6wj5CptSPvux1QtiFIKkqXwLWkcgflFlFoYEVUaK2eJ97E5W9Dg4XmHBxH-LMtq2-tA7OArQQjdAplKUlTOKp0jRWXniQWgj7Bmai2LE3JKi_iWxiB3pg0EZsHOIGyZSzUCF8vq8n6yh_78OEUdcwVKMtW_nTHYYhLtcsaO3tf4ncfKOMVZSfC1F0hJqh54ZO2QzVX8VluZHEwnfVW4KvJ36iFi2ZWk9MeNBJBD35Iy_fStDJuXwT18R0deVDgKXOhnFUuVb5F9FZv3a9YVX4kCaTijRMbAJSI7PXAYo5vlh5haPEe_rvlpY2YC5IcOhHoXLe2I91uqc4dtuqXjBt2dJY6kbG-IObSWAA6BcA5ILB2rJrPNbuw3xJtfseAKbJL9yVX7i_fsemnRe33H8W4D45KYQ1dHOHZUn-1W1QFbwUhI_A90LtF5WWHbqGpQP6BmTB6YOMOIYWzhW7WKiI6vIRBkUtxLA4ClSdMQnenV9ltTPL5_mywzJ224JOhVt5ifppwlFj-2u0sffKPklLG5MICMxbGhYHJo4Dsad25dJAQy0jnV9gGNhOW1qd6w3P2Q1GxXMLk7UnHpkPl-tXWVR1iJMI8JgYzM2scRjHq05Gs4dlHShZpvYV4sEYXG4Xpuqg2rKS_882ep8xqcE0yYs4Eu4sTpShBxnQjHKWupu4Bg1Ia0meonlunHUD1LNsoA7YBwkm-qkaifxtSA_pwby4tSUvDyNxyZ07z2ybFjHhu9cG_rUNbdHkNEMByl4kFrfInbIsBIIzOb_mtzx9yqsAtOCC2PUadcqApZv23iZ8T-hXyHY7K_cO-ImL7MIZ6vaFjOUglq9ff-lXiZFMSWoOReWhrAScRQpS0DfDJv6wMKjqr3Hgi5mDFe6EjQGcbszw=w1365-h934"
    
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
