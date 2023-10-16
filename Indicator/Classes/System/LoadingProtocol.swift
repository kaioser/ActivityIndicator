//
//  LoadingProtocol.swift
//  Indicator
//
//  Created by 杨雄凯 on 2023/3/23.
//

public protocol Activityable {
    
    func startLoading()
    
    func stopLoading()
    
    /// 指示器的中心点纵向偏移量
    /// - Returns: 偏移值
    func activityIndicatorViewOffsetY() -> CGFloat
}

public extension Activityable {
    
    static func stopLoading() {
        ActivityIndicator.stop()
    }
}

public extension Activityable where Self: UIViewController {
    
    func activityIndicatorViewOffsetY() -> CGFloat {
        0
    }
    
    func startLoading() {
        ActivityIndicator.start(view, offsetY: activityIndicatorViewOffsetY())
    }
    
    func stopLoading() {
        ActivityIndicator.stop()
    }
}

// 默认所有UIView都遵守
extension UIView: Activityable {
    
    public func activityIndicatorViewOffsetY() -> CGFloat {
        0
    }
    
    public func startLoading() {
        ActivityIndicator.start(self, offsetY: activityIndicatorViewOffsetY())
    }
    
    public func stopLoading() {
        ActivityIndicator.stop()
    }
}
