#import "PBAddress.h"

@implementation PBAddress

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"displayName": @"displayName", @"streetSide": @"streetSide", @"businessName": @"businessName", @"addressLine1": @"addressLine1", @"addressLine2": @"addressLine2", @"addressLine3": @"addressLine3", @"city": @"city", @"stateProvince": @"stateProvince", @"county": @"county", @"postalCode": @"postalCode", @"latitude": @"latitude", @"longitude": @"longitude", @"status": @"status", @"urbanizationName": @"urbanizationName", @"formattedAddress": @"formattedAddress", @"mainAddressLine": @"mainAddressLine", @"addressLastLine": @"addressLastLine", @"placeName": @"placeName", @"areaName1": @"areaName1", @"areaName2": @"areaName2", @"areaName3": @"areaName3", @"areaName4": @"areaName4", @"postCode": @"postCode", @"postCodeExt": @"postCodeExt", @"country": @"country", @"addressNumber": @"addressNumber", @"streetName": @"streetName", @"unitType": @"unitType", @"unitValue": @"unitValue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"displayName", @"streetSide", @"businessName", @"addressLine1", @"addressLine2", @"addressLine3", @"city", @"stateProvince", @"county", @"postalCode", @"latitude", @"longitude", @"status", @"urbanizationName", @"formattedAddress", @"mainAddressLine", @"addressLastLine", @"placeName", @"areaName1", @"areaName2", @"areaName3", @"areaName4", @"postCode", @"postCodeExt", @"country", @"addressNumber", @"streetName", @"unitType", @"unitValue"];
  return [optionalProperties containsObject:propertyName];
}

@end
