#import "PBNetwork.h"

@implementation PBNetwork

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"connectionFromHome": @"connectionFromHome", @"organization": @"organization", @"carrier": @"carrier", @"organizationType": @"organizationType", @"connectionType": @"connectionType", @"lineSpeed": @"lineSpeed", @"ipRouteType": @"ipRouteType", @"hostingFacility": @"hostingFacility" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"connectionFromHome", @"organization", @"carrier", @"organizationType", @"connectionType", @"lineSpeed", @"ipRouteType", @"hostingFacility"];
  return [optionalProperties containsObject:propertyName];
}

@end
