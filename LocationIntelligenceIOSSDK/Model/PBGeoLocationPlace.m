#import "PBGeoLocationPlace.h"

@implementation PBGeoLocationPlace

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"continent": @"continent", @"country": @"country", @"region": @"region", @"state": @"state", @"city": @"city", @"postCode": @"postCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"continent", @"country", @"region", @"state", @"city", @"postCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
