//
//  LoadingProtocol.swift
//  Indicator
//
//  Created by 杨雄凯 on 2023/3/23.
//

public protocol Activityable: UIView {
    
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

//public extension Activityable where Self: UIViewController {
//
//    func activityIndicatorViewOffsetY() -> CGFloat {
//
//        debugPrint("xxxxxxxx" + "\(self.view.safeAreaInsets)")
//
//        return 0 - view.safeAreaInsets.top
//    }
//
//    func startLoading() {
//        ActivityIndicator.start(view, offsetY: activityIndicatorViewOffsetY())
//    }
//
//    func stopLoading() {
//        ActivityIndicator.stop()
//    }
//}

// 默认所有UIView都遵守
extension UIView: Activityable {
    
    public func activityIndicatorViewOffsetY() -> CGFloat {
        
        debugPrint("xxxxxxxx" + "\(self.safeAreaInsets)")
        
        return 0 - self.safeAreaInsets.top
    }
    
    public func startLoading() {
        ActivityIndicator.start(self, offsetY: activityIndicatorViewOffsetY())
    }
    
    public func stopLoading() {
        ActivityIndicator.stop()
    }
}
