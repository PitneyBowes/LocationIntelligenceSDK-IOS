#import "PBGeocodeCustomPreferences.h"

@implementation PBGeocodeCustomPreferences

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.fALLBACKTOWORLD = @1;
    self.uSEADDRESSPOINTINTERPOLATION = @1;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"FALLBACK_TO_WORLD": @"fALLBACKTOWORLD", @"USE_ADDRESS_POINT_INTERPOLATION": @"uSEADDRESSPOINTINTERPOLATION", @"USE_CENTERLINE_OFFSET": @"uSECENTERLINEOFFSET", @"CENTERLINE_OFFSET": @"cENTERLINEOFFSET" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fALLBACKTOWORLD", @"uSEADDRESSPOINTINTERPOLATION", @"uSECENTERLINEOFFSET", @"cENTERLINEOFFSET"];
  return [optionalProperties containsObject:propertyName];
}

@end
