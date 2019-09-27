#import "PBUseTaxRate.h"

@implementation PBUseTaxRate

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"totalTaxRate": @"totalTaxRate", @"stateTaxRate": @"stateTaxRate", @"countyTaxRate": @"countyTaxRate", @"municipalTaxRate": @"municipalTaxRate", @"spdsTax": @"spdsTax" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"totalTaxRate", @"stateTaxRate", @"countyTaxRate", @"municipalTaxRate", @"spdsTax"];
  return [optionalProperties containsObject:propertyName];
}

@end
