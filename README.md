# Template Swift Project for Coding Dojo

A small [Swift Package Manager](https://www.swift.org/documentation/package-manager/) project prepared for a Game of Life coding dojo.

## Requirements

- macOS
- Xcode 15 or newer, or Swift 5.9 or newer

Xcode includes Swift and Swift Package Manager. If Xcode is not installed yet, install it from the App Store and run it once to accept the licence.

## Get started

Clone the repository and run the test suite:

```sh
git clone https://github.com/Code-Retreat-Russia/coding-dojo-swift.git
cd coding-dojo-swift
swift test
```

No third-party dependencies are required.

To work in Xcode, open the package directory:

```sh
xed .
```

> `xed` is installed with Xcode. You can also open `Package.swift` directly from Finder.

## Project structure

```
Sources/GameOfLife/       Production code
Tests/GameOfLifeTests/    XCTest test suite
```

The project contains one deliberately small, passing example: an empty world stays empty. It confirms that the test runner works before the dojo starts. From there, evolve the code and tests in small TDD steps.

## Useful commands

```sh
swift test                # run tests
swift test --filter Name  # run a single test or test class
swift package clean       # remove build artifacts
```
