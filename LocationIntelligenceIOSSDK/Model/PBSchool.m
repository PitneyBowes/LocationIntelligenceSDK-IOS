#import "PBSchool.h"

@implementation PBSchool

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"assigned": @"assigned", @"phone": @"phone", @"website": @"website", @"addressType": @"addressType", @"address": @"address", @"lowestGrade": @"lowestGrade", @"highestGrade": @"highestGrade", @"schoolType": @"schoolType", @"schoolTypeDesc": @"schoolTypeDesc", @"schoolSubType": @"schoolSubType", @"schoolSubTypeDesc": @"schoolSubTypeDesc", @"gender": @"gender", @"genderDesc": @"genderDesc", @"educationLevel": @"educationLevel", @"educationLevelDesc": @"educationLevelDesc", @"greatschools": @"greatschools", @"ncesSchoolId": @"ncesSchoolId", @"ncesDistrictId": @"ncesDistrictId", @"ncesDataYear": @"ncesDataYear", @"schoolRanking": @"schoolRanking", @"students": @"students", @"teachers": @"teachers", @"status": @"status", @"studentTeacherRatio": @"studentTeacherRatio", @"choice": @"choice", @"coextensiv": @"coextensiv", @"schoolDistricts": @"schoolDistricts", @"schoolProfile": @"schoolProfile", @"gradeLevelsTaught": @"gradeLevelsTaught", @"distance": @"distance", @"geometry": @"geometry" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"assigned", @"phone", @"website", @"addressType", @"address", @"lowestGrade", @"highestGrade", @"schoolType", @"schoolTypeDesc", @"schoolSubType", @"schoolSubTypeDesc", @"gender", @"genderDesc", @"educationLevel", @"educationLevelDesc", @"greatschools", @"ncesSchoolId", @"ncesDistrictId", @"ncesDataYear", @"schoolRanking", @"students", @"teachers", @"status", @"studentTeacherRatio", @"choice", @"coextensiv", @"schoolDistricts", @"schoolProfile", @"gradeLevelsTaught", @"distance", @"geometry"];
  return [optionalProperties containsObject:propertyName];
}

@end
