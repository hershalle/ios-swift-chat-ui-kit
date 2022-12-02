//
//  EmptyMessage.swift
//  CometChatSwift
//
//  Created by Pushpsen Airekar on 02/02/21.
//  Copyright © 2021 MacMini-03. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        if #available(iOS 13.0, *) {
            messageLabel.textColor = .systemGray
        } else {
            messageLabel.textColor = .gray
        }
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center
        
        messageLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        messageLabel.sizeToFit()
        self.backgroundView = messageLabel
    }
    
    func restore() {
        self.backgroundView = nil
    }
}

extension UITableView {
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: (self.bounds.size.height/2)))
        messageLabel.text = message
        
            // SafeUp change:
//        if #available(iOS 13.0, *) {
//            messageLabel.textColor = .systemGray
//        } else {
//            messageLabel.textColor = .gray
//        }
//        messageLabel.numberOfLines = 0;
//        messageLabel.textAlignment = .center
//        messageLabel.font = UIFont.systemFont(ofSize: 35, weight: .bold)
//        messageLabel.sizeToFit()
//        self.backgroundView = messageLabel
        // SafeUp change:
        messageLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.7)
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center
        messageLabel.font = UIFont.systemFont(ofSize: 16.0)
        messageLabel.sizeToFit()
        
        let stackView = UIStackView(frame: messageLabel.frame)
        stackView.addArrangedSubview(messageLabel)
        stackView.alignment = .bottom
        stackView.isLayoutMarginsRelativeArrangement = true
        
        let inset: CGFloat = 16.0
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: inset, leading: inset, bottom: inset, trailing: inset)
        
        backgroundView = stackView
    }
    
    func restore() {
        self.backgroundView = nil
    }
}

 
