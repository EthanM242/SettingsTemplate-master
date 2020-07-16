//
//  SettingsSection.swift
//  SettingsTemplate
//
//  Created by Ethan Mui on 7/7/20.
//  Copyright © 2020 Stephan Dowless. All rights reserved.
//


protocol SectionType: CustomStringConvertible {
    var conatainSwitch: Bool {get}
}



enum SettingsSection: Int, CaseIterable, CustomStringConvertible {
    case social
    case communication
    
    var description: String {
        switch self {
        case .social: return "Social"
        case .communication : return "Communications"
        }
    }
}

enum SocialOptions: Int, CaseIterable, SectionType {
    case editProfile
    case logout
    
    var conatainSwitch: Bool{
        return false
    }
    
    
    var description: String {
           switch self {
           case .editProfile: return "Edit Profile"
           case .logout: return "Log Out"
           }
       }
}

enum CommunicationsOptions: Int, CaseIterable, SectionType {
    case notifications
    case email
    case reportCrashes
    
    var conatainSwitch: Bool {
        switch self {
        case.notifications: return true
        case.email: return true
        case.reportCrashes: return true
        }
    }
    
    var description: String {
           switch self {
           case .notifications: return "Notifications"
           case .email : return "Email"
           case .reportCrashes : return "Report Crashes"
           }
       }
}



