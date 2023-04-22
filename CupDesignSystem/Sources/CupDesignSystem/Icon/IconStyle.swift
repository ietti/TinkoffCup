import UIKit

public final class IconStyle {
    let backgroundColor: UIColor?
    let iconColor: UIColor?
    let icon: UIImage?
    let cornerRadius: CGFloat?
    
    init(
        backgroundColor: UIColor?,
        iconColor: UIColor?,
        icon: UIImage?,
        cornerRadius: CGFloat? = nil
    ) {
        self.backgroundColor = backgroundColor
        self.iconColor = iconColor
        self.icon = icon
        self.cornerRadius = cornerRadius
    }
}
