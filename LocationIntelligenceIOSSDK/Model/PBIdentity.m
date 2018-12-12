#import "PBIdentity.h"

@implementation PBIdentity

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"email": @"email", @"emailHash": @"emailHash", @"twitter": @"twitter", @"phone": @"phone", @"fullName": @"fullName", @"ageRange": @"ageRange", @"gender": @"gender", @"location": @"location", @"title": @"title", @"organization": @"organization", @"linkedin": @"linkedin", @"facebook": @"facebook", @"bio": @"bio", @"avatar": @"avatar", @"website": @"website", @"details": @"details", @"property": @"_property", @"neighborhood": @"neighborhood" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"email", @"emailHash", @"twitter", @"phone", @"fullName", @"ageRange", @"gender", @"location", @"title", @"organization", @"linkedin", @"facebook", @"bio", @"avatar", @"website", @"details", @"_property", @"neighborhood"];
  return [optionalProperties containsObject:propertyName];
}

@end
