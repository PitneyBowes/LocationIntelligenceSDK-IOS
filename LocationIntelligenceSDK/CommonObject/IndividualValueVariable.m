//
//  IndividualValueVariable.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "IndividualValueVariable.h"


NSString *const kIndividualValueVariableName = @"name";
NSString *const kIndividualValueVariableValue = @"value";
NSString *const kIndividualValueVariableDescription = @"description";


@interface IndividualValueVariable ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation IndividualValueVariable

@synthesize name = _name;
@synthesize value = _value;
@synthesize individualValueVariableDescription = _individualValueVariableDescription;


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
            self.name = [self objectOrNilForKey:kIndividualValueVariableName fromDictionary:dict];
            self.value = [self objectOrNilForKey:kIndividualValueVariableValue fromDictionary:dict];
            self.individualValueVariableDescription = [self objectOrNilForKey:kIndividualValueVariableDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kIndividualValueVariableName];
    [mutableDict setValue:self.value forKey:kIndividualValueVariableValue];
    [mutableDict setValue:self.individualValueVariableDescription forKey:kIndividualValueVariableDescription];

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

    self.name = [aDecoder decodeObjectForKey:kIndividualValueVariableName];
    self.value = [aDecoder decodeObjectForKey:kIndividualValueVariableValue];
    self.individualValueVariableDescription = [aDecoder decodeObjectForKey:kIndividualValueVariableDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kIndividualValueVariableName];
    [aCoder encodeObject:_value forKey:kIndividualValueVariableValue];
    [aCoder encodeObject:_individualValueVariableDescription forKey:kIndividualValueVariableDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    IndividualValueVariable *copy = [[IndividualValueVariable alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.value = [self.value copyWithZone:zone];
        copy.individualValueVariableDescription = [self.individualValueVariableDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
