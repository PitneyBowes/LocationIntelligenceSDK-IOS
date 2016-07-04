//
//  Outputs.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Outputs.h"


NSString *const kOutputsName = @"name";
NSString *const kOutputsType = @"type";
NSString *const kOutputsDescription = @"description";


@interface Outputs ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Outputs

@synthesize name = _name;
@synthesize type = _type;
@synthesize outputsDescription = _outputsDescription;


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
            self.name = [self objectOrNilForKey:kOutputsName fromDictionary:dict];
            self.type = [self objectOrNilForKey:kOutputsType fromDictionary:dict];
            self.outputsDescription = [self objectOrNilForKey:kOutputsDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kOutputsName];
    [mutableDict setValue:self.type forKey:kOutputsType];
    [mutableDict setValue:self.outputsDescription forKey:kOutputsDescription];

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

    self.name = [aDecoder decodeObjectForKey:kOutputsName];
    self.type = [aDecoder decodeObjectForKey:kOutputsType];
    self.outputsDescription = [aDecoder decodeObjectForKey:kOutputsDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kOutputsName];
    [aCoder encodeObject:_type forKey:kOutputsType];
    [aCoder encodeObject:_outputsDescription forKey:kOutputsDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    Outputs *copy = [[Outputs alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.outputsDescription = [self.outputsDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
