// swift-tools-version:4.0
/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import PackageDescription

let package = Package(
    name: "Kassandra",
    products: [
        .library(
            name: "Kassandra",
            targets: ["Kassandra"]),
        ],
    dependencies: [   
        .package(url: "https://github.com/IBM-Swift/BlueSSLService.git", .upToNextMinor(from: "0.12.67"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target defines a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Kassandra",
            dependencies: ["SSLService"],
            exclude: ["Kassandra.xcodeproj", "README.md"]),
        ]
)
