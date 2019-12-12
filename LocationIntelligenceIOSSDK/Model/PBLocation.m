#import "PBLocation.h"

@implementation PBLocation

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"label": @"label", @"city": @"city", @"region": @"region", @"regionCode": @"regionCode", @"country": @"country", @"countryCode": @"countryCode", @"formatted": @"formatted" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"label", @"city", @"region", @"regionCode", @"country", @"countryCode", @"formatted"];
  return [optionalProperties containsObject:propertyName];
}

@end
