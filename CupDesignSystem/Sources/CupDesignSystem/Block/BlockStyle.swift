import UIKit

public final class BlockStyle {
    let normalColor: UIColor?
    let disabledColor: UIColor?
    let headerStyle: TextStyle
    let subheaderStyle: TextStyle
    let iconStyle: IconStyle
    let buttonStyle: ButtonStyle
    let cornerRadius: CGFloat?
    
    init(
        normalColor: UIColor?,
        disabledColor: UIColor?,
        headerStyle: TextStyle,
        subheaderStyle: TextStyle,
        iconStyle: IconStyle,
        buttonStyle: ButtonStyle,
        cornerRadius: CGFloat?
    ) {
        self.normalColor = normalColor
        self.disabledColor = disabledColor
        self.headerStyle = headerStyle
        self.subheaderStyle = subheaderStyle
        self.iconStyle = iconStyle
        self.buttonStyle = buttonStyle
        self.cornerRadius = cornerRadius
    }
}
