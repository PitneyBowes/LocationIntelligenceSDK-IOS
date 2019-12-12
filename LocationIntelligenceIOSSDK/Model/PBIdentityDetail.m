#import "PBIdentityDetail.h"

@implementation PBIdentityDetail

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"interests": @"interests", @"profiles": @"profiles", @"photos": @"photos", @"urls": @"urls", @"name": @"name", @"age": @"age", @"gender": @"gender", @"locations": @"locations", @"education": @"education", @"emails": @"emails", @"employment": @"employment", @"topics": @"topics" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"interests", @"profiles", @"photos", @"urls", @"name", @"age", @"gender", @"locations", @"education", @"emails", @"employment", @"topics"];
  return [optionalProperties containsObject:propertyName];
}

@end
