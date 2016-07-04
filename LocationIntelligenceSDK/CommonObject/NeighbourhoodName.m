//
//  Name.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "NeighbourhoodName.h"


NSString *const kNameValue = @"value";
NSString *const kNameLangISOCode = @"langISOCode";
NSString *const kNameLangType = @"langType";


@interface NeighbourhoodName ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation NeighbourhoodName

@synthesize value = _value;
@synthesize langISOCode = _langISOCode;
@synthesize langType = _langType;


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
        self.value = [self objectOrNilForKey:kNameValue fromDictionary:dict];
        self.langISOCode = [self objectOrNilForKey:kNameLangISOCode fromDictionary:dict];
        self.langType = [self objectOrNilForKey:kNameLangType fromDictionary:dict];
        
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.value forKey:kNameValue];
    [mutableDict setValue:self.langISOCode forKey:kNameLangISOCode];
    [mutableDict setValue:self.langType forKey:kNameLangType];
    
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
    
    self.value = [aDecoder decodeObjectForKey:kNameValue];
    self.langISOCode = [aDecoder decodeObjectForKey:kNameLangISOCode];
    self.langType = [aDecoder decodeObjectForKey:kNameLangType];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    [aCoder encodeObject:_value forKey:kNameValue];
    [aCoder encodeObject:_langISOCode forKey:kNameLangISOCode];
    [aCoder encodeObject:_langType forKey:kNameLangType];
}

- (id)copyWithZone:(NSZone *)zone
{
    NeighbourhoodName *copy = [[NeighbourhoodName alloc] init];
    
    if (copy) {
        
        copy.value = [self.value copyWithZone:zone];
        copy.langISOCode = [self.langISOCode copyWithZone:zone];
        copy.langType = [self.langType copyWithZone:zone];
    }
    
    return copy;
}


@end
