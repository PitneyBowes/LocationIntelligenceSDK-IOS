//
//  Properties.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "CapabilityProperties.h"
#import "Output.h"


NSString *const kCapabilityPropertiesName = @"name";
NSString *const kPropertiesInput = @"input";
NSString *const kPropertiesOutput = @"output";


@interface CapabilityProperties ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CapabilityProperties

@synthesize name = _name;
@synthesize input = _input;
@synthesize output = _output;


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
            self.name = [self objectOrNilForKey:kCapabilityPropertiesName fromDictionary:dict];
            self.input = [self objectOrNilForKey:kPropertiesInput fromDictionary:dict];
            self.output = [Output modelObjectWithDictionary:[dict objectForKey:kPropertiesOutput]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kCapabilityPropertiesName];
    [mutableDict setValue:self.input forKey:kPropertiesInput];
    [mutableDict setValue:[self.output dictionaryRepresentation] forKey:kPropertiesOutput];

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

    self.name = [aDecoder decodeObjectForKey:kCapabilityPropertiesName];
    self.input = [aDecoder decodeObjectForKey:kPropertiesInput];
    self.output = [aDecoder decodeObjectForKey:kPropertiesOutput];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kCapabilityPropertiesName];
    [aCoder encodeObject:_input forKey:kPropertiesInput];
    [aCoder encodeObject:_output forKey:kPropertiesOutput];
}

- (id)copyWithZone:(NSZone *)zone
{
    CapabilityProperties *copy = [[CapabilityProperties alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.input = [self.input copyWithZone:zone];
        copy.output = [self.output copyWithZone:zone];
    }
    
    return copy;
}


@end
