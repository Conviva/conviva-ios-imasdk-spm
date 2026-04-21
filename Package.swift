// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ConvivaIMASDK",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ConvivaIMASDK",
            targets: ["ConvivaIMASDK", "ConvivaSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "ConvivaIMASDK",
            url: "https://github.com/Conviva/conviva-ios-imasdk/releases/download/4.0.9/ConvivaIMASDK.xcframework.zip",
            checksum: "6f4f0d313e4c1353358cbee0a4c4a9033f4f10cf94113f31203e57aa586c1cea"),
        
        .binaryTarget(
                name: "ConvivaSDK",
                url: "https://github.com/Conviva/ConvivaSDK/releases/download/4.3.1/ConvivaSDK.xcframework.zip",
                checksum: "0b6c61813c111a42243c85d9e70bf2e17ab68b9b2d0ed533d808adb75b810d88")
     ]
)
