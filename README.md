# Problems and Solutions

Problems and Solutions is a collection of my Swift solutions for the problems given in *Cracking the Coding Interview*.

## Prerequisites 
- Xcode command line tools with Swift 6 toolchain.

## Running Tests

All tests use the [Swift Testing](https://github.com/apple/swift-testing) framework, which requires the Swift 6 toolchain.

I was unable to get `swift test` to work with Swift Testing.

To run tests for `IsUnique.swift` on an Apple Silicon Mac, use the following command:

```bash
xcodebuild test -scheme IsUnique -destination 'platform=macOS,arch=arm64'
```

## Acknowledgements
- <https://www.swift.org/getting-started/cli-swiftpm>
- <https://github.com/apple/swift-testing>
- <https://www.crackingthecodinginterview.com>