//
//  SettingsItem.swift
//  spotify-a
//
//  Created by Javier Aponte on 23/06/23.
//

import Foundation

struct SettingsItem: Hashable {
    let title: String
    let child: [ItemChild]
}

struct ItemChild: Hashable {
    let title: String
    let text: String
    let haveToggle: Bool
}
