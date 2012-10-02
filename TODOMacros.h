//
// TODOMacros.h
//
//  Created by Olivier Halligon on 02/10/12.
//
//

#define GENERATE_PRAGMA(x) _Pragma(#x)

/* Usage: Use TODO("some message") / FIXME("some message") / NOTE("some message") to generate appropriate warnings */
#define TODO(x) GENERATE_PRAGMA(message("[TODO] " x))
#define FIXME(x) GENERATE_PRAGMA(message("[FIXME] " x))
#define NOTE(x) GENERATE_PRAGMA(message("[NOTE] " x))

/* Usage example:
 *     view.frame = CGRectMake(0, 0, MAGIC_NUMBER(77), MAGIC_NUMBER(90));
 *
 * It will warn you that you should replace values 77 and 90 with constants later, because magic numbers are bad.
 */
#define MAGIC_NUMBER(x) (({ FIXME("Replace magic number " #x " with constant") }), (x))

/* Usage example:
 *     NOT_IMPLEMENTED("This should show the details in a separate screen")
 *
 * Call this in some IBAction that you will implement later, to generate a warning
 * at compile time AND display an alert at runtime if the user trigger the IBAction
 */
#define NOT_IMPLEMENTED(warningMessage) \
        [[[[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%s",__PRETTY_FUNCTION__] \
        message:[NSString stringWithFormat:@"%s",warningMessage] \
        delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] autorelease] show]; \
        TODO("Implement this - " warningMessage)


/* Usage example:
 *     #if TARGET_IPHONE_SIMULATOR
 *     // Use some private API only in simulator to test my app memory mgmt, but _performMemoryWarning
 *     // is a private method so the selector is undeclared so we want to disable the warning
 *     DISABLE_WARNING(undeclared-selector,{
 *       [[UIApplication sharedApplication] performSelector:@selector(_performMemoryWarning)];
 *     })
 *     #endif
 */
#define DISABLE_WARNING(warning,code) \
  GENERATE_PRAGMA(clang diagnostic push) \
  GENERATE_PRAGMA(clang diagnostic ignored "-W" #warning) \
  code \
  GENERATE_PRAGMA(clang diagnostic pop)
