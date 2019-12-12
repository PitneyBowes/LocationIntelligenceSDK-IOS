#import "PBAHJ.h"

@implementation PBAHJ

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ahjType": @"ahjType", @"ahjId": @"ahjId", @"agency": @"agency", @"phone": @"phone", @"comments": @"comments", @"coverage": @"coverage", @"contactPerson": @"contactPerson", @"mailingAddress": @"mailingAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ahjType", @"ahjId", @"agency", @"phone", @"comments", @"coverage", @"contactPerson", @"mailingAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
