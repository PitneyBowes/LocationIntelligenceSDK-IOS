#import "SWGPoi.h"

@implementation SWGPoi

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"langISOCode": @"langISOCode", @"langType": @"langType", @"displayName": @"displayName", @"name": @"name", @"alias": @"alias", @"brandName": @"brandName", @"categoryCode": @"categoryCode", @"open24Hours": @"open24Hours", @"contactDetails": @"contactDetails", @"distance": @"distance", @"latitude": @"latitude", @"longitude": @"longitude", @"customValue1": @"customValue1", @"customValue2": @"customValue2", @"customValue3": @"customValue3", @"customValue4": @"customValue4", @"customValue5": @"customValue5", @"customValue6": @"customValue6", @"customValue7": @"customValue7", @"customValue8": @"customValue8", @"customValue9": @"customValue9", @"customValue10": @"customValue10" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"langISOCode", @"langType", @"displayName", @"name", @"alias", @"brandName", @"categoryCode", @"open24Hours", @"contactDetails", @"distance", @"latitude", @"longitude", @"customValue1", @"customValue2", @"customValue3", @"customValue4", @"customValue5", @"customValue6", @"customValue7", @"customValue8", @"customValue9", @"customValue10"];
  return [optionalProperties containsObject:propertyName];
}

@end
