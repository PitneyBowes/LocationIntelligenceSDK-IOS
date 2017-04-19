#import "PBTaxResponse.h"

@implementation PBTaxResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"gnisCode": @"gnisCode", @"confidence": @"confidence", @"jurisdiction": @"jurisdiction", @"matchedAddress": @"matchedAddress", @"salesTax": @"salesTax", @"useTax": @"useTax", @"census": @"census", @"latLongFields": @"latLongFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"gnisCode", @"confidence", @"jurisdiction", @"matchedAddress", @"salesTax", @"useTax", @"census", @"latLongFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
