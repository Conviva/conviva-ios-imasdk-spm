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
            url: "https://github.com/Conviva/conviva-ios-imasdk/raw/4.0.7/Framework/ConvivaIMASDK.xcframework.zip",
            checksum: "a90e6c006358f79d8ada3187305cdf590baba39ca0194023f480f83ddb8efd14"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.43/Framework/ConvivaSDK.xcframework.zip",
            checksum: "a62100f18feaacb6ea6bbf99d9a50ecf87ed60d605de304bce743d13e2e0cbe0"),

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
