#import "PBReturnFieldsDescriptor.h"

@implementation PBReturnFieldsDescriptor

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.returnAllCustomFields = @0;
    self.returnMatchDescriptor = @0;
    self.returnStreetAddressFields = @0;
    self.returnUnitInformation = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"returnAllCustomFields": @"returnAllCustomFields", @"returnMatchDescriptor": @"returnMatchDescriptor", @"returnStreetAddressFields": @"returnStreetAddressFields", @"returnUnitInformation": @"returnUnitInformation", @"returnedCustomFieldKeys": @"returnedCustomFieldKeys" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"returnAllCustomFields", @"returnMatchDescriptor", @"returnStreetAddressFields", @"returnUnitInformation", @"returnedCustomFieldKeys"];
  return [optionalProperties containsObject:propertyName];
}

@end
