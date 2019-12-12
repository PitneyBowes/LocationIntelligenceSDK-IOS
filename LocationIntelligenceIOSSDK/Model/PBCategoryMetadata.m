#import "PBCategoryMetadata.h"

@implementation PBCategoryMetadata

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"code": @"code", @"sic": @"sic", @"tradeDivision": @"tradeDivision", @"tradeGroup": @"tradeGroup", @"class": @"class", @"subClass": @"subClass", @"description": @"_description" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"code", @"sic", @"tradeDivision", @"tradeGroup", @"class", @"subClass", @"_description"];
  return [optionalProperties containsObject:propertyName];
}

@end
