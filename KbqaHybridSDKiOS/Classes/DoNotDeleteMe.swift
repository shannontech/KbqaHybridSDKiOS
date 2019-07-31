/*
 
 这个文件用于解决建立的Swift库中没有源码文件而是framework静态库时，出现以下error：
 ```
 - ERROR | [iOS] xcodebuild: Returned an unsuccessful exit code. You can use `--verbose` for more information.
 - NOTE  | xcodebuild:  note: Using new build system
 - NOTE  | [iOS] xcodebuild:  note: Planning build
 - NOTE  | [iOS] xcodebuild:  note: Constructing build description
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftFoundation'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftMetal'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftDarwin'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftUIKit'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftCoreFoundation'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftObjectiveC'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftDispatch'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftCoreImage'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftQuartzCore'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftCoreGraphics'
 - NOTE  | xcodebuild:  ld: warning: Could not find auto-linked library 'swiftCore'
 - NOTE  | xcodebuild:  clang: error: linker command failed with exit code 1 (use -v to see invocation)
```
 
 参考https://github.com/CocoaPods/CocoaPods/issues/8649
 似乎又是xcode10.2带来的变化。。瞎jb翻译+乱蒙的原因是不会默认导入standard Swift dylibs这些库，
 只有包含swift文件时才会引入，所以我们放一个没用的空swift文件在这并在.podspec中添加源码文件：s.source_files = 'KbqaHybridSDKiOS/Classes/**/*'

 目前版本：
 Xcode:10.2.1
 Swift:5.0.1
 Pods:1.7.4
*/
