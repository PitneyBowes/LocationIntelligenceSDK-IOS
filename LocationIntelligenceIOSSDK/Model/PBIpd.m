#import "PBIpd.h"

@implementation PBIpd

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"districtName": @"districtName", @"districtType": @"districtType", @"taxCodeDescription": @"taxCodeDescription", @"effectiveDate": @"effectiveDate", @"expirationDate": @"expirationDate", @"boundaryBuffer": @"boundaryBuffer", @"rates": @"rates" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"districtName", @"districtType", @"taxCodeDescription", @"effectiveDate", @"expirationDate", @"boundaryBuffer", @"rates"];
  return [optionalProperties containsObject:propertyName];
}

@end
