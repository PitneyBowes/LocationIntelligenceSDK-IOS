//
//  Place.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeoTaxPlace.h"


NSString *const kgeoTaxPlaceName = @"name";
NSString *const kPlaceClassCode = @"classCode";
NSString *const kPlaceCode = @"code";
NSString *const kPlaceLastVerifiedDate = @"lastVerifiedDate";
NSString *const kPlaceIncorporatedFlag = @"incorporatedFlag";
NSString *const kPlaceLastAnnexedDate = @"lastAnnexedDate";
NSString *const kPlaceLastUpdatedDate = @"lastUpdatedDate";


@interface GeoTaxPlace ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeoTaxPlace

@synthesize name = _name;
@synthesize classCode = _classCode;
@synthesize code = _code;
@synthesize lastVerifiedDate = _lastVerifiedDate;
@synthesize incorporatedFlag = _incorporatedFlag;
@synthesize lastAnnexedDate = _lastAnnexedDate;
@synthesize lastUpdatedDate = _lastUpdatedDate;


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
            self.name = [self objectOrNilForKey:kgeoTaxPlaceName fromDictionary:dict];
            self.classCode = [self objectOrNilForKey:kPlaceClassCode fromDictionary:dict];
            self.code = [self objectOrNilForKey:kPlaceCode fromDictionary:dict];
            self.lastVerifiedDate = [self objectOrNilForKey:kPlaceLastVerifiedDate fromDictionary:dict];
            self.incorporatedFlag = [self objectOrNilForKey:kPlaceIncorporatedFlag fromDictionary:dict];
            self.lastAnnexedDate = [self objectOrNilForKey:kPlaceLastAnnexedDate fromDictionary:dict];
            self.lastUpdatedDate = [self objectOrNilForKey:kPlaceLastUpdatedDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kgeoTaxPlaceName];
    [mutableDict setValue:self.classCode forKey:kPlaceClassCode];
    [mutableDict setValue:self.code forKey:kPlaceCode];
    [mutableDict setValue:self.lastVerifiedDate forKey:kPlaceLastVerifiedDate];
    [mutableDict setValue:self.incorporatedFlag forKey:kPlaceIncorporatedFlag];
    [mutableDict setValue:self.lastAnnexedDate forKey:kPlaceLastAnnexedDate];
    [mutableDict setValue:self.lastUpdatedDate forKey:kPlaceLastUpdatedDate];

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

    self.name = [aDecoder decodeObjectForKey:kgeoTaxPlaceName];
    self.classCode = [aDecoder decodeObjectForKey:kPlaceClassCode];
    self.code = [aDecoder decodeObjectForKey:kPlaceCode];
    self.lastVerifiedDate = [aDecoder decodeObjectForKey:kPlaceLastVerifiedDate];
    self.incorporatedFlag = [aDecoder decodeObjectForKey:kPlaceIncorporatedFlag];
    self.lastAnnexedDate = [aDecoder decodeObjectForKey:kPlaceLastAnnexedDate];
    self.lastUpdatedDate = [aDecoder decodeObjectForKey:kPlaceLastUpdatedDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kgeoTaxPlaceName];
    [aCoder encodeObject:_classCode forKey:kPlaceClassCode];
    [aCoder encodeObject:_code forKey:kPlaceCode];
    [aCoder encodeObject:_lastVerifiedDate forKey:kPlaceLastVerifiedDate];
    [aCoder encodeObject:_incorporatedFlag forKey:kPlaceIncorporatedFlag];
    [aCoder encodeObject:_lastAnnexedDate forKey:kPlaceLastAnnexedDate];
    [aCoder encodeObject:_lastUpdatedDate forKey:kPlaceLastUpdatedDate];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeoTaxPlace *copy = [[GeoTaxPlace alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.classCode = [self.classCode copyWithZone:zone];
        copy.code = [self.code copyWithZone:zone];
        copy.lastVerifiedDate = [self.lastVerifiedDate copyWithZone:zone];
        copy.incorporatedFlag = [self.incorporatedFlag copyWithZone:zone];
        copy.lastAnnexedDate = [self.lastAnnexedDate copyWithZone:zone];
        copy.lastUpdatedDate = [self.lastUpdatedDate copyWithZone:zone];
    }
    
    return copy;
}


@end
