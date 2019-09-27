#import "PBFieldsMatching.h"

@implementation PBFieldsMatching

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.matchOnAddressNumber = @0;
    self.matchOnPostCode1 = @0;
    self.matchOnPostCode2 = @0;
    self.matchOnAreaName1 = @0;
    self.matchOnAreaName2 = @0;
    self.matchOnAreaName3 = @0;
    self.matchOnAreaName4 = @0;
    self.matchOnAllStreetFields = @0;
    self.matchOnStreetName = @0;
    self.matchOnStreetType = @0;
    self.matchOnStreetDirectional = @0;
    self.matchOnPlaceName = @0;
    self.matchOnInputFields = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"matchOnAddressNumber": @"matchOnAddressNumber", @"matchOnPostCode1": @"matchOnPostCode1", @"matchOnPostCode2": @"matchOnPostCode2", @"matchOnAreaName1": @"matchOnAreaName1", @"matchOnAreaName2": @"matchOnAreaName2", @"matchOnAreaName3": @"matchOnAreaName3", @"matchOnAreaName4": @"matchOnAreaName4", @"matchOnAllStreetFields": @"matchOnAllStreetFields", @"matchOnStreetName": @"matchOnStreetName", @"matchOnStreetType": @"matchOnStreetType", @"matchOnStreetDirectional": @"matchOnStreetDirectional", @"matchOnPlaceName": @"matchOnPlaceName", @"matchOnInputFields": @"matchOnInputFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"matchOnAddressNumber", @"matchOnPostCode1", @"matchOnPostCode2", @"matchOnAreaName1", @"matchOnAreaName2", @"matchOnAreaName3", @"matchOnAreaName4", @"matchOnAllStreetFields", @"matchOnStreetName", @"matchOnStreetType", @"matchOnStreetDirectional", @"matchOnPlaceName", @"matchOnInputFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
