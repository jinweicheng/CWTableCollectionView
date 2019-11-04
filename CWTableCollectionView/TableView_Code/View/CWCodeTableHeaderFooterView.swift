//
//  CWCodeTableHeaderFooterView.swift
//  CWTableView
//
//  Created by 程金伟 on 2019/11/1.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class CWCodeTableHeaderFooterView: UITableViewHeaderFooterView {

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	var lable = UILabel()
	override init(reuseIdentifier: String?) {
		super .init(reuseIdentifier: reuseIdentifier)
		initPageView()
	}
	
	// MARK:InitPageView
	func initPageView() {
		lable = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: 40))
		lable.text = "标题"
		lable.textAlignment = .center
		self.addSubview(lable)
	}

}
