//
//  Settings.swift
//  WidgetDemo
//
//  Created by Pushpsen Airekar on 10/08/20.
//  Copyright © 2020 Pushpsen Airekar. All rights reserved.
//

import Foundation
import UIKit

public enum SwitchMode {
    case enabled
    case disabled

    var isEnabled: Bool {
        switch self {
        case .enabled:
            return true
        case .disabled:
            return false
        }
    }
}

 enum UserDisplayMode {
    case friends
    case all
    case none
}

enum ChatDisplayMode {
   case user
   case group
   case both
}

 enum GroupDisplayMode {
    case publicGroups
    case passwordProtectedGroups
    case publicAndPasswordProtectedGroups
    case none
}



open class UIKitSettings {
    private init() {}
    
    public static var bundle = Bundle(for: CometChatConversationListItem.classForCoder())//Bundle.main
    
    // Keys
    public static var googleApiKey = "ENTER YOUR GOOGLE API KEY HERE"
    
    // style
    public static var primaryColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    public static var secondaryColor: UIColor = #colorLiteral(red: 0.5019607843, green: 0.5019607843, blue: 0.5019607843, alpha: 1)
    public static var URLColor: UIColor = #colorLiteral(red: 0.01568627451, green: 0.1965779049, blue: 1, alpha: 1)
    public static var URLSelectedColor: UIColor = #colorLiteral(red: 0.01568627451, green: 0, blue: 0.6165823063, alpha: 1)
    public static var PhoneNumberColor: UIColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    public static var PhoneNumberSelectedColor: UIColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    public static var EmailIDColor: UIColor = #colorLiteral(red: 0.9529411793, green: 0.5480152855, blue: 0, alpha: 1)
    public static var EmailIDSelectedColor: UIColor = #colorLiteral(red: 0.9529411765, green: 0.4078431373, blue: 0, alpha: 1)
    public static var foregroundColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)  //not added
    public static var backgroundColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)  //not added
    static var overrideSystemBackgroundColor: SwitchMode = .disabled  //not added
    
    // sidebar
    //--> 1. Listing
    static var tabbar: SwitchMode = .enabled
    static var chatListMode: ChatDisplayMode = .both
    static var userInMode: UserDisplayMode = .all
    static var groupInMode: GroupDisplayMode = .publicAndPasswordProtectedGroups
    static var conversations: SwitchMode = .enabled
    static var calls: SwitchMode = .enabled
    static var groups: SwitchMode = .enabled
    static var users: SwitchMode = .enabled
    static var userSettings: SwitchMode = .enabled
    
     
    //Main
    public static var publicGroup: SwitchMode = .enabled
    public static var privateGroup: SwitchMode = .enabled
    public static var passwordGroup: SwitchMode = .enabled
    public static var sendTextMessage: SwitchMode = .enabled
    public static var sendMessageInOneOnOne: SwitchMode = .enabled
    public static var sendMessageInGroup: SwitchMode = .enabled
    public static var sendPhotoVideos: SwitchMode = .enabled
    public static var sendFiles: SwitchMode = .enabled
    public static var sendVoiceNotes: SwitchMode = .enabled
    public static var sendEmojis: SwitchMode = .enabled
    public static var sendEmojisInLargerSize: SwitchMode = .enabled
    public static var sendStickers: SwitchMode = .enabled
    public static var sendGifs: SwitchMode = .enabled //not added (feature not available)
    public static var sendTypingIndicator: SwitchMode = .enabled
    public static var sendMessageReaction: SwitchMode = .enabled
    public static var sendLiveReaction: SwitchMode = .enabled
    public static var editMessage: SwitchMode = .enabled
    public static var deleteMessage: SwitchMode = .enabled
    public static var shareCopyForwardMessage: SwitchMode = .enabled
    public static var replyToMessage: SwitchMode = .enabled
    public static var threadedChats: SwitchMode = .enabled
    public static var userVideoCall: SwitchMode = .enabled
    public static var userAudioCall: SwitchMode = .enabled
    public static var groupAudioCall: SwitchMode = .enabled
    public static var groupVideoCall: SwitchMode = .enabled
    public static var groupCreation: SwitchMode = .enabled
    public static var joinOrLeaveGroup: SwitchMode = .enabled
    public static var viewGroupMembers: SwitchMode = .enabled
    public static var allowDeleteGroup: SwitchMode = .enabled
    public static var allowAddMembers: SwitchMode = .enabled
    public static var allowModeratorToDeleteMemberMessages: SwitchMode = .enabled
    public static var kickMember: SwitchMode = .enabled
    public static var banMember: SwitchMode = .enabled
    public static var allowPromoteDemoteMembers: SwitchMode = .enabled
    public static var setGroupInQnaModeByModerators: SwitchMode = .enabled //not added (feature not available)
    public static var hideDeletedMessages: SwitchMode = .disabled
    public static var highlightMessageFromModerators: SwitchMode = .enabled //not added (feature not available)
    public static var shareLocation: SwitchMode = .enabled
    public static var viewShareMedia: SwitchMode = .enabled
    public static var showReadDeliveryReceipts: SwitchMode = .enabled
    public static var showUserPresence: SwitchMode = .enabled
    public static var blockUser: SwitchMode = .enabled
    public static var polls: SwitchMode = .enabled
    public static var enableSoundForCalls: SwitchMode = .enabled
    public static var enableSoundForMessages: SwitchMode = .enabled
    public static var enableActionsForCalls: SwitchMode = .enabled
    public static var enableActionsForGroupNotifications: SwitchMode = .enabled
    public static var collaborativeDocument: SwitchMode = .enabled
    public static var collaborativeWhiteboard: SwitchMode = .enabled
    public static var messageTranslation: SwitchMode = .enabled
    public static var messageHistory: SwitchMode =  .enabled
    public static var unreadCount: SwitchMode =  .enabled
    public static var searchChats: SwitchMode =  .enabled
    public static var searchUsers: SwitchMode =  .enabled
    public static var searchGroups: SwitchMode =  .enabled
    public static var searchMessages: SwitchMode =  .enabled
    public static var callRecording: SwitchMode =  .enabled
    public static var callLiveStreaming: SwitchMode =  .enabled
    public static var callTranscription: SwitchMode =  .enabled
    public static var dataMasking : SwitchMode =  .enabled
    public static var profanityFilter : SwitchMode =  .enabled
    public static var thumbnailGeneration : SwitchMode =  .enabled
    public static var linkPreview : SwitchMode =  .enabled
    public static var richMediaPreview : SwitchMode =  .enabled
    public static var smartReplies: SwitchMode =  .enabled
    public static var saveMessages: SwitchMode =  .enabled
    public static var pinMessages: SwitchMode =  .enabled
    public static var voiceTranscription: SwitchMode =  .enabled
    public static var mentions: SwitchMode =  .enabled
    public static var emailReplies: SwitchMode =  .enabled
    public static var xssFilter: SwitchMode =  .enabled
    public static var imageModeration: SwitchMode =  .enabled
    public static var sentimentAnalysis: SwitchMode =  .enabled
    public static var connectionIndicator: SwitchMode =  .disabled
    public static var messageInPrivate: SwitchMode =  .enabled
    public static var clearConversation: SwitchMode =  .enabled
    public static var replyInPrivate: SwitchMode =  .enabled
    public static var messageInformation: SwitchMode =  .enabled
    public static var viewProfile: SwitchMode =  .enabled
    public static var startConversation: SwitchMode =  .enabled
    public static var tabs: [Controller] = [.chats, .calls, .users , .groups, .settings]
    
    
    public static var openURL: ((URL) -> Void)?
    public static var applicationShared: UIApplication?
    
    public static var localizable: Localizable!
    public static var image: Images!
    public static var colors: Colors!
    
    public struct Localizable {
        public let txt_community_manager: String
        public let txt__community_manager: String
        public let no_messages_say_hi: String
        public let downloadAppPath: String
        public let system: String
        
        public init(txt_community_manager: String,
                    txt__community_manager: String,
                    no_messages_say_hi: String,
                    downloadAppPath: String,
                    system: String) {
            self.txt_community_manager = txt_community_manager
            self.txt__community_manager = txt__community_manager
            self.no_messages_say_hi = no_messages_say_hi
            self.downloadAppPath = downloadAppPath
            self.system = system
        }
    }
    
    public struct Images {
        public let bundle: Bundle
        public let send_message: String
        public let take_a_photo: String
        public let photo_and_video_library: String
        public let send_document: String
        public let edit_message: String
        public let delete_message: String
        public let reply_message: String
        public let forward_message: String
        public let share_message: String
        public let copy_message: String
        public let reply_privately: String
        
        public init(bundle: Bundle,
                    send_message: String,
                    take_a_photo: String,
                    photo_and_video_library: String,
                    send_document: String,
                    edit_message: String,
                    delete_message: String,
                    reply_message: String,
                    forward_message: String,
                    share_message: String,
                    copy_message: String,
                    reply_privately: String) {
            self.bundle = bundle
            self.send_message = send_message
            self.take_a_photo = take_a_photo
            self.photo_and_video_library = photo_and_video_library
            self.send_document = send_document
            self.edit_message = edit_message
            self.delete_message = delete_message
            self.reply_message = reply_message
            self.forward_message = forward_message
            self.share_message = share_message
            self.copy_message = copy_message
            self.reply_privately = reply_privately
        }
    }
    
    public struct Colors {
        public let darkPurple: UIColor
        
        public init(darkPurple: UIColor) {
            self.darkPurple = darkPurple
        }
    }
}

@objc public protocol CometChatCell {
    @objc optional var name: UILabel! { get }
    @objc optional var messageView: UIView! { get }
    @objc optional var avatar: CometChatAvatar! { get }
}

extension CometChatCell {
    public func setSafeUpStyle(isCurrentUser: Bool) {
        name?.font = UIFont.boldSystemFont(ofSize: 12)
        name?.textColor = UIColor(named: "grey")
        messageView?.backgroundColor = isCurrentUser ? UIKitSettings.primaryColor : UIColor(named: "bubbleGrey")
    }
    
    public func addCommunityManagerTitle() {
        let text = name??.text ?? ""
        
        if !text.hasSuffix(UIKitSettings.localizable.txt__community_manager) {
            name??.text = text + UIKitSettings.localizable.txt__community_manager
        }
    }
    
    public func removeCommunityManagerTitle() {
        let text = name??.text ?? ""
        
        if text.hasSuffix(UIKitSettings.localizable.txt__community_manager) {
            name??.text = text.replacingOccurrences(of: UIKitSettings.localizable.txt__community_manager, with: "")
        }
    }
}

// SafeUp Changes:
public extension Notification.Name {
    static let safeUpUserLoggedIn = NSNotification.Name("CometChatUserLoggedIn")
    static let safeUpConversationsDidLoad = NSNotification.Name("CometChatConversationsDidLoad")
    static let safeUpGroupMembersDidLoad = NSNotification.Name("CometChatGroupMembersDidLoad")
}

