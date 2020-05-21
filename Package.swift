// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Ingolstadt",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Ingolstadt",
            targets: ["Ingolstadt"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/OpenParkingApp/Datasource.git", from: "0.8.0"),
        .package(url: "https://github.com/scinfu/SwiftSoup", from: "2.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Ingolstadt",
            dependencies: ["Datasource", "SwiftSoup"]),
        .testTarget(
            name: "IngolstadtTests",
            dependencies: [
                .product(name: "DatasourceValidation", package: "Datasource"),
                "Ingolstadt"
            ]),
    ]
)
