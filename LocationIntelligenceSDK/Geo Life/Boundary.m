//
//  Boundary.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Boundary.h"


NSString *const kBoundaryBoundaryId = @"boundaryId";
NSString *const kBoundaryXmlid = @"xmlid";
NSString *const kBoundaryBoundaryType = @"boundaryType";


@interface Boundary ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Boundary

@synthesize boundaryId = _boundaryId;
@synthesize xmlid = _xmlid;
@synthesize boundaryType = _boundaryType;


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
            self.boundaryId = [self objectOrNilForKey:kBoundaryBoundaryId fromDictionary:dict];
            self.xmlid = [self objectOrNilForKey:kBoundaryXmlid fromDictionary:dict];
            self.boundaryType = [self objectOrNilForKey:kBoundaryBoundaryType fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.boundaryId forKey:kBoundaryBoundaryId];
    [mutableDict setValue:self.xmlid forKey:kBoundaryXmlid];
    [mutableDict setValue:self.boundaryType forKey:kBoundaryBoundaryType];

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

    self.boundaryId = [aDecoder decodeObjectForKey:kBoundaryBoundaryId];
    self.xmlid = [aDecoder decodeObjectForKey:kBoundaryXmlid];
    self.boundaryType = [aDecoder decodeObjectForKey:kBoundaryBoundaryType];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_boundaryId forKey:kBoundaryBoundaryId];
    [aCoder encodeObject:_xmlid forKey:kBoundaryXmlid];
    [aCoder encodeObject:_boundaryType forKey:kBoundaryBoundaryType];
}

- (id)copyWithZone:(NSZone *)zone
{
    Boundary *copy = [[Boundary alloc] init];
    
    if (copy) {

        copy.boundaryId = [self.boundaryId copyWithZone:zone];
        copy.xmlid = [self.xmlid copyWithZone:zone];
        copy.boundaryType = [self.boundaryType copyWithZone:zone];
    }
    
    return copy;
}


@end
