#import "PBStudentEthnicity.h"

@implementation PBStudentEthnicity

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"indianAlaskaNative": @"indianAlaskaNative", @"asian": @"asian", @"hispanic": @"hispanic", @"black": @"black", @"white": @"white", @"hawaiianPacificlslander": @"hawaiianPacificlslander", @"twoOrMoreRaces": @"twoOrMoreRaces" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"indianAlaskaNative", @"asian", @"hispanic", @"black", @"white", @"hawaiianPacificlslander", @"twoOrMoreRaces"];
  return [optionalProperties containsObject:propertyName];
}

@end
