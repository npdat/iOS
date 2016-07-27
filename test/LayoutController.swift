//
//  LayoutController.swift
//  test
//
//  Created by TIGER TEAM on 7/27/16.
//  Copyright © 2016 TIGER TEAM. All rights reserved.
//

import UIKit

let reuseIdentifier = "collCell"

class LayoutController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    //let titles = ["Ngo Phat Dat", "Nguyen Van Thuong", "Vo Hoang Thong", "Duong Anh Thi",
      //            "Pham Hoang Tuan Kiet"]
    
    let titles = ["Sand Harbor, Lake Tahoe - California","Beautiful View of Manhattan skyline.","Watcher in the Fog","Great Smoky Mountains National Park, Tennessee","Most beautiful place"]
    
    private let leftAndRightPadding: CGFloat = 50.0
    private let numberOfItemsPerRow: CGFloat = 1.0
    private let heightAdjustment: CGFloat = 30.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        cell.title.text = self.titles[indexPath.row % 5]
        let curr = indexPath.row % 5 + 1
        let imgName = "pin\(curr).jpg"
        cell.pinImage.image = UIImage(named: imgName)
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let width = (CGRectGetWidth(collectionView.frame) - leftAndRightPadding) /
        numberOfItemsPerRow
        return CGSize(width: width, height: width + heightAdjustment)
    }
    
    
    
    
    func collectionView(collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                               insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
}
