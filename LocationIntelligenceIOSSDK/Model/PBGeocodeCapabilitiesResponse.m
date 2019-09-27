#import "PBGeocodeCapabilitiesResponse.h"

@implementation PBGeocodeCapabilitiesResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"serviceName": @"serviceName", @"serviceDescription": @"serviceDescription", @"coreVersion": @"coreVersion", @"supportedCountries": @"supportedCountries", @"supportedOperations": @"supportedOperations", @"customObjects": @"customObjects" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"serviceName", @"serviceDescription", @"coreVersion", @"supportedCountries", @"supportedOperations", @"customObjects"];
  return [optionalProperties containsObject:propertyName];
}

@end
