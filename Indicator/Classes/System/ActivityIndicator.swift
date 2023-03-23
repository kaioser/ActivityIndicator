//
//  ActivityIndicator.swift
//  Indicator
//
//  Created by 杨雄凯 on 2023/3/23.
//

import UIKit

class ActivityIndicator {
    
    static private let indicator = UIActivityIndicatorView(style: .medium)
    
    static var isLoading: Bool { indicator.isAnimating }
    
    static func start(_ view: UIView, offsetY: CGFloat) {
        if indicator.superview == nil {
            view.addSubview(indicator)
            indicator.center = CGPoint(x: view.bounds.size.width * 0.5, y: view.bounds.size.height * 0.5 - offsetY)
        }
        
        indicator.startAnimating()
    }
    
    static func stop() {
        indicator.stopAnimating()

        if indicator.superview != nil {
            indicator.removeFromSuperview()
        }
    }
}
