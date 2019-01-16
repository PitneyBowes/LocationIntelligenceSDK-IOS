#import "PBSalesTax.h"

@implementation PBSalesTax

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.specialTaxRulesApplied = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"totalTax": @"totalTax", @"totalTaxRate": @"totalTaxRate", @"totalTaxAmount": @"totalTaxAmount", @"stateTax": @"stateTax", @"stateTaxRate": @"stateTaxRate", @"stateTaxAmount": @"stateTaxAmount", @"countyTax": @"countyTax", @"countyTaxRate": @"countyTaxRate", @"countyTaxAmount": @"countyTaxAmount", @"municipalTax": @"municipalTax", @"municipalTaxRate": @"municipalTaxRate", @"municipalTaxAmount": @"municipalTaxAmount", @"spdsTax": @"spdsTax", @"specialTaxRulesApplied": @"specialTaxRulesApplied", @"specialTaxRulesDescriptor": @"specialTaxRulesDescriptor" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"totalTax", @"totalTaxRate", @"totalTaxAmount", @"stateTax", @"stateTaxRate", @"stateTaxAmount", @"countyTax", @"countyTaxRate", @"countyTaxAmount", @"municipalTax", @"municipalTaxRate", @"municipalTaxAmount", @"spdsTax", @"specialTaxRulesApplied", @"specialTaxRulesDescriptor"];
  return [optionalProperties containsObject:propertyName];
}

@end
