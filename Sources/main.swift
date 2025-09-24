// macOS Kernel Tool in Swift
// Get system and kernel info

import Darwin

func getSystemInfo() -> String {
    var systemInfo = utsname()
    uname(&systemInfo)
    
    let sysname = withUnsafePointer(to: &systemInfo.sysname) {
        $0.withMemoryRebound(to: CChar.self, capacity: Int(_SYS_NAMELEN)) {
            String(cString: $0)
        }
    }
    
    let release = withUnsafePointer(to: &systemInfo.release) {
        $0.withMemoryRebound(to: CChar.self, capacity: Int(_SYS_NAMELEN)) {
            String(cString: $0)
        }
    }
    
    let version = withUnsafePointer(to: &systemInfo.version) {
        $0.withMemoryRebound(to: CChar.self, capacity: Int(_SYS_NAMELEN)) {
            String(cString: $0)
        }
    }
    
    return "System: \(sysname), Release: \(release), Version: \(version)"
}

print("macOS Kernel Tool - System Info")
print(getSystemInfo())
