#import "PBDictionary.h"

@implementation PBDictionary

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"vintage": @"vintage", @"source": @"source", @"description": @"_description", @"countrySupportInfos": @"countrySupportInfos" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"vintage", @"source", @"_description", @"countrySupportInfos"];
  return [optionalProperties containsObject:propertyName];
}

@end
