#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "fire-power" asset catalog image resource.
static NSString * const ACImageNameFirePower AC_SWIFT_PRIVATE = @"fire-power";

/// The "ice-power" asset catalog image resource.
static NSString * const ACImageNameIcePower AC_SWIFT_PRIVATE = @"ice-power";

/// The "ice-sloth" asset catalog image resource.
static NSString * const ACImageNameIceSloth AC_SWIFT_PRIVATE = @"ice-sloth";

/// The "lightning-power" asset catalog image resource.
static NSString * const ACImageNameLightningPower AC_SWIFT_PRIVATE = @"lightning-power";

/// The "wind-power" asset catalog image resource.
static NSString * const ACImageNameWindPower AC_SWIFT_PRIVATE = @"wind-power";

#undef AC_SWIFT_PRIVATE