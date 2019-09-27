#import "PBEventsCount.h"

@implementation PBEventsCount

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"total": @"total", @"r0": @"r0", @"r1": @"r1", @"r2": @"r2", @"r3": @"r3", @"r4": @"r4", @"r5": @"r5", @"r6": @"r6", @"r7": @"r7", @"r0_ge": @"r0Ge", @"r1_ge": @"r1Ge", @"r2_ge": @"r2Ge", @"r3_ge": @"r3Ge", @"r4_ge": @"r4Ge", @"r5_ge": @"r5Ge", @"r6_ge": @"r6Ge", @"r7_ge": @"r7Ge" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"total", @"r0", @"r1", @"r2", @"r3", @"r4", @"r5", @"r6", @"r7", @"r0Ge", @"r1Ge", @"r2Ge", @"r3Ge", @"r4Ge", @"r5Ge", @"r6Ge", @"r7Ge"];
  return [optionalProperties containsObject:propertyName];
}

@end
