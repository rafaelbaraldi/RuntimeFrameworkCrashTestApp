
rm -rf DynamicFrameworkSample.xcframework

xcodebuild \
-arch x86_64 \
-arch arm64 \
-workspace DynamicFrameworkSample.xcworkspace \
-scheme DynamicFrameworkSample \
-archivePath archivePathSimulator \
-derivedDataPath build_data/simulador \
-sdk iphonesimulator \
CODE_SIGN_IDENTITY=  \
CODE_SIGNING_REQUIRED=NO \
SUPPORTS_MACCATALYST=NO \
SKIP_INSTALL=NO \
only_active_arch=NO \
defines_module=YES \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES \
build \
archive

xcodebuild \
-arch arm64 \
-workspace DynamicFrameworkSample.xcworkspace \
-scheme DynamicFrameworkSample \
-archivePath archivePathDevice \
-derivedDataPath build_data/device \
-sdk iphoneos \
CODE_SIGN_IDENTITY=  \
CODE_SIGNING_REQUIRED=NO \
SUPPORTS_MACCATALYST=NO \
SKIP_INSTALL=NO \
only_active_arch=NO \
defines_module=YES \
BUILD_LIBRARIES_FOR_DISTRIBUTION=YES \
build \
archive

xcodebuild -create-xcframework \
-framework $(pwd)/archivePathSimulator.xcarchive/Products/Library/Frameworks/DynamicFrameworkSample.framework \
-framework $(pwd)/archivePathDevice.xcarchive/Products/Library/Frameworks/DynamicFrameworkSample.framework \
-output $(pwd)/DynamicFrameworkSample.xcframework

rm -rf archivePath* build_data