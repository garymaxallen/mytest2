// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

import PackageDescription
let packageName = "mytest2" // <-- Change this to yours
let package = Package(
  name: "mytest2",
  defaultLocalization: "en",
  platforms: [.iOS("15.0")],
  products: [
    .library(name: packageName, targets: [packageName])
  ],
  targets: [
    .target(
      name: packageName,
      path: packageName
    )
  ]
)