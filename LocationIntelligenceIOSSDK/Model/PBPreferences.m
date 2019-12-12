#import "PBPreferences.h"

@implementation PBPreferences

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.matchMode = @"EXACT";
    self.latLongOffset = @"40";
    self.latLongFormat = @"Decimal";
    self.defaultBufferWidth = @"0";
    self.distanceUnits = @"Feet";
    self.outputCasing = @"M";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"fallbackToGeographic": @"fallbackToGeographic", @"useGeoTaxAuxiliaryFile": @"useGeoTaxAuxiliaryFile", @"matchMode": @"matchMode", @"latLongOffset": @"latLongOffset", @"squeeze": @"squeeze", @"latLongFormat": @"latLongFormat", @"defaultBufferWidth": @"defaultBufferWidth", @"distanceUnits": @"distanceUnits", @"outputCasing": @"outputCasing", @"returnCensusFields": @"returnCensusFields", @"returnLatLongFields": @"returnLatLongFields", @"customPreferences": @"customPreferences" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fallbackToGeographic", @"useGeoTaxAuxiliaryFile", @"matchMode", @"latLongOffset", @"squeeze", @"latLongFormat", @"defaultBufferWidth", @"distanceUnits", @"outputCasing", @"returnCensusFields", @"returnLatLongFields", @"customPreferences"];
  return [optionalProperties containsObject:propertyName];
}

@end
