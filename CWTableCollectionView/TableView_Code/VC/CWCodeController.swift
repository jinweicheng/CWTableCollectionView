//
//  CWCodeController.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWCodeController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var tableView = UITableView()
    var dataArray:[CWCodeModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        initTableViewModel()
		self.navigationItem.title = "tableView_code"
        
    }
    
    // MARK:initTableView
    func initTableView() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CWCodeCell.classForCoder(), forCellReuseIdentifier: "CWCodeCell_Dis")
		tableView.register(CWCodeTableHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "CWCodeTableHeaderFooterView_Dis")
        self.view.addSubview(tableView)
    }

    // MARK:initDataArray
    func initTableViewModel() {
        for i in 0...10 {
            let model = CWCodeModel()
            model.value = "详细地址+------\(i)"
            model.name = "姓名+------\(i)"
            model.age = 19 + i
            model.weight = Float(40 + i)
            dataArray.append(model)
        }
        tableView.reloadData()
    }
	
	// MARK:headerFooterView
	func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 40.0
	}
	
	func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
		return 40.0
	}
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CWCodeTableHeaderFooterView_Dis") as!CWCodeTableHeaderFooterView
		headerView.lable.text = "第\(section)区头部视图"
		return headerView
	}
	
	func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
		let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CWCodeTableHeaderFooterView_Dis") as!CWCodeTableHeaderFooterView
		footerView.lable.text = "第\(section)区尾部视图"
		return footerView
	}
	
    
    // MARK:UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CWCodeCell_Dis") as? CWCodeCell
        let model = dataArray[indexPath.row]
        cell?.configCellValue(model: model)
        return cell!
    }
    
    // MARK:UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    

}
