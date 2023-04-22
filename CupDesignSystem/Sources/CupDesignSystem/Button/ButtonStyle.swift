import UIKit

public final class ButtonStyle {
    let normalColor: UIColor?
    let hightlightedColor: UIColor?
    let headerStyle: TextStyle
    let cornerRadius: CGFloat?
    
    init(normalColor: UIColor?,
         hightlightedColor: UIColor?,
         headerStyle: TextStyle,
         cornerRadius: CGFloat?
    ) {
        self.normalColor = normalColor
        self.hightlightedColor = hightlightedColor
        self.headerStyle = headerStyle
        self.cornerRadius = cornerRadius
    }
}
