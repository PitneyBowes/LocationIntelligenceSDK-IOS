#import "PBCandidate.h"

@implementation PBCandidate

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.worldGeocoded = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"precisionLevel": @"precisionLevel", @"formattedStreetAddress": @"formattedStreetAddress", @"formattedLocationAddress": @"formattedLocationAddress", @"identifier": @"identifier", @"precisionCode": @"precisionCode", @"sourceDictionary": @"sourceDictionary", @"matching": @"matching", @"geometry": @"geometry", @"address": @"address", @"ranges": @"ranges", @"worldGeocoded": @"worldGeocoded" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"precisionLevel", @"formattedStreetAddress", @"formattedLocationAddress", @"identifier", @"precisionCode", @"sourceDictionary", @"matching", @"geometry", @"address", @"ranges", @"worldGeocoded"];
  return [optionalProperties containsObject:propertyName];
}

@end
