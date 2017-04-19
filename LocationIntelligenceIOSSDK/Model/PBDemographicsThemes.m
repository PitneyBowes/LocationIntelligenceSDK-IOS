#import "PBDemographicsThemes.h"

@implementation PBDemographicsThemes

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ageTheme": @"ageTheme", @"genderTheme": @"genderTheme", @"incomeTheme": @"incomeTheme", @"raceTheme": @"raceTheme", @"ethnicityTheme": @"ethnicityTheme", @"maritalStatusTheme": @"maritalStatusTheme", @"automobileTheme": @"automobileTheme", @"purchasingBehaviorTheme": @"purchasingBehaviorTheme", @"educationalAttainmentTheme": @"educationalAttainmentTheme", @"financialProductsTheme": @"financialProductsTheme", @"commuterPatternsTheme": @"commuterPatternsTheme", @"attitudesAndMotivationTheme": @"attitudesAndMotivationTheme", @"channelPreferencesTheme": @"channelPreferencesTheme", @"householdSizeTheme": @"householdSizeTheme" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ageTheme", @"genderTheme", @"incomeTheme", @"raceTheme", @"ethnicityTheme", @"maritalStatusTheme", @"automobileTheme", @"purchasingBehaviorTheme", @"educationalAttainmentTheme", @"financialProductsTheme", @"commuterPatternsTheme", @"attitudesAndMotivationTheme", @"channelPreferencesTheme", @"householdSizeTheme"];
  return [optionalProperties containsObject:propertyName];
}

@end
