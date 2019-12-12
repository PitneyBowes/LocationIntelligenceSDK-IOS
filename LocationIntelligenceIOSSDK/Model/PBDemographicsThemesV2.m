#import "PBDemographicsThemesV2.h"

@implementation PBDemographicsThemesV2

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"populationTheme": @"populationTheme", @"raceAndEthnicityTheme": @"raceAndEthnicityTheme", @"healthTheme": @"healthTheme", @"educationTheme": @"educationTheme", @"incomeTheme": @"incomeTheme", @"assetsAndWealthTheme": @"assetsAndWealthTheme", @"householdsTheme": @"householdsTheme", @"housingTheme": @"housingTheme", @"employmentTheme": @"employmentTheme", @"expenditureTheme": @"expenditureTheme", @"supplyAndDemandTheme": @"supplyAndDemandTheme" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"populationTheme", @"raceAndEthnicityTheme", @"healthTheme", @"educationTheme", @"incomeTheme", @"assetsAndWealthTheme", @"householdsTheme", @"housingTheme", @"employmentTheme", @"expenditureTheme", @"supplyAndDemandTheme"];
  return [optionalProperties containsObject:propertyName];
}

@end
