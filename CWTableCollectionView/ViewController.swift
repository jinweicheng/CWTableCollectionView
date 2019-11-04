//
//  ViewController.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	var dataArray:[String] = ["tableView-xib-cell","tableView-代码-cell","collectionView-xib-cell","collectionView-代码-cell"]
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = UIColor.white
		self.navigationItem.title = "常用视图"
		
		// 初始化tableView
		let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
		tableView.delegate = self
		tableView.dataSource = self
		self.view.addSubview(tableView)
	}
	
	// UITableViewDataSource
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return dataArray.count
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 50.0
	}
	
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "cellID")
		cell.textLabel?.text = dataArray[indexPath.row]
		return cell
	}
	
	
	// UITableViewDelegate
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let string = dataArray[indexPath.row]
		if string.contains("tableView-xib") {
			print("tableView-xib")
			let xib = CWXibController()
			self.navigationController?.pushViewController(xib, animated: true)
		}else if(string.contains("tableView-代码")){
			let code = CWCodeController()
			self.navigationController?.pushViewController(code, animated: true)
			print("tableView-代码")
		}else if(string.contains("collectionView-xib")){
			let code = CWXibCollectionController()
			self.navigationController?.pushViewController(code, animated: true)
		}else if(string.contains("collectionView-代码")){
			let code = CWCodeCollectionController()
			self.navigationController?.pushViewController(code, animated: true)
		}
		
	}
	
	
	
}

