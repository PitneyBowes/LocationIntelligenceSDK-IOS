#import "SWGContactPerson.h"

@implementation SWGContactPerson

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"title": @"title", @"prefix": @"prefix", @"firstName": @"firstName", @"lastName": @"lastName", @"phone": @"phone", @"fax": @"fax", @"email": @"email", @"comments": @"comments", @"additionalDetails": @"additionalDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"prefix", @"firstName", @"lastName", @"phone", @"fax", @"email", @"comments", @"additionalDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
