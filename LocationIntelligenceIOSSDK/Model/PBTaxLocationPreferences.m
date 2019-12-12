#import "PBTaxLocationPreferences.h"

@implementation PBTaxLocationPreferences

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.defaultBufferWidth = @"0";
    self.distanceUnits = @"Feet";
    self.outputCasing = @"M";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"defaultBufferWidth": @"defaultBufferWidth", @"distanceUnits": @"distanceUnits", @"outputCasing": @"outputCasing", @"returnCensusFields": @"returnCensusFields", @"returnLatLongFields": @"returnLatLongFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"defaultBufferWidth", @"distanceUnits", @"outputCasing", @"returnCensusFields", @"returnLatLongFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
