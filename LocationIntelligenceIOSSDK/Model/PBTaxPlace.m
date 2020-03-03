#import "PBTaxPlace.h"

@implementation PBTaxPlace

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"code": @"code", @"gnisCode": @"gnisCode", @"selfCollected": @"selfCollected", @"classCode": @"classCode", @"incorporatedFlag": @"incorporatedFlag", @"lastAnnexedDate": @"lastAnnexedDate", @"lastUpdatedDate": @"lastUpdatedDate", @"lastVerifiedDate": @"lastVerifiedDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"code", @"gnisCode", @"selfCollected", @"classCode", @"incorporatedFlag", @"lastAnnexedDate", @"lastUpdatedDate", @"lastVerifiedDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
