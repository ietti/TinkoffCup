import UIKit

public extension UILabel {
    convenience init(style: TextStyle) {
        self.init(frame: .zero)
        textColor = style.color
        font = style.font
    }
}
