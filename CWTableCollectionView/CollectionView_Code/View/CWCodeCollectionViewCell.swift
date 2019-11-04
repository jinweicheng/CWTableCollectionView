//
//  CWCodeCollectionViewCell.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWCodeCollectionViewCell: UICollectionViewCell {
	var imageView = UIImageView()
	var lable = UILabel()
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override init(frame: CGRect) {
		super .init(frame: frame)
		initCellView()
	}
	
	// MARK:initCellView
	func initCellView() {
		imageView = UIImageView(frame: CGRect(x: 0, y: 0, width:80, height: 80))
		imageView.image = UIImage.init(named: "美女3.jpg")
		imageView.alpha = 0.6
		self.addSubview(imageView)
		
		lable = UILabel(frame: CGRect(x: (80 - 20) / 2, y: (80 - 20)/2, width: 80, height: 20))
		lable.text = "test"
		self.addSubview(lable)
	}
}
