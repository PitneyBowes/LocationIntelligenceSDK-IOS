#import "PBAreaCodeInfo.h"

@implementation PBAreaCodeInfo

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"companyName": @"companyName", @"ocn": @"ocn", @"ocnCategory": @"ocnCategory", @"npa": @"npa", @"nxx": @"nxx", @"startRange": @"startRange", @"endRange": @"endRange", @"lata": @"lata", @"areaName4": @"areaName4" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"companyName", @"ocn", @"ocnCategory", @"npa", @"nxx", @"startRange", @"endRange", @"lata", @"areaName4"];
  return [optionalProperties containsObject:propertyName];
}

@end
