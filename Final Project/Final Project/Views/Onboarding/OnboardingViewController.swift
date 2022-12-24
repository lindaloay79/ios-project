//
//  OnboardingViewController.swift
//  Final Project
//
//  Created by Linda Loay on 08/12/2022.
//

import UIKit

class OnboardingViewController: UIViewController{

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides : [OnboardingSlide] = []
    
    var currentPage = 0 {
      didSet{
          pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                btnNext.setTitle("لنبدا", for: .normal)
            }else{
                btnNext.setTitle("التالي", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [OnboardingSlide(title: "استشارات هندسية", description: "استشارات هندسية استشارات هندسية استشارات هندسية استشارات هندسية", image: #imageLiteral(resourceName: "WhatsApp Image 2022-12-08 at 6.44.07 PM")),
                  OnboardingSlide(title: "مقاولات", description: "يقدم لكم بيتي افضل المقاولات مع افضل الشركات يقدم لكم بيتي افضل المقاولات مع افضل الشركات يقدم لكم بيتي افضل المقاولات مع افضل الشركات ", image: #imageLiteral(resourceName: "WhatsApp Image 2022-12-08 at 6.44.07 PM (1)")),
                  OnboardingSlide(title: "خدمات هندسية عامة", description: "يقدم لكم بيتي افضل الاستشارات الهندسية مع افضل الشركات يقدم لكم بيتي افضل الاستشارات الهندسية مع افضل الشركات يقدم لكم بيتي افضل الاستشارات الهندسية مع افضل الشركات", image: #imageLiteral(resourceName: "5155036"))
            ]
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        if currentPage == slides.count - 1{
            let controller = storyboard?.instantiateViewController(identifier: "HomeNC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)
        }else{
        currentPage += 1
        let indexPath = IndexPath(item: currentPage, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}

    extension OnboardingViewController: UICollectionViewDelegate,
                    UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return slides.count
        }
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
            
            cell.setup(slides[indexPath.row])
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width , height: collectionView.frame.height)
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let width = scrollView.frame.width
            currentPage = Int(scrollView.contentOffset.x / width)
            
        }
        
        
    }
