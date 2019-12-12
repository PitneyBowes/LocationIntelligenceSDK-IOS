#import "PBSchoolProfile.h"

@implementation PBSchoolProfile

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"blueRibbon": @"blueRibbon", @"internationalBaccalaureate": @"internationalBaccalaureate", @"titleI": @"titleI", @"expensePerStudent": @"expensePerStudent", @"studentBelowPovertyPct": @"studentBelowPovertyPct", @"advancePlacementClasses": @"advancePlacementClasses", @"freeOrReducedPriceLunches": @"freeOrReducedPriceLunches", @"studentEthnicity": @"studentEthnicity" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"blueRibbon", @"internationalBaccalaureate", @"titleI", @"expensePerStudent", @"studentBelowPovertyPct", @"advancePlacementClasses", @"freeOrReducedPriceLunches", @"studentEthnicity"];
  return [optionalProperties containsObject:propertyName];
}

@end
