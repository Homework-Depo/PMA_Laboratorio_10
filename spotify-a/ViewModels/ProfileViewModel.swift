//
//  ProfileViewModel.swift
//  spotify-a
//
//  Created by Javier Aponte on 23/06/23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    
    var settingList: [SettingsItem] = [
        SettingsItem(title: "Data Server", child: [
            ItemChild(
                title: "Audio Quality",
                text: "Sets your audio quality to low (equivalent to 24kbit/s) and disables artist canvases.",
                haveToggle: true)
        ]),
        SettingsItem(
            title: "Video Podcasts", child: [
                ItemChild(title: "Download audio quality", text: "Save video podcasts as audio only.", haveToggle: true),
                ItemChild(title: "Stream audio only", text: "Play video podcasts as audio only when not on WiFi.", haveToggle: true)
            ]
        )
    ]
}
