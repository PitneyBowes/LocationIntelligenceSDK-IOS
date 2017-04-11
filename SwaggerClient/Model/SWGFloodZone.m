#import "SWGFloodZone.h"

@implementation SWGFloodZone

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"code": @"code", @"areaType": @"areaType", @"riskLevel": @"riskLevel", @"primaryZone": @"primaryZone", @"baseFloodElevation": @"baseFloodElevation", @"additionalInfo": @"additionalInfo" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"code", @"areaType", @"riskLevel", @"primaryZone", @"baseFloodElevation", @"additionalInfo"];
  return [optionalProperties containsObject:propertyName];
}

@end
