xcrun simctl uninstall booted com.mycom.mytest2
xcodebuild build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -arch x86_64 -sdk iphonesimulator15.5 -target mytest2
xcrun simctl install booted build/Release-iphonesimulator/mytest2.app
xcrun simctl launch booted com.mycom.mytest2
