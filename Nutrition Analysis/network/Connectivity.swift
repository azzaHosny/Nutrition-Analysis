//
//  Connectivity.swift
//  FoodCook
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
//        var components = URLComponents()
//        components.scheme = url?.scheme
//        components.host = url?.host
        reachabilityManager = Alamofire.NetworkReachabilityManager(host: "www.google.com")
    }
    
//    func startNetworkReachabilityObserver() {
//        reachabilityManager.startListening {status in
//            switch status {
//                case .notReachable:
//                    UIUtils.showNoInternetCollectionDialog(title: "", message: "no internet connection".localized, actions: [(actionTitle: "close".localized, action: {self.exiteApp()})])
//                case .unknown :
//                       UIUtils.showNoInternetCollectionDialog(title: "", message: "no internet connection".localized, actions: [(actionTitle: "close".localized, action: {self.exiteApp()})])
//                
//                case .reachable(.ethernetOrWiFi):
//                    UIUtils.dissmiss()
//                case .reachable(.cellular):
//                UIUtils.dissmiss()
//            }
//
//        }
//    }
//        
//    func exiteApp() {
//        UIUtils.dissmiss()
//        exit(0)
//
//    }
}
