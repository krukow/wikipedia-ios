#import <WMF/NSFileManager+WMFGroup.h>
#import "WMFQuoteMacros.h"

NSString *const WMFApplicationGroupIdentifier = @QUOTE(WMF_APP_GROUP_IDENTIFIER);

@implementation NSFileManager (WMFGroup)

- (nonnull NSURL *)wmf_containerURL {
    NSString* str = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [NSURL fileURLWithPath:str isDirectory:YES];
}

- (nonnull NSString *)wmf_containerPath {
    NSURL* url = [self wmf_containerURL];
    return [url path];
}

@end
