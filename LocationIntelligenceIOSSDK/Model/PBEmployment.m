#import "PBEmployment.h"

@implementation PBEmployment

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.current = @0;
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"domain": @"domain", @"current": @"current", @"title": @"title", @"start": @"start", @"end": @"end" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"domain", @"current", @"title", @"start", @"end"];
  return [optionalProperties containsObject:propertyName];
}

@end
