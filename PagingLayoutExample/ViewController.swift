//
//  ViewController.swift
//  PagingLayoutExample
//
//  Created by Uladzislau Abramchuk on 1/25/18.
//  Copyright © 2018 Uladzislau Abramchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    override func loadView() {
        super.loadView()
        let collectionViewLayout: PageLayout = PageLayout()
        collectionViewLayout.itemSize = CGSize(width: self.view.bounds.width / 2, height: self.view.bounds.height / 2)
        collectionViewLayout.sectionInset = UIEdgeInsets(top: 100, left: self.view.bounds.width / 4, bottom: 100, right: self.view.bounds.width / 4)
        
        collectionViewLayout.minimumInteritemSpacing = self.view.bounds.width / 4
        
        // self.view.bounds.width / 2 - max line spacing
        collectionViewLayout.minimumLineSpacing = self.view.bounds.width / 2
        
        collectionViewLayout.scrollDirection = UICollectionViewScrollDirection.horizontal
        
        let collectionView: UICollectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: collectionViewLayout)
        collectionView.dataSource = self;
        collectionView.backgroundColor = UIColor.white
        
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "ident")
        
        self.view.addSubview(collectionView)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ident", for: indexPath) as! CustomCell
        
        return cell
    }
}

class CustomCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor =  UIColor(displayP3Red: 230/255, green: 230/2255, blue: 230/255, alpha: 1)
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: -5.0, height: 5.0)
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 1.0
        self.layer.cornerRadius = 8
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("ERRROR")
    }
}




