#import "PBSchoolDistrict.h"

@implementation PBSchoolDistrict

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ncesDistrictId": @"ncesDistrictId", @"name": @"name", @"totalSchools": @"totalSchools", @"districtType": @"districtType", @"metro": @"metro", @"areaInSqM": @"areaInSqM", @"supervisoryUnionId": @"supervisoryUnionId", @"districtEnrollment": @"districtEnrollment", @"districtUrl": @"districtUrl" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ncesDistrictId", @"name", @"totalSchools", @"districtType", @"metro", @"areaInSqM", @"supervisoryUnionId", @"districtEnrollment", @"districtUrl"];
  return [optionalProperties containsObject:propertyName];
}

@end
