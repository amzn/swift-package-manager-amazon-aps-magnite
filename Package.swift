// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AmazonPublisherServicesMagniteAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AmazonPublisherServicesMagniteAdapter", targets: ["APSMagniteAdapterTarget"])
    ],
    dependencies: [
        .package(url: "https://github.com/amzn/swift-package-manager-amazon-aps.git", from: "5.7.0"),
        .package(url: "https://github.com/MagniteEngineering/swift-package-manager.git", from: "1.0.6")
    ],
    targets: [
        .target(
            name: "APSMagniteAdapterTarget",
            dependencies: [
                "APSiOSMagniteAdapter",
                .product(name: "AmazonPublisherServicesSDK", package: "swift-package-manager-amazon-aps"),
                .product(name: "MagniteSDK", package: "swift-package-manager")
            ],
            path: "Sources/APSMagniteAdapterTarget"
        ),
        .binaryTarget(
            name: "APSiOSMagniteAdapter",
            url: "https://d14jk8f50gmy3e.cloudfront.net/iOS_APS_Magnite_Adapter_SPM/APSMagniteAdapter-1.0.0.zip",
            checksum: "893e60123ce39b73f61fa467a5e72507406779dde3df766acbcefc8f864536a9"
        )
    ]
)
