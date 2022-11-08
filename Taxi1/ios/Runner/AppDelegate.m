#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "GoogleMaps/GoogleMaps.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GMSServices provideAPIKey:@"YOUR_GOOGLE_MAPS_KEYS"];
  [GeneratedPluginRegistrant registerWithRegistry:self];
  
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
