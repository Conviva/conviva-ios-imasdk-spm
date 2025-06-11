// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaIMASDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaIMASDK",
            targets: ["ConvivaIMASDKTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaIMASDK",
            url: "https://github.com/Conviva/conviva-ios-imasdk/raw/4.0.8/Framework/ConvivaIMASDK.xcframework.zip",
            checksum: "9ebec1173c1dac05a81dcdb0a29e635f586917913be3a98ca41026227b6b8cbd"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.2.3/Framework/ConvivaSDK.xcframework.zip",
            checksum: "f544a223a8178e92c8517fd51805139e70725929a91785465da0f98e9201e384"),

        .target(
              name: "ConvivaIMASDKTarget",
              dependencies: [
                .target(name: "ConvivaSDK"),
                .target(name: "ConvivaIMASDK")
              ],
              path: "PlatformExcludes"
            )
     ]
)
