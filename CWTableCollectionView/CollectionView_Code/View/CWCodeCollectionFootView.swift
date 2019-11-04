//
//  CWCodeCollectionFootView.swift
//  CWTableView
//
//  Created by 程金伟 on 2019/11/1.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class CWCodeCollectionFootView: UICollectionReusableView {
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override init(frame: CGRect) {
		super .init(frame: frame)
		initCellPage()
	}
	
	// MARK:initCellPage
	func initCellPage() {
		let lable = UILabel(frame: CGRect(x: 0, y: 10, width: width, height: 20))
		lable.textAlignment = .center
		lable.text = "尾标题"
		self.addSubview(lable)
		self.backgroundColor = UIColor.blue
	}
}
