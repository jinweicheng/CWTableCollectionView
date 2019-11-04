//
//  CWXibController.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWXibController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var tableView = UITableView()
    var dataArray:[CWXibModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "tableView_Xib"
        initTableView()
        initTableViewModel()
        
    }

    
    // MARK:initTableView
    func initTableView() {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: UITableViewStyle.plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "CWXibTableViewCell", bundle: nil), forCellReuseIdentifier: "CWXibTableViewCell_Dis")
        self.view.addSubview(tableView)
    }
    
    func initTableViewModel() {
        for i in 0...10 {
            let model = CWXibModel()
            model.value = "大美女详细地址+------\(i)"
            model.name = "姓名+------\(i)"
            model.age = 19 + i
            model.weight = Float(40 + i)
            dataArray.append(model)
        }
        tableView.reloadData()
    }
    
    
    // MARK:UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CWXibTableViewCell_Dis") as? CWXibTableViewCell
        let model = dataArray[indexPath.row]
        cell?.subTitle1.text = model.name
        cell?.subTitle2.text = "年龄\(model.age)+体重\(model.weight)"
        cell?.subTitle3.text = model.value
        return cell!
    }
    
    // MARK:UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    

    

}
