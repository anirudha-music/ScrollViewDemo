//
//  OffersViewController.swift
//  ProductOffers
//
//  Created by Anirudha on 10/05/17.
//  Copyright © 2017 Anirudha Mahale. All rights reserved.
//

import UIKit

class OffersViewController: UIViewController {

    @IBOutlet weak var tabBarCollection: UICollectionView!
    @IBOutlet weak var OffersCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarCollection.tag = 1001
        OffersCollection.tag = 1002
        // Do any additional setup after loading the view.
    }


    @IBAction func clickedButton(_ sender: UIButton) {
        let index = sender.tag
        let indexPath = IndexPath(item: index, section: 0)
        OffersCollection.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    var titles = ["", "DEF", "HIJ", "LMN"]
    var colors: [UIColor] = [.red, .blue, .green, .yellow]

}

extension OffersViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 1001 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryTableCellsz", for: indexPath) as! CategoryTableCellsz
            cell.categoryTitle.setTitle(titles[indexPath.row], for: .normal)
            cell.categoryTitle.tag = indexPath.row + 1
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            cell.backgroundColor = colors[indexPath.row]
            return cell
        }
    }
}

class CategoryTableCellsz: UICollectionViewCell {
    @IBOutlet weak var categoryTitle: UIButton!
}



