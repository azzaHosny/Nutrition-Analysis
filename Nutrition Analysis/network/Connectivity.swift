//
//  Connectivity.swift
//
//  Created by azah on 1/7/20.
//  Copyright © 2020 azah. All rights reserved.
//

import Foundation
import Alamofire

class Connectivity {
    
    static let shared = Connectivity()
    
    let reachabilityManager: Alamofire.NetworkReachabilityManager!
    
    public class func isConnectedToInternet() -> Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
    
    init() {
        reachabilityManager = Alamofire.NetworkReachabilityManager(host: "www.google.com")
    }
}
