//
//  TextComponentView.swift
//  ORTUS
//
//  Created by Firdavs Khaydarov on 04/02/20.
//  Copyright © 2020 Firdavs. All rights reserved.
//

import UIKit

class TextComponentView: UIView {
    let textLabel = UILabel()
    
    let rightAccessoryView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "chevronRight")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .tertiaryLabel
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        addSubview(rightAccessoryView)
        rightAccessoryView.snp.makeConstraints {
            $0.size.equalTo(18)
            $0.centerY.equalToSuperview()
            $0.right.equalToSuperview().inset(Global.UI.edgeInset)
        }
        
        addSubview(textLabel)
        textLabel.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.left.equalToSuperview().offset(Global.UI.edgeInset)
            $0.right.equalTo(rightAccessoryView.snp.left).offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
