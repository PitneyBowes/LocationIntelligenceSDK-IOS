#import "PBSchoolRanking.h"

@implementation PBSchoolRanking

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"current": @"current", @"rankYear": @"rankYear", @"stateRank": @"stateRank", @"numberOfSchools": @"numberOfSchools", @"avgMathScore": @"avgMathScore", @"avgReadingScore": @"avgReadingScore", @"statePercentileScore": @"statePercentileScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"current", @"rankYear", @"stateRank", @"numberOfSchools", @"avgMathScore", @"avgReadingScore", @"statePercentileScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
