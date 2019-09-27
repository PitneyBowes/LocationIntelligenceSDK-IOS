#import "PBTaxRateAddress.h"

@implementation PBTaxRateAddress

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"mainAddressLine": @"mainAddressLine", @"placeName": @"placeName", @"areaName1": @"areaName1", @"areaName3": @"areaName3", @"postCode1": @"postCode1", @"country": @"country" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"mainAddressLine", @"placeName", @"areaName1", @"areaName3", @"postCode1", @"country"];
  return [optionalProperties containsObject:propertyName];
}

@end
