//
//  SchowPhotoViewController.swift
//  TravelBY
//
//  Created by  aleksandr on 16.01.24.
//

import Foundation
import UIKit

class SchowPhotoViewController: UIViewController, UIScrollViewDelegate {
    let size : CGFloat = 60
    var image = UIImage()
 
    @IBOutlet weak var dismissVCImage: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dismissVCImage.layer.cornerRadius = 25
        //dismissVCImage.layer.opacity = 10
        
        setUp()
    }
    private func setUp() {
        imageView.image = image
        scrollView.delegate = self
    }
    
    @IBAction func dismissVC(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
}
