# RuntimeFrameworkCrashTestApp

This is an example app to show a possible problem found in Xcode 16 where an app crash in run/startup time because dyld can't find a symbol expected in a dynamic framework that was compiled with Xcode 15 or older which depends on another dynamic framework that is now compiled with Xcode 16 (this transitive framework dependency is done using SPM). 

As described in [this forum thread](https://forums.developer.apple.com/forums/thread/687259).

## Example

To run the example project, clone the repo, open and run the `RuntimeFrameworkCrashTestApp.xcodeproj` file from the root directory in an iOS device.

## More Info

- This example app (RuntimeFrameworkCrashTestApp) use Cocoapods to include a pre compiled Dynamic XCFramework.
- This framework (DynamicFrameworkSample) was build with iOS 12.0 target and it use SPM to link to it's own dependency (TransitiveDependency).
- The crash only happens when running in a real iOS device, not in simulator.
- The crash only happens when DynamicFrameworkSample is build for iOS 12 target or older, using iOS 13 or later it does not happen.
- The crash log is something linked to this:

`
dyld[1104]: Symbol not found: (__ZN5swift34swift50override_conformsToProtocolEPKNS_14TargetMetadataINS_9InProcessEEEPKNS_24TargetProtocolDescriptorIS1_EEPFPKNS_18TargetWitnessTableIS1_EES4_S8_E)
  Referenced from: '/private/var/containers/Bundle/Application/E4EA6BD2-C09D-4ADD-B284-8B51AFCC25F5/RuntimeFrameworkCrashTestApp.app/Frameworks/DynamicFrameworkSample.framework/DynamicFrameworkSample'
  Expected in: '/private/var/containers/Bundle/Application/E4EA6BD2-C09D-4ADD-B284-8B51AFCC25F5/RuntimeFrameworkCrashTestApp.app/Frameworks/DependencyAsPod.framework/DependencyAsPod'
`

## Author

rafaelbaraldi, rafael_baraldi_13@hotmail.com
