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
            url: "https://github.com/Conviva/conviva-ios-imasdk/raw/4.0.2/Framework/ConvivaIMASDK.xcframework.zip",
            checksum: "2394326a7ad5deed93a35114e514305b2535f290fb18f5be6aab620f8d33b8a3"),
        
        .binaryTarget(
            name: "ConvivaSDK",
            url: "https://github.com/Conviva/ConvivaSDK/raw/4.0.26/Framework/ConvivaSDK.xcframework.zip",
            checksum: "5a4c385fc52f2f4c6a02c6c345af81aa6ff836750080f856d702b7f3834c9a15"),

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
