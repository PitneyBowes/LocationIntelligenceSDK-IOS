#import "PBTravelCostMatrixResponseMatrix.h"

@implementation PBTravelCostMatrixResponseMatrix

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"distance": @"distance", @"distanceUnit": @"distanceUnit", @"endPoint": @"endPoint", @"startPoint": @"startPoint", @"time": @"time", @"timeUnit": @"timeUnit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"distance", @"distanceUnit", @"endPoint", @"startPoint", @"time", @"timeUnit"];
  return [optionalProperties containsObject:propertyName];
}

@end
