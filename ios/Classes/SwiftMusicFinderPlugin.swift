import Flutter
import UIKit
    
public class SwiftMusicFinderPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "music_finder", binaryMessenger: registrar.messenger())
    let instance = SwiftMusicFinderPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
      return
    case "play":
      result("iOS " + UIDevice.current.systemVersion)
      return
     case "pause":
       result("iOS " + UIDevice.current.systemVersion)
       return
     case "stop":
       result("iOS " + UIDevice.current.systemVersion)
       return
     case "seek":
       result("iOS " + UIDevice.current.systemVersion)
       return
     case "mute":
       result("iOS " + UIDevice.current.systemVersion)
       return
    default:
      result("notImplemented")
    }
  }
}
