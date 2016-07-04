//
//  RequiredInputs.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "RequiredInputs.h"
#import "AllowedValuesWithDescriptions.h"


NSString *const kRequiredInputsLowBoundary = @"lowBoundary";
NSString *const kRequiredInputsDefaultValue = @"defaultValue";
NSString *const kRequiredInputsHighBoundary = @"highBoundary";
NSString *const kRequiredInputsDescription = @"description";
NSString *const kRequiredInputsType = @"type";
NSString *const kRequiredInputsName = @"name";
NSString *const kRequiredInputsAllowedValuesWithDescriptions = @"allowedValuesWithDescriptions";


@interface RequiredInputs ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation RequiredInputs

@synthesize lowBoundary = _lowBoundary;
@synthesize defaultValue = _defaultValue;
@synthesize highBoundary = _highBoundary;
@synthesize requiredInputsDescription = _requiredInputsDescription;
@synthesize type = _type;
@synthesize name = _name;
@synthesize allowedValuesWithDescriptions = _allowedValuesWithDescriptions;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.lowBoundary = [self objectOrNilForKey:kRequiredInputsLowBoundary fromDictionary:dict];
            self.defaultValue = [self objectOrNilForKey:kRequiredInputsDefaultValue fromDictionary:dict];
            self.highBoundary = [self objectOrNilForKey:kRequiredInputsHighBoundary fromDictionary:dict];
            self.requiredInputsDescription = [self objectOrNilForKey:kRequiredInputsDescription fromDictionary:dict];
            self.type = [self objectOrNilForKey:kRequiredInputsType fromDictionary:dict];
            self.name = [self objectOrNilForKey:kRequiredInputsName fromDictionary:dict];
            self.allowedValuesWithDescriptions = [AllowedValuesWithDescriptions modelObjectWithDictionary:[dict objectForKey:kRequiredInputsAllowedValuesWithDescriptions]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.lowBoundary forKey:kRequiredInputsLowBoundary];
    [mutableDict setValue:self.defaultValue forKey:kRequiredInputsDefaultValue];
    [mutableDict setValue:self.highBoundary forKey:kRequiredInputsHighBoundary];
    [mutableDict setValue:self.requiredInputsDescription forKey:kRequiredInputsDescription];
    [mutableDict setValue:self.type forKey:kRequiredInputsType];
    [mutableDict setValue:self.name forKey:kRequiredInputsName];
    [mutableDict setValue:[self.allowedValuesWithDescriptions dictionaryRepresentation] forKey:kRequiredInputsAllowedValuesWithDescriptions];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.lowBoundary = [aDecoder decodeObjectForKey:kRequiredInputsLowBoundary];
    self.defaultValue = [aDecoder decodeObjectForKey:kRequiredInputsDefaultValue];
    self.highBoundary = [aDecoder decodeObjectForKey:kRequiredInputsHighBoundary];
    self.requiredInputsDescription = [aDecoder decodeObjectForKey:kRequiredInputsDescription];
    self.type = [aDecoder decodeObjectForKey:kRequiredInputsType];
    self.name = [aDecoder decodeObjectForKey:kRequiredInputsName];
    self.allowedValuesWithDescriptions = [aDecoder decodeObjectForKey:kRequiredInputsAllowedValuesWithDescriptions];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_lowBoundary forKey:kRequiredInputsLowBoundary];
    [aCoder encodeObject:_defaultValue forKey:kRequiredInputsDefaultValue];
    [aCoder encodeObject:_highBoundary forKey:kRequiredInputsHighBoundary];
    [aCoder encodeObject:_requiredInputsDescription forKey:kRequiredInputsDescription];
    [aCoder encodeObject:_type forKey:kRequiredInputsType];
    [aCoder encodeObject:_name forKey:kRequiredInputsName];
    [aCoder encodeObject:_allowedValuesWithDescriptions forKey:kRequiredInputsAllowedValuesWithDescriptions];
}

- (id)copyWithZone:(NSZone *)zone
{
    RequiredInputs *copy = [[RequiredInputs alloc] init];
    
    if (copy) {

        copy.lowBoundary = [self.lowBoundary copyWithZone:zone];
        copy.defaultValue = [self.defaultValue copyWithZone:zone];
        copy.highBoundary = [self.highBoundary copyWithZone:zone];
        copy.requiredInputsDescription = [self.requiredInputsDescription copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.allowedValuesWithDescriptions = [self.allowedValuesWithDescriptions copyWithZone:zone];
    }
    
    return copy;
}


@end
