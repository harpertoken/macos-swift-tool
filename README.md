# macOS Kernel Tool (Swift)

Swift CLI for macOS system/kernel info via uname.

## Usage

```bash
swift run
```

## Example

```
System: Darwin, Release: 24.6.0, Version: Darwin Kernel Version 24.6.0...
```

## Requirements

Swift 5+, macOS

## Docker

```bash
docker build -t macos-swift-tool .
docker run macos-swift-tool
```

Note: Container runs on Linux, so output shows Linux kernel info, not macOS.

## License

MIT