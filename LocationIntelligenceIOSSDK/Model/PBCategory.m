#import "PBCategory.h"

@implementation PBCategory

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"categoryCode": @"categoryCode", @"tradeDivision": @"tradeDivision", @"tradeGroup": @"tradeGroup", @"subClass": @"subClass", @"class": @"class" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"categoryCode", @"tradeDivision", @"tradeGroup", @"subClass", @"class"];
  return [optionalProperties containsObject:propertyName];
}

@end
