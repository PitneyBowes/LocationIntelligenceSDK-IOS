#import "PBSpeedRoad.h"

@implementation PBSpeedRoad

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"altName": @"altName", @"roadClass": @"roadClass", @"type": @"type", @"lengthInMeters": @"lengthInMeters", @"routeNumber": @"routeNumber", @"surfaceType": @"surfaceType", @"trafficFlow": @"trafficFlow", @"isToll": @"isToll", @"beginningLevel": @"beginningLevel", @"endingLevel": @"endingLevel" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"altName", @"roadClass", @"type", @"lengthInMeters", @"routeNumber", @"surfaceType", @"trafficFlow", @"isToll", @"beginningLevel", @"endingLevel"];
  return [optionalProperties containsObject:propertyName];
}

@end
