import UIKit

public extension UIImageView {
    convenience init(style: IconStyle) {
        self.init(image: style.icon)
        tintColor = style.iconColor
        backgroundColor = style.backgroundColor
        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
        }
    }
}
