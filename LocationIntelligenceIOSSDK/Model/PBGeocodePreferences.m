#import "PBGeocodePreferences.h"

@implementation PBGeocodePreferences

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.returnAllCandidateInfo = @0;
    self.fallbackToGeographic = @1;
    self.fallbackToPostal = @1;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"returnAllCandidateInfo": @"returnAllCandidateInfo", @"fallbackToGeographic": @"fallbackToGeographic", @"fallbackToPostal": @"fallbackToPostal", @"maxReturnedCandidates": @"maxReturnedCandidates", @"streetOffset": @"streetOffset", @"cornerOffset": @"cornerOffset", @"matchMode": @"matchMode", @"clientLocale": @"clientLocale", @"clientCoordSysName": @"clientCoordSysName", @"streetOffsetUnits": @"streetOffsetUnits", @"cornerOffsetUnits": @"cornerOffsetUnits", @"mustMatchFields": @"mustMatchFields", @"returnFieldsDescriptor": @"returnFieldsDescriptor", @"outputRecordType": @"outputRecordType", @"customPreferences": @"customPreferences", @"preferredDictionaryOrders": @"preferredDictionaryOrders" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"returnAllCandidateInfo", @"fallbackToGeographic", @"fallbackToPostal", @"maxReturnedCandidates", @"streetOffset", @"cornerOffset", @"matchMode", @"clientLocale", @"clientCoordSysName", @"streetOffsetUnits", @"cornerOffsetUnits", @"mustMatchFields", @"returnFieldsDescriptor", @"outputRecordType", @"customPreferences", @"preferredDictionaryOrders"];
  return [optionalProperties containsObject:propertyName];
}

@end
