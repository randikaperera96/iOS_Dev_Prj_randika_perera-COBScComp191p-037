#if os(OSX)
    typealias Image     = NSImage
    typealias ImageName = NSImage.Name
#elseif os(iOS)
    import UIKit

    typealias Image     = UIImage
    typealias ImageName = String
#endif

extension Image {
    static var assetsAppicon: Image { return Image(named: ImageName("AppIcon"))! }
    static var assetsSfGear1: Image { return Image(named: ImageName("SF_gear-1"))! }
    static var assetsSfHouse1: Image { return Image(named: ImageName("SF_house-1"))! }
    static var assetsSfPlusSquareOnSquareFill1: Image { return Image(named: ImageName("SF_plus_square_on_square_fill-1"))! }
}