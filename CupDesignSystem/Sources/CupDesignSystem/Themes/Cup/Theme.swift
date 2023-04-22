
public enum Theme {
    public enum TextStyles {
        public static let header = TextStyle(font: Fonts.headingM, color: Colors.Label.primary)
        public static let subheader = TextStyle(font: Fonts.bodyM, color: Colors.Label.secondary)
        public static let buttonHeader = TextStyle(font: Fonts.bodyM, color: Colors.Label.accent)
    }
    
    public enum IconStyles {
        public static let avatar = IconStyle(
            backgroundColor: Colors.Background.accent,
            iconColor: Colors.Background.white,
            icon: Icons.avatar
        )
    }
    
    public enum ButtonStyles {
        public static let `default` = ButtonStyle(
            normalColor: Colors.Button.neutral1.withAlphaComponent(0.03),
            hightlightedColor: Colors.Button.neutral1.withAlphaComponent(0.06),
            headerStyle: TextStyles.buttonHeader,
            cornerRadius: 12
        )
    }
    
    public enum BlockStyles {
        public static let `default` = BlockStyle(
            normalColor: Colors.Background.white,
            disabledColor: Colors.Background.neutral1OnBase,
            headerStyle: TextStyles.header,
            subheaderStyle: TextStyles.subheader,
            iconStyle: IconStyles.avatar,
            buttonStyle: ButtonStyles.default,
            cornerRadius: 24
        )
    }
}
