#import "MusicFinderPlugin.h"
#if __has_include(<flute_music_player/flute_music_player-Swift.h>)
#import <flute_music_player/flute_music_player-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flute_music_player-Swift.h"
#endif

@implementation MusicFinderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMusicFinderPlugin registerWithRegistrar:registrar];
}
@end
