#import "PBRateCenterResponse.h"

@implementation PBRateCenterResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"alternateName": @"alternateName", @"areaName1": @"areaName1", @"geometry": @"geometry", @"areaCodeInfoList": @"areaCodeInfoList", @"matchedAddress": @"matchedAddress", @"match": @"match", @"county": @"county", @"count": @"count", @"product_code": @"productCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"alternateName", @"areaName1", @"geometry", @"areaCodeInfoList", @"matchedAddress", @"match", @"county", @"count", @"productCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
