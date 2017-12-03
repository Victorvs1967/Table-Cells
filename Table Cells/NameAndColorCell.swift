//
//  NameAndColorCell.swift
//  Table Cells
//
//  Created by Victor Smirnov on 02/12/2017.
//  Copyright © 2017 Victor Smirnov. All rights reserved.
//

import UIKit

class NameAndColorCell: UITableViewCell {
  
  var name: String = "" {
    didSet {
      if name != oldValue {
        nameLabel.text = name
      }
    }
  }
  var color: String = "" {
    didSet {
      if color != oldValue {
        colorLabel.text = color
      }
    }
  }
  
  var nameLabel: UILabel!
  var colorLabel: UILabel!
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    let nameLabelRect = CGRect(x: 0, y: 5, width: 70, height: 24)
    let nameMaker = UILabel(frame: nameLabelRect)
    nameMaker.textAlignment = NSTextAlignment.right
    nameMaker.text = "Name:"
    nameMaker.font = UIFont.boldSystemFont(ofSize: 14)
    contentView.addSubview(nameMaker)
    
    let colorLabelRect = CGRect(x: 0, y: 26, width: 70, height: 24)
    let colorMaker = UILabel(frame: colorLabelRect)
    colorMaker.textAlignment = NSTextAlignment.right
    colorMaker.text = "Color:"
    colorMaker.font = UIFont.boldSystemFont(ofSize: 14)
    contentView.addSubview(colorMaker)
    
    let nameValueRect = CGRect(x: 80, y: 5, width: 200, height: 24)
    nameLabel = UILabel(frame: nameValueRect)
    contentView.addSubview(nameLabel)
    
    let colorValueLabel = CGRect(x: 80, y: 25, width: 200, height: 24)
    colorLabel = UILabel(frame: colorValueLabel)
    contentView.addSubview(colorLabel)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
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
