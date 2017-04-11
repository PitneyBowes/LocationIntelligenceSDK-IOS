#import "SWGTimezone.h"

@implementation SWGTimezone

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"country": @"country", @"tzValidFrom": @"tzValidFrom", @"tzValidUntill": @"tzValidUntill", @"dstRule": @"dstRule", @"dstValidFrom": @"dstValidFrom", @"dstValidUntill": @"dstValidUntill", @"dstStartDateFormat": @"dstStartDateFormat", @"dstEndDateFormat": @"dstEndDateFormat", @"dstStartDate": @"dstStartDate", @"dstStartTime": @"dstStartTime", @"dstEndTime": @"dstEndTime", @"dstEndDate": @"dstEndDate", @"timezoneName": @"timezoneName", @"utcOffset": @"utcOffset", @"dstOffset": @"dstOffset", @"timestamp": @"timestamp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"country", @"tzValidFrom", @"tzValidUntill", @"dstRule", @"dstValidFrom", @"dstValidUntill", @"dstStartDateFormat", @"dstEndDateFormat", @"dstStartDate", @"dstStartTime", @"dstEndTime", @"dstEndDate", @"timezoneName", @"utcOffset", @"dstOffset", @"timestamp"];
  return [optionalProperties containsObject:propertyName];
}

@end
