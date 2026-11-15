
import SwiftUI

enum AppFonts {
    static func regular(_ size: CGFloat) -> Font {
        .custom("OpenSans-Regular", size: size)
    }

    static func medium(_ size: CGFloat) -> Font {
        .custom("OpenSans-Medium", size: size)
    }

    static func semiBold(_ size: CGFloat) -> Font {
        .custom("OpenSans-SemiBold", size: size)
    }

    static func bold(_ size: CGFloat) -> Font {
        .custom("OpenSans-Bold", size: size)
    }
}
