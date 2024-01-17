//
//  LoadingViewController.swift
//  TravelBY
//
//  Created by  aleksandr on 16.01.24.
//

import UIKit
import Lottie

@available(iOS 14.0, *)
class LoadingViewController: UIViewController {
    
    @IBOutlet weak var dowlandCentrView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //addAnimateLotLoading()
        addAnimeLottie()
    }

    
    func addAnimeLottie() {
        let animeDowlandView = LottieAnimationView(name: "12345 (2)")
        animeDowlandView.contentMode = .scaleAspectFill
        animeDowlandView.frame = self.dowlandCentrView.bounds
        //animeDowlandView.loopMode = .loop
        animeDowlandView.play()
//        animeDowlandView.play { (finished) in
//            self.lottieLoading()
//        }
        self.dowlandCentrView.addSubview(animeDowlandView)
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(loading), userInfo: nil, repeats: false)
    }
    
//    func addAnimateLotLoading() {
//        let animeLoadView = LottieAnimationView(name: "lf20_jIG9zu")
//        animeLoadView.contentMode = .scaleAspectFill
//        animeLoadView.frame = self.loadingView.bounds
//        //animeDowlandView.loopMode = .loop
//        animeLoadView.play()
//        self.loadingView.addSubview(animeLoadView)
//    }
    
    
 
    @objc func loading() {
        let storuboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storuboard.instantiateViewController(withIdentifier: "mapController")
        vc.modalPresentationStyle = .overFullScreen
        //vc.hero.modalAnimationType = .selectBy(presenting: .fade, dismissing: .fade)
        self.present(vc, animated: true)
        
    }
 

}

