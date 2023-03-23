//
//  LoadingProtocol.swift
//  Indicator
//
//  Created by 杨雄凯 on 2023/3/23.
//

public protocol Activityable {
    func startLoading()
    func stopLoading()
    
    /// y左边上移
    var indicatorOffsetY: CGFloat { get }
}

extension Activityable {
    public var indicatorOffsetY: CGFloat { 0 }
}

public extension Activityable where Self: UIViewController {
    func startLoading() {
        ActivityIndicator.start(view, offsetY: indicatorOffsetY)
    }
    
    func stopLoading() {
        ActivityIndicator.stop()
    }
}

// 默认所有UIView都遵守了此协议，可以直接用
extension UIView: Activityable {
    
    public func startLoading() {
        ActivityIndicator.start(self, offsetY: indicatorOffsetY)
    }
    
    public func stopLoading() {
        ActivityIndicator.stop()
    }
}
