#import "PBPoiBoundary.h"

@implementation PBPoiBoundary

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"center": @"center", @"countyfips": @"countyfips", @"geometry": @"geometry", @"poiList": @"poiList", @"matchedAddress": @"matchedAddress", @"id": @"_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"center", @"countyfips", @"geometry", @"poiList", @"matchedAddress", @"_id"];
  return [optionalProperties containsObject:propertyName];
}

@end
