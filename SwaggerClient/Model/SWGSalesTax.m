#import "SWGSalesTax.h"

@implementation SWGSalesTax

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"totalTaxRate": @"totalTaxRate", @"totalTaxAmount": @"totalTaxAmount", @"stateTaxRate": @"stateTaxRate", @"stateTaxAmount": @"stateTaxAmount", @"countyTaxRate": @"countyTaxRate", @"countyTaxAmount": @"countyTaxAmount", @"municipalTaxRate": @"municipalTaxRate", @"municipalTaxAmount": @"municipalTaxAmount", @"spdsTax": @"spdsTax", @"specialTaxRulesDescriptor": @"specialTaxRulesDescriptor" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"totalTaxRate", @"totalTaxAmount", @"stateTaxRate", @"stateTaxAmount", @"countyTaxRate", @"countyTaxAmount", @"municipalTaxRate", @"municipalTaxAmount", @"spdsTax", @"specialTaxRulesDescriptor"];
  return [optionalProperties containsObject:propertyName];
}

@end
