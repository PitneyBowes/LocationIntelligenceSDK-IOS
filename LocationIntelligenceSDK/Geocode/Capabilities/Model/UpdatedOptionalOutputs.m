//
//  UpdatedOptionalOutputs.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "UpdatedOptionalOutputs.h"


NSString *const kUpdatedOptionalOutputsName = @"name";
NSString *const kUpdatedOptionalOutputsType = @"type";
NSString *const kUpdatedOptionalOutputsDescription = @"description";


@interface UpdatedOptionalOutputs ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation UpdatedOptionalOutputs

@synthesize name = _name;
@synthesize type = _type;
@synthesize updatedOptionalOutputsDescription = _updatedOptionalOutputsDescription;


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
            self.name = [self objectOrNilForKey:kUpdatedOptionalOutputsName fromDictionary:dict];
            self.type = [self objectOrNilForKey:kUpdatedOptionalOutputsType fromDictionary:dict];
            self.updatedOptionalOutputsDescription = [self objectOrNilForKey:kUpdatedOptionalOutputsDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kUpdatedOptionalOutputsName];
    [mutableDict setValue:self.type forKey:kUpdatedOptionalOutputsType];
    [mutableDict setValue:self.updatedOptionalOutputsDescription forKey:kUpdatedOptionalOutputsDescription];

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

    self.name = [aDecoder decodeObjectForKey:kUpdatedOptionalOutputsName];
    self.type = [aDecoder decodeObjectForKey:kUpdatedOptionalOutputsType];
    self.updatedOptionalOutputsDescription = [aDecoder decodeObjectForKey:kUpdatedOptionalOutputsDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kUpdatedOptionalOutputsName];
    [aCoder encodeObject:_type forKey:kUpdatedOptionalOutputsType];
    [aCoder encodeObject:_updatedOptionalOutputsDescription forKey:kUpdatedOptionalOutputsDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    UpdatedOptionalOutputs *copy = [[UpdatedOptionalOutputs alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.updatedOptionalOutputsDescription = [self.updatedOptionalOutputsDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
