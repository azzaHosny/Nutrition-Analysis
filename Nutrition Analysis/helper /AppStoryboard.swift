//  Nutrition Analysis
//  Created by azah on 6/25/21.
//  Copyright © 2020 azah. All rights reserved.
//
import Foundation
import UIKit

enum AppStoryboard: String {
	
	case main = "Main"

	var instance: UIStoryboard {
		return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
	}
	
	func getViewController<T: UIViewController>(viewControllerClass: T.Type) -> T {
    
		let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
		return instance.instantiateViewController(withIdentifier: storyboardID) as! T
	}
	
}

extension UIViewController {
	
	class var storyboardID: String {
		return "\(self)"
	}
}
