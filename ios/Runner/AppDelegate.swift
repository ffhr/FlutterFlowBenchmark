import UIKit
import Braintree

import Flutter
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyBvMXvnbE0BANO6bBRiULEGLyKVRMnSeuE")
    GeneratedPluginRegistrant.register(with: self)
    BTAppContextSwitcher.setReturnURLScheme("hr.ff.ffbenchmark.staging.braintree")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
