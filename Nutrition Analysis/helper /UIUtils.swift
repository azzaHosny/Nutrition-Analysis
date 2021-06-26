//
//  UIUtils.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import UIKit
class UIUtils{
    class func showLoadinIndicator(viewController: UIViewController) {
        let indicator = LoadingIndicator(text: "")
        if viewController.view.subviews.first(where: {$0 is UIVisualEffectView}) == nil {
            addParentView(viewController: viewController)
            viewController.view.addSubview(indicator)
        }
    }

    class func removeLoadingIndicator(viewController: UIViewController) {
        if let indicator  = viewController.view.subviews.first(where: {$0 is UIVisualEffectView}) , let blockView = viewController.view.subviews.first(where: {$0.tag == 2}){
            blockView.removeFromSuperview()
            indicator.removeFromSuperview()
        } else {
            print("fail to delete")
        }
    }
    class func addParentView(viewController: UIViewController) {
        let customView = UIView()
        customView.tag = 2
        viewController.view.addSubview(customView)
        customView.anchor(top: viewController.view.topAnchor, leading: viewController.view.leadingAnchor,
                        bottom: viewController.view.bottomAnchor, trailing: viewController.view.trailingAnchor,
                         padding: .init(top: 0, left: 0, bottom: 0, right: 0),
                         size: customView.frame.size)
        customView.backgroundColor = .clear
        customView.isUserInteractionEnabled = true
    }
    
 
}
class GeneralUtils {
    public class func readPropertyList(urlType: String) -> String {
        
        var format = PropertyListSerialization.PropertyListFormat.xml
        var plistData: [String: AnyObject] = [:]
        
        let plistPath: String? = Bundle.main.path(forResource: "urlsList", ofType: "plist")! //the path of the data
        let plistXML = FileManager.default.contents(atPath: plistPath!)! //the data in XML format
        do {
            plistData = try PropertyListSerialization.propertyList(from: plistXML,
                                                                   options: .mutableContainersAndLeaves,
                                                                   format: &format) as! [String: AnyObject]
            let completePath = "\(plistData["baseUrl"]!)/\(plistData[urlType] as! String)"
            print(completePath)
            return completePath
          
            
        } catch { // error condition
            print("Error reading plist")
            return ""
        }
    }
    
}
extension UIView {
        
    func anchorSize(to view: UIView) {
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?,
                trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }

        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
}
