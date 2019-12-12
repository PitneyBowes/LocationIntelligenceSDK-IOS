#import "PBPoi.h"

@implementation PBPoi

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"brandName": @"brandName", @"tradeName": @"tradeName", @"franchiseName": @"franchiseName", @"open24Hours": @"open24Hours", @"contactDetails": @"contactDetails", @"poiClassification": @"poiClassification", @"employeeCount": @"employeeCount", @"organizationStatusCode": @"organizationStatusCode", @"organizationStatusCodeDescription": @"organizationStatusCodeDescription", @"parentBusiness": @"parentBusiness", @"tickerSymbol": @"tickerSymbol", @"exchangeName": @"exchangeName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"brandName", @"tradeName", @"franchiseName", @"open24Hours", @"contactDetails", @"poiClassification", @"employeeCount", @"organizationStatusCode", @"organizationStatusCodeDescription", @"parentBusiness", @"tickerSymbol", @"exchangeName"];
  return [optionalProperties containsObject:propertyName];
}

@end
