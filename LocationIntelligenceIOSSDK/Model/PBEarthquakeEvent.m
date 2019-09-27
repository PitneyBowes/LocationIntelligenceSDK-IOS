#import "PBEarthquakeEvent.h"

@implementation PBEarthquakeEvent

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"dateTime": @"dateTime", @"seismicRegionNumber": @"seismicRegionNumber", @"depth": @"depth", @"magnitude": @"magnitude", @"cause": @"cause", @"culturalEffect": @"culturalEffect", @"intensity": @"intensity", @"diastrophism": @"diastrophism", @"miscPhenomena": @"miscPhenomena", @"location": @"location" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dateTime", @"seismicRegionNumber", @"depth", @"magnitude", @"cause", @"culturalEffect", @"intensity", @"diastrophism", @"miscPhenomena", @"location"];
  return [optionalProperties containsObject:propertyName];
}

@end
