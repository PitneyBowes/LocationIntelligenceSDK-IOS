#import "SWGGeocodeAddress.h"

@implementation SWGGeocodeAddress

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"mainAddressLine": @"mainAddressLine", @"addressLastLine": @"addressLastLine", @"placeName": @"placeName", @"areaName1": @"areaName1", @"areaName2": @"areaName2", @"areaName3": @"areaName3", @"areaName4": @"areaName4", @"postCode1": @"postCode1", @"postCode2": @"postCode2", @"country": @"country", @"addressNumber": @"addressNumber", @"streetName": @"streetName", @"unitType": @"unitType", @"unitValue": @"unitValue", @"customFields": @"customFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mainAddressLine", @"addressLastLine", @"placeName", @"areaName1", @"areaName2", @"areaName3", @"areaName4", @"postCode1", @"postCode2", @"country", @"addressNumber", @"streetName", @"unitType", @"unitValue", @"customFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
