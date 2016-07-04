//
//  Input.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Input.h"
#import "AllowedValuesWithDescriptions.h"


NSString *const kInputLowBoundary = @"lowBoundary";
NSString *const kInputDefaultValue = @"defaultValue";
NSString *const kInputHighBoundary = @"highBoundary";
NSString *const kInputDescription = @"description";
NSString *const kInputType = @"type";
NSString *const kInputName = @"name";
NSString *const kInputAllowedValuesWithDescriptions = @"allowedValuesWithDescriptions";


@interface Input ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Input

@synthesize lowBoundary = _lowBoundary;
@synthesize defaultValue = _defaultValue;
@synthesize highBoundary = _highBoundary;
@synthesize inputDescription = _inputDescription;
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
            self.lowBoundary = [self objectOrNilForKey:kInputLowBoundary fromDictionary:dict];
            self.defaultValue = [self objectOrNilForKey:kInputDefaultValue fromDictionary:dict];
            self.highBoundary = [self objectOrNilForKey:kInputHighBoundary fromDictionary:dict];
            self.inputDescription = [self objectOrNilForKey:kInputDescription fromDictionary:dict];
            self.type = [self objectOrNilForKey:kInputType fromDictionary:dict];
            self.name = [self objectOrNilForKey:kInputName fromDictionary:dict];
            self.allowedValuesWithDescriptions = [AllowedValuesWithDescriptions modelObjectWithDictionary:[dict objectForKey:kInputAllowedValuesWithDescriptions]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.lowBoundary forKey:kInputLowBoundary];
    [mutableDict setValue:self.defaultValue forKey:kInputDefaultValue];
    [mutableDict setValue:self.highBoundary forKey:kInputHighBoundary];
    [mutableDict setValue:self.inputDescription forKey:kInputDescription];
    [mutableDict setValue:self.type forKey:kInputType];
    [mutableDict setValue:self.name forKey:kInputName];
    [mutableDict setValue:[self.allowedValuesWithDescriptions dictionaryRepresentation] forKey:kInputAllowedValuesWithDescriptions];

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

    self.lowBoundary = [aDecoder decodeObjectForKey:kInputLowBoundary];
    self.defaultValue = [aDecoder decodeObjectForKey:kInputDefaultValue];
    self.highBoundary = [aDecoder decodeObjectForKey:kInputHighBoundary];
    self.inputDescription = [aDecoder decodeObjectForKey:kInputDescription];
    self.type = [aDecoder decodeObjectForKey:kInputType];
    self.name = [aDecoder decodeObjectForKey:kInputName];
    self.allowedValuesWithDescriptions = [aDecoder decodeObjectForKey:kInputAllowedValuesWithDescriptions];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_lowBoundary forKey:kInputLowBoundary];
    [aCoder encodeObject:_defaultValue forKey:kInputDefaultValue];
    [aCoder encodeObject:_highBoundary forKey:kInputHighBoundary];
    [aCoder encodeObject:_inputDescription forKey:kInputDescription];
    [aCoder encodeObject:_type forKey:kInputType];
    [aCoder encodeObject:_name forKey:kInputName];
    [aCoder encodeObject:_allowedValuesWithDescriptions forKey:kInputAllowedValuesWithDescriptions];
}

- (id)copyWithZone:(NSZone *)zone
{
    Input *copy = [[Input alloc] init];
    
    if (copy) {

        copy.lowBoundary = [self.lowBoundary copyWithZone:zone];
        copy.defaultValue = [self.defaultValue copyWithZone:zone];
        copy.highBoundary = [self.highBoundary copyWithZone:zone];
        copy.inputDescription = [self.inputDescription copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.allowedValuesWithDescriptions = [self.allowedValuesWithDescriptions copyWithZone:zone];
    }
    
    return copy;
}


@end
