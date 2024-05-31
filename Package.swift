// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlomniChat",
    defaultLocalization: "ru",
    platforms: [.iOS(.v15), .macCatalyst(.v15), .macOS(.v13), .tvOS(.v15), .watchOS(.v8)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .executable(name: "FlomniChat", targets: ["FlomniChat"]),
        .library(
            name: "FlomniChat",
            targets: ["FlomniChat"]),//
        
    ],
    targets: [
        .target(
            name: "FlomniChat", 
            path: "Framework-main")
    ]
   
)
