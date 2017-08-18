#import "PBTaxDistrictResponse.h"

@implementation PBTaxDistrictResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"confidence": @"confidence", @"jurisdiction": @"jurisdiction", @"numOfIpdsFound": @"numOfIpdsFound", @"ipds": @"ipds", @"matchedAddress": @"matchedAddress", @"census": @"census", @"latLongFields": @"latLongFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"confidence", @"jurisdiction", @"numOfIpdsFound", @"ipds", @"matchedAddress", @"census", @"latLongFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
