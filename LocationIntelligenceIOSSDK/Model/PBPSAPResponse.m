#import "PBPSAPResponse.h"

@implementation PBPSAPResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"fccId": @"fccId", @"type": @"type", @"count": @"count", @"agency": @"agency", @"phone": @"phone", @"county": @"county", @"coverage": @"coverage", @"contactPerson": @"contactPerson", @"siteDetails": @"siteDetails", @"mailingAddress": @"mailingAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fccId", @"type", @"count", @"agency", @"phone", @"county", @"coverage", @"contactPerson", @"siteDetails", @"mailingAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
