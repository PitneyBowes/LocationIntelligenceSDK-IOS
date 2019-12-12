#import "PBGradeLevelsTaught.h"

@implementation PBGradeLevelsTaught

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"pk": @"pk", @"kg": @"kg", @"first": @"first", @"second": @"second", @"third": @"third", @"fourth": @"fourth", @"fifth": @"fifth", @"sixth": @"sixth", @"seventh": @"seventh", @"eighth": @"eighth", @"ninth": @"ninth", @"tenth": @"tenth", @"eleventh": @"eleventh", @"twelfth": @"twelfth" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pk", @"kg", @"first", @"second", @"third", @"fourth", @"fifth", @"sixth", @"seventh", @"eighth", @"ninth", @"tenth", @"eleventh", @"twelfth"];
  return [optionalProperties containsObject:propertyName];
}

@end
