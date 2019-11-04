//
//  CWXibTableViewCell.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWXibTableViewCell: UITableViewCell {

    // 头像
    @IBOutlet weak var headImage: UIImageView!
    // 子标题
    @IBOutlet weak var subTitle1: UILabel!
    // 子标题2
    @IBOutlet weak var subTitle2: UILabel!
    // 子标题3
    @IBOutlet weak var subTitle3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
