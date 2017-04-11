#import "SWGFireStation.h"

@implementation SWGFireStation

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"numWithinDepartment": @"numWithinDepartment", @"locationReference": @"locationReference", @"travelDistance": @"travelDistance", @"travelTime": @"travelTime", @"contactDetails": @"contactDetails", @"fireDepartment": @"fireDepartment", @"geometry": @"geometry" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"numWithinDepartment", @"locationReference", @"travelDistance", @"travelTime", @"contactDetails", @"fireDepartment", @"geometry"];
  return [optionalProperties containsObject:propertyName];
}

@end
