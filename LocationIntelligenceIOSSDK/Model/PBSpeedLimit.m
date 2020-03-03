#import "PBSpeedLimit.h"

@implementation PBSpeedLimit

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"maxSpeed": @"maxSpeed", @"speedUnit": @"speedUnit", @"speedVerification": @"speedVerification", @"amPeakAvgSpeed": @"amPeakAvgSpeed", @"pmPeakAvgSpeed": @"pmPeakAvgSpeed", @"offPeakAvgSpeed": @"offPeakAvgSpeed", @"nightAvgSpeed": @"nightAvgSpeed", @"weekAvgSpeed": @"weekAvgSpeed", @"road": @"road" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"maxSpeed", @"speedUnit", @"speedVerification", @"amPeakAvgSpeed", @"pmPeakAvgSpeed", @"offPeakAvgSpeed", @"nightAvgSpeed", @"weekAvgSpeed", @"road"];
  return [optionalProperties containsObject:propertyName];
}

@end
