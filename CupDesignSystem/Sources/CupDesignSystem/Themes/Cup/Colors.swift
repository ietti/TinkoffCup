import UIKit

public extension Theme {
    enum Colors {
        public enum Background {
            public static let white = UIColor(hex: "#FFFFFF")
            public static let accent = UIColor(hex: "#428BF9")
            public static let neutral1OnBase = UIColor(hex: "#F6F7F8")
            public static let neutral1Opaque = UIColor(hex: "#F6F7F8")
        }
        
        public enum Label {
            public static let primary = UIColor(hex: "#333333")
            public static let secondary = UIColor(hex: "#9299A2")
            public static let accent = UIColor(hex: "#428BF9")
        }
        
        
        public enum Button {
            public static let neutral1 = UIColor(hex: "#001024")
            public static let secondary = UIColor(hex: "#9299A2")
        }
    }
}
