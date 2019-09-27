#import "PBCarrierRouteResponse.h"

@implementation PBCarrierRouteResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"matchedAddress": @"matchedAddress", @"code": @"code", @"state": @"state", @"countyFips": @"countyFips", @"postalTown": @"postalTown", @"postCode": @"postCode", @"routeDelivery": @"routeDelivery", @"boundary": @"boundary", @"boundaryRef": @"boundaryRef" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"matchedAddress", @"code", @"state", @"countyFips", @"postalTown", @"postCode", @"routeDelivery", @"boundary", @"boundaryRef"];
  return [optionalProperties containsObject:propertyName];
}

@end
