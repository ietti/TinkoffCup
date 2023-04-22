import UIKit

public extension UIButton {
    convenience init(style: ButtonStyle) {
        self.init(frame: .zero)
        backgroundColor = style.normalColor
        setTitleColor(style.headerStyle.color, for: .normal)
        titleLabel?.font = style.headerStyle.font
        if let cornerRadius = style.cornerRadius {
            layer.cornerRadius = cornerRadius
        }
    }
}

