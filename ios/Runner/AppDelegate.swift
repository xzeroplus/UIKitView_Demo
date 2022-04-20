import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      
    GeneratedPluginRegistrant.register(with: self)
      let testplugin = registrar(forPlugin: "TestPlugin")
      testplugin?.register(TestPlatformFactory(), withId: "plugin.xraph.com/unity_view")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
