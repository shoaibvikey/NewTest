//
//  Settings.swift
//  BGClan
//
//  Created by Batch-2 on 26/05/24.
//

import Foundation
import UIKit

var Settings:[String]=["Edit Account","FaQs","About Us","Log Out"]


struct SettingOption{
    var title:String
    var icon:String
    var type:SettingsType
}
enum SettingsType{
    case profile,basic,switchType
}

let settingsOptions: [[SettingOption]] = [
       
       [SettingOption(title: "Edit Profile", icon: "editIcon", type: .basic),
        SettingOption(title: "Change Password", icon: "passwordIcon", type: .basic),
        SettingOption(title: "Push Notifications", icon: "notificationIcon", type: .switchType)],
       [SettingOption(title: "Privacy & Policies", icon: "privacyIcon", type: .basic),
        SettingOption(title: "Terms & Conditions", icon: "termsIcon", type: .basic),
        SettingOption(title: "FAQ's", icon: "faqIcon", type: .basic),
        SettingOption(title: "About Us", icon: "aboutIcon", type: .basic)],
       [SettingOption(title: "Sign Out", icon: "", type: .basic)]
   ]
