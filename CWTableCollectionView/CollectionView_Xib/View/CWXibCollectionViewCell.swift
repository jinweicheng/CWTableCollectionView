//
//  CWXibCollectionViewCell.swift
//  CWTableView
//
//  Created by mac on 2019/11/1.
//  Copyright © 2019年 mac. All rights reserved.
//

import UIKit

class CWXibCollectionViewCell: UICollectionViewCell {

    // 背景图片
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var backImage: UIImageView!
    // 标示
    @IBOutlet weak var titleLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
