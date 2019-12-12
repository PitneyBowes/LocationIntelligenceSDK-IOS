#import "PBPOIPlaces.h"

@implementation PBPOIPlaces

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"name": @"name", @"brandName": @"brandName", @"tradeName": @"tradeName", @"franchiseName": @"franchiseName", @"open24Hours": @"open24Hours", @"distance": @"distance", @"relevanceScore": @"relevanceScore", @"contactDetails": @"contactDetails", @"poiClassification": @"poiClassification", @"salesVolume": @"salesVolume", @"employeeCount": @"employeeCount", @"yearStart": @"yearStart", @"goodsAgentCode": @"goodsAgentCode", @"goodsAgentCodeDescription": @"goodsAgentCodeDescription", @"legalStatusCode": @"legalStatusCode", @"organizationStatusCode": @"organizationStatusCode", @"organizationStatusCodeDescription": @"organizationStatusCodeDescription", @"subsidaryIndicator": @"subsidaryIndicator", @"subsidaryIndicatorDescription": @"subsidaryIndicatorDescription", @"parentBusiness": @"parentBusiness", @"domesticUltimateBusiness": @"domesticUltimateBusiness", @"globalUltimateIndicator": @"globalUltimateIndicator", @"globalUltimateBusiness": @"globalUltimateBusiness", @"familyMembers": @"familyMembers", @"hierarchyCode": @"hierarchyCode", @"tickerSymbol": @"tickerSymbol", @"exchangeName": @"exchangeName", @"geometry": @"geometry" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"name", @"brandName", @"tradeName", @"franchiseName", @"open24Hours", @"distance", @"relevanceScore", @"contactDetails", @"poiClassification", @"salesVolume", @"employeeCount", @"yearStart", @"goodsAgentCode", @"goodsAgentCodeDescription", @"legalStatusCode", @"organizationStatusCode", @"organizationStatusCodeDescription", @"subsidaryIndicator", @"subsidaryIndicatorDescription", @"parentBusiness", @"domesticUltimateBusiness", @"globalUltimateIndicator", @"globalUltimateBusiness", @"familyMembers", @"hierarchyCode", @"tickerSymbol", @"exchangeName", @"geometry"];
  return [optionalProperties containsObject:propertyName];
}

@end
