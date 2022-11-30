
//  CometChatMembersItem.swift
//  CometChatUIKit
//  Created by CometChat Inc. on 20/09/19.
//  Copyright ©  2020 CometChat Inc. All rights reserved.


// MARK: - Importing Frameworks.

import UIKit
import CometChatPro

/*  ----------------------------------------------------------------------------------------- */

public class CometChatMembersItem: UITableViewCell {

    // MARK: - Declaration of IBOutlet
    
    @IBOutlet weak var avatar: CometChatAvatar!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var scope: UILabel!
    @IBOutlet public weak var status: CometChatStatusIndicator!
    @IBOutlet public weak var chatButton: UIButton!

    // MARK: - Declaration of Variables
    
    var group: CometChatPro.Group?
    public weak var member: CometChatPro.GroupMember? {
        didSet {
            if let currentMember = member {
                if currentMember.uid == LoggedInUser.uid {
                    name.text = "YOU".localized()
                    self.selectionStyle = .none
                }else{
                    name.text = currentMember.name
                }
                status.set(status: currentMember.status)
                /// Set the avatar for the member.
                avatar.set(image: currentMember.avatar, with: currentMember.name)
                switch currentMember.scope {
                case .admin:
                    if let group = group {
                        if group.owner == currentMember.uid {
                            scope.text = "OWNER".localized()
                        }else{
                            scope.text = "ADMIN".localized()
                        }
                    }else{
                        scope.text = "ADMIN".localized()
                    }
                case .moderator: scope.text = "MODERATOR".localized()
                case .participant: scope.text = "PARTICIPANT".localized()
                @unknown default: break }
                
                safeUpSetupChatButton(member: currentMember)
            }
         }
    }
    
    
    private func safeUpSetupChatButton(member: GroupMember) {
        chatButton.setTitle("", for: .normal)
        if member.uid == LoggedInUser.uid {
            chatButton.setTitle("", for: .normal)
            name.text = member.name! + " (" + "YOU".localized() + ")"
        }
        
        switch member.scope {
        case .admin:
            chatButton.isHidden = false
            if group == nil {
                scope.text = "*" + UIKitSettings.localizable.txt_community_manager
            }
        case .moderator:
            chatButton.isHidden = true
            scope.text = ""
        case .participant:
            chatButton.isHidden = true
            scope.text = ""
        @unknown default:
            break
        }
    }
    
    
    deinit {
     
    }
    
    public override func prepareForReuse() {
        member = nil
        // Cancel Image Request
        avatar.cancel()
    }
    
     // MARK: - Initialization of required Methods
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

/*  ----------------------------------------------------------------------------------------- */
