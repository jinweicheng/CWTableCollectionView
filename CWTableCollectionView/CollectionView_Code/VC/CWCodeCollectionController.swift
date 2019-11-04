//
//  CWCodeCollectionController.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWCodeCollectionController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
	
	
	
	var collectionView:UICollectionView?
	var dataArray:[CWCodeCollectionModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
		initPage()
		initCollectionView()
		initDataArray()
        
    }
	
	// MARK:initPage
	func initPage() {
		self.navigationItem.title = "collectionView-代码"
		self.view.backgroundColor = UIColor.white
	}

	// MARK:initCollectionView
	func initCollectionView() {
		let layout = UICollectionViewFlowLayout.init()
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 5, left: 5, bottom: 5, right: 5)
		layout.headerReferenceSize = CGSize.init(width: width, height: 40)
		layout.footerReferenceSize = CGSize.init(width: width, height: 40)
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: width, height: height), collectionViewLayout: layout)
        collectionView?.backgroundColor = UIColor.white
        collectionView?.dataSource = self
        collectionView?.delegate = self
		// 注册cell
		collectionView?.register(CWCodeCollectionViewCell.self, forCellWithReuseIdentifier: "CWCodeCollectionViewCell_Dis")
		collectionView?.register(CWCodeCollectionHeadView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CWCodeCollectionHeadView_Dis")
		collectionView?.register(CWCodeCollectionFootView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "CWCodeCollectionFootView_Dis")
		self.view.addSubview(collectionView!)
		
	}
	
	// MARK:initDataArray
	func initDataArray() {
		for i in 0...10 {
			let model = CWCodeCollectionModel()
			model.title = "title\(i)"
			model.imageName = "美女\(i+1).jpg"
			dataArray.append(model)
		}
		collectionView?.reloadData()
	}
	
	// MARK:UICollectionViewFlowLayout
	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		if kind == UICollectionElementKindSectionHeader {
			let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CWCodeCollectionHeadView_Dis", for: indexPath) as!CWCodeCollectionHeadView
			return headerView
			
		}else {
			let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "CWCodeCollectionFootView_Dis", for: indexPath) as!CWCodeCollectionFootView
			return footerView
		}
	}
	
	// MARK:UICollectionViewDataSource
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 2
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return dataArray.count
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CWCodeCollectionViewCell_Dis", for: indexPath) as!CWCodeCollectionViewCell
		let model = dataArray[indexPath.item]
		cell.lable.text = model.title
		cell.imageView.image = UIImage.init(named: model.imageName)
		return cell
	}
	
	// MARK:UICollectionViewDelegate
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		
	}

}
