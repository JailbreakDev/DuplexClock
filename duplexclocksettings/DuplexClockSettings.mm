#import <Preferences/Preferences.h>

@interface DuplexClockSettingsListController: PSListController {
}
@end

@implementation DuplexClockSettingsListController

-(NSArray *)timeZones {
	return [NSTimeZone knownTimeZoneNames];
}

- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"DuplexClockSettings" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
