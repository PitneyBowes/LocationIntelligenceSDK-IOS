#import "PBCustomPreferences.h"

@implementation PBCustomPreferences

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.fINDADDRPOINTINTERP = @0;
    self.fINDSEARCHAREA = @"1";
    self.fINDADDRESSRANGE = @0;
    self.fINDEXPANDEDSEARCHRADIUS = @"25";
    self.fINDALTERNATELOOKUP = @"3";
    self.fINDSTREETCENTROID = @0;
    self.fINDFIRSTLETTEREXPANDED = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"FIND_ADDR_POINT_INTERP": @"fINDADDRPOINTINTERP", @"FIND_SEARCH_AREA": @"fINDSEARCHAREA", @"FIND_ADDRESS_RANGE": @"fINDADDRESSRANGE", @"FIND_EXPANDED_SEARCH_RADIUS": @"fINDEXPANDEDSEARCHRADIUS", @"FIND_ALTERNATE_LOOKUP": @"fINDALTERNATELOOKUP", @"FIND_STREET_CENTROID": @"fINDSTREETCENTROID", @"FIND_FIRST_LETTER_EXPANDED": @"fINDFIRSTLETTEREXPANDED" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fINDADDRPOINTINTERP", @"fINDSEARCHAREA", @"fINDADDRESSRANGE", @"fINDEXPANDEDSEARCHRADIUS", @"fINDALTERNATELOOKUP", @"fINDSTREETCENTROID", @"fINDFIRSTLETTEREXPANDED"];
  return [optionalProperties containsObject:propertyName];
}

@end
