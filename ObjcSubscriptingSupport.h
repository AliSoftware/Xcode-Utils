//
//  ObjcSubscriptingSupport.h
//
//  Created by Olivier Halligon on 02/10/12.
//
//

#import <Foundation/Foundation.h>

#if __has_feature(objc_subscripting)
#if (defined(__MAC_OS_X_VERSION_MAX_ALLOWED) && __MAC_OS_X_VERSION_MAX_ALLOWED < 1070)     /* Define this on OSX only if prior to 10.7 */ \
||  (defined(__IPHONE_OS_VERSION_MAX_ALLOWED) && __IPHONE_OS_VERSION_MAX_ALLOWED < 60000) /* Define this on iOS only if prior to 6.0 */

@interface NSArray(ObjcLiterals)
-(id)objectAtIndexedSubscript:(NSUInteger)index;
@end
@interface NSMutableArray(ObjcLiterals)
-(void)setObject:(id)anObject atIndexedSubscript:(NSUInteger)index;
@end
@interface NSDictionary(ObjcLiterals)
-(id)objectForKeyedSubscript:(id)aKey;
@end
@interface NSMutableDictionary(ObjcLiterals)
-(void)setObject:(id)anObject forKeyedSubscript:(id<NSCopying>)aKey;
@end

#endif
#endif