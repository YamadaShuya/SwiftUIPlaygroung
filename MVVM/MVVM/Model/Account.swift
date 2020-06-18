//
//  Account.swift
//  MVVM
//
//  Created by 山田　修也 on 2020/06/18.
//  Copyright © 2020 YamadaShuya. All rights reserved.
//

import Foundation

struct Account: Identifiable, Decodable {

    var id: Int
    var login: String
    var avatar_url: String
}
