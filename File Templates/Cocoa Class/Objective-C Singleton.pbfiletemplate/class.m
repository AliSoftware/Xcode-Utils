//
//  «FILENAME»
//  «PROJECTNAME»
//
//  Created by «FULLUSERNAME» on «DATE».
//  Copyright «YEAR» «ORGANIZATIONNAME». All rights reserved.
//

«OPTIONALHEADERIMPORTLINE»

@implementation «FILEBASENAMEASIDENTIFIER»

static «FILEBASENAMEASIDENTIFIER»* _sharedInstance = nil;

+ («FILEBASENAMEASIDENTIFIER»*)sharedInstance
{
    @synchronized(self) {
        if (_sharedInstance == nil) {
            [[[self alloc] init] autorelease]; // assignment not done here
			// "autorelease" is a noop for a Singleton, but is still useful to avoid a Static-Analyzer warning
        }
    }
    return _sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) {
        if (_sharedInstance == nil) {
            _sharedInstance = [super allocWithZone:zone];
            return _sharedInstance;  // assignment and return on first allocation
        }
    }
    return nil; //on subsequent allocation attempts return nil
}

- (id)copyWithZone:(NSZone *)zone { return self; }
- (id)retain { return self; }
- (unsigned)retainCount { return UINT_MAX; /* denotes an object that cannot be released */ }
- (void)release { /* do nothing */ }
- (id)autorelease { return self; }

@end

