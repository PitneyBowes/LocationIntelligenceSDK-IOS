#import "SWGPreferences.h"

@implementation SWGPreferences

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.returnAllCandidateInfo = @"false";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"returnAllCandidateInfo": @"returnAllCandidateInfo", @"fallbackToGeographic": @"fallbackToGeographic", @"fallbackToPostal": @"fallbackToPostal", @"maxReturnedCandidates": @"maxReturnedCandidates", @"distance": @"distance", @"streetOffset": @"streetOffset", @"cornerOffset": @"cornerOffset", @"matchMode": @"matchMode", @"clientLocale": @"clientLocale", @"clientCoordSysName": @"clientCoordSysName", @"distanceUnits": @"distanceUnits", @"streetOffsetUnits": @"streetOffsetUnits", @"cornerOffsetUnits": @"cornerOffsetUnits", @"mustMatchFields": @"mustMatchFields", @"returnFieldsDescriptor": @"returnFieldsDescriptor", @"outputRecordType": @"outputRecordType", @"customPreferences": @"customPreferences", @"preferredDictionaryOrders": @"preferredDictionaryOrders", @"outputCasing": @"outputCasing", @"latLongOffset": @"latLongOffset", @"squeeze": @"squeeze", @"returnLatLongFields": @"returnLatLongFields", @"useGeoTaxAuxiliaryFile": @"useGeoTaxAuxiliaryFile", @"latLongFormat": @"latLongFormat", @"defaultBufferWidth": @"defaultBufferWidth", @"returnCensusFields": @"returnCensusFields", @"taxRatetypeID": @"taxRatetypeID" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"returnAllCandidateInfo", @"fallbackToGeographic", @"fallbackToPostal", @"maxReturnedCandidates", @"distance", @"streetOffset", @"cornerOffset", @"matchMode", @"clientLocale", @"clientCoordSysName", @"distanceUnits", @"streetOffsetUnits", @"cornerOffsetUnits", @"mustMatchFields", @"returnFieldsDescriptor", @"outputRecordType", @"customPreferences", @"preferredDictionaryOrders", @"outputCasing", @"latLongOffset", @"squeeze", @"returnLatLongFields", @"useGeoTaxAuxiliaryFile", @"latLongFormat", @"defaultBufferWidth", @"returnCensusFields", @"taxRatetypeID"];
  return [optionalProperties containsObject:propertyName];
}

@end
