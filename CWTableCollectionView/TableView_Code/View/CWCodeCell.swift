//
//  CWCodeCell.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWCodeCell: UITableViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var headImage:UIImageView?
    var subTitle1:UILabel?
    var subTitle2:UILabel?
    var subTitle3:UILabel?
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initCellView()
    }
    
    // MARK:InitCellView
    func initCellView() {
        // 图片
        headImage = UIImageView(frame: CGRect(x: 10, y: (150 - 100)/2, width: 100, height: 100))
        self.addSubview(headImage!)
        
        // 标题
        subTitle1 = UILabel(frame: CGRect(x: 10 + 100 + 20, y: (150 - 100)/2, width: 200, height: 20))
        self.addSubview(subTitle1!)
        subTitle2 = UILabel(frame: CGRect(x: 10 + 100 + 20, y: (150 - 100)/2 + 35, width: 200, height: 20))
        self.addSubview(subTitle2!)
        subTitle3 = UILabel(frame: CGRect(x: 10 + 100 + 20, y: (150 - 100)/2 + 70, width: 200, height: 20))
        self.addSubview(subTitle3!)
    }
    
    func configCellValue(model:CWCodeModel) {
        
        headImage?.image = UIImage(named: "美女2.jpg")
        subTitle1?.text = model.name
        subTitle2?.text = "年龄\(model.age)+体重\(model.weight)"
        subTitle3?.text = model.value
        
    }
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
