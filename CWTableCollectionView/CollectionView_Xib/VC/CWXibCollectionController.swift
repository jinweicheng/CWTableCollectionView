//
//  CWXibCollectionController.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height
class CWXibCollectionController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    
    var collectionView: UICollectionView?
    var dataArray:[CWXibCollectionModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initPage()
        initCollectionView()
        initCollectionDataArray()
       
    }
    
    
    // MARK: initPage
    func initPage() {
        self.navigationItem.title = "collectionView-Xib"
        self.view.backgroundColor = UIColor.white
    }
    
    // MARK: initCollectionView
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
        let cell = UINib.init(nibName: "CWXibCollectionViewCell", bundle: nil)
        collectionView?.register(cell, forCellWithReuseIdentifier: "CWXibCollectionViewCell_Dis")
		collectionView?.register(UINib.init(nibName: "CWXibCollectionHeadView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CWXibCollectionHeadView_Dis")
		collectionView?.register(UINib.init(nibName: "CWXibCollectionFootView", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "CWXibCollectionFootView_Dis")
		
//		collectionView?.register(CWXibCollectionHeadView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CWXibCollectionHeadView_Dis")
//		collectionView?.register(CWXibCollectionFootView.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "CWXibCollectionFootView_Dis")

        self.view.addSubview(collectionView!)
        
    }
    
    // MARK: initCollectionDataArray
    func initCollectionDataArray() {
        for i in 0...10 {
            let model = CWXibCollectionModel()
            model.title = "title+\(i)"
            model.imageName = "美女\(i+1).jpg"
            dataArray.append(model)
        }
        collectionView?.reloadData()
    }
    
    // MARK: UICollectionViewFlowLayout
//	func collectionView(_ collectionView:UICollectionView,layout collectionViewLayout:UICollectionViewLayout,referenceSizeForHeaderInSection section:Int) ->CGSize {
//		return CGSize.init(width: width, height: 40)
//	}
//	func collectionView(_ collectionView:UICollectionView,layout collectionViewLayout:UICollectionViewLayout,referenceSizeForFooterInSection section:Int) ->CGSize {
//		return CGSize.init(width: width, height: 40)
//	}
	
	func collectionView(_ collectionView:UICollectionView, viewForSupplementaryElementOfKind kind:String,at indexPath:IndexPath) -> UICollectionReusableView {
		if kind == UICollectionElementKindSectionHeader {
			let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "CWXibCollectionHeadView_Dis", for: indexPath) as! CWXibCollectionHeadView
			return headerView
		}else {
			let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionFooter, withReuseIdentifier: "CWXibCollectionFootView_Dis", for: indexPath) as! CWXibCollectionFootView
			return footerView
		}
	}
    
    
    // MARK: UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = dataArray[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CWXibCollectionViewCell_Dis", for: indexPath) as! CWXibCollectionViewCell
        cell.titleLable.text = model.title
        cell.backImage.image = UIImage.init(named: model.imageName)
        return cell
    }
    
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
