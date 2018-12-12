#import "PBProfile.h"

@implementation PBProfile

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"username": @"username", @"userid": @"userid", @"url": @"url", @"bio": @"bio", @"service": @"service", @"followers": @"followers", @"following": @"following" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"username", @"userid", @"url", @"bio", @"service", @"followers", @"following"];
  return [optionalProperties containsObject:propertyName];
}

@end
