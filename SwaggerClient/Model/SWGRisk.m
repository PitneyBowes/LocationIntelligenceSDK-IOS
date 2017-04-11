#import "SWGRisk.h"

@implementation SWGRisk

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"type": @"type", @"description": @"_description", @"risk50Rating": @"risk50Rating", @"frequency": @"frequency", @"nonburn": @"nonburn", @"pastFires": @"pastFires", @"severity": @"severity", @"continuity": @"continuity", @"adjustment": @"adjustment", @"aspect": @"aspect", @"crownFire": @"crownFire", @"vegetation": @"vegetation", @"foehn": @"foehn", @"golfCourse": @"golfCourse", @"roadDist": @"roadDist", @"slope": @"slope", @"waterDist": @"waterDist", @"tier": @"tier", @"tierDescription": @"tierDescription", @"distanceToFireStation": @"distanceToFireStation" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"type", @"_description", @"risk50Rating", @"frequency", @"nonburn", @"pastFires", @"severity", @"continuity", @"adjustment", @"aspect", @"crownFire", @"vegetation", @"foehn", @"golfCourse", @"roadDist", @"slope", @"waterDist", @"tier", @"tierDescription", @"distanceToFireStation"];
  return [optionalProperties containsObject:propertyName];
}

@end
