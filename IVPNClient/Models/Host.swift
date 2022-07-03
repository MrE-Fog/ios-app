//
//  Host.swift
//  IVPN iOS app
//  https://github.com/ivpn/ios-app
//
//  Created by Juraj Hilje on 2018-10-22.
//  Copyright (c) 2020 Privatus Limited.
//
//  This file is part of the IVPN iOS app.
//
//  The IVPN iOS app is free software: you can redistribute it and/or
//  modify it under the terms of the GNU General Public License as published by the Free
//  Software Foundation, either version 3 of the License, or (at your option) any later version.
//
//  The IVPN iOS app is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
//  or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
//  details.
//
//  You should have received a copy of the GNU General Public License
//  along with the IVPN iOS app. If not, see <https://www.gnu.org/licenses/>.
//

import Foundation

struct IPv6 {
    var localIP: String
}

struct Host {
    
    var host: String
    var hostName: String
    var publicKey: String
    var localIP: String
    var ipv6: IPv6?
    var multihopPort: Int
    var load: Float
    
    func localIPAddress() -> String {
        if let range = localIP.range(of: "/", options: .backwards, range: nil, locale: nil) {
            let ipString = localIP[..<range.lowerBound]
            return String(ipString)
        }
        
        return ""
    }
    
}
