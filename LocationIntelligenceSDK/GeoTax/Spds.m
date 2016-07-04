//
//  Spds.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Spds.h"


NSString *const kSpdsUpdateDate = @"updateDate";
NSString *const kSpdsDistrictName = @"districtName";
NSString *const kSpdsVersionDate = @"versionDate";
NSString *const kSpdsDistrictCode = @"districtCode";
NSString *const kSpdsCompiledDate = @"compiledDate";
NSString *const kSpdsDistrictNumber = @"districtNumber";
NSString *const kSpdsEffectiveDate = @"effectiveDate";


@interface Spds ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Spds

@synthesize updateDate = _updateDate;
@synthesize districtName = _districtName;
@synthesize versionDate = _versionDate;
@synthesize districtCode = _districtCode;
@synthesize compiledDate = _compiledDate;
@synthesize districtNumber = _districtNumber;
@synthesize effectiveDate = _effectiveDate;


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
            self.updateDate = [self objectOrNilForKey:kSpdsUpdateDate fromDictionary:dict];
            self.districtName = [self objectOrNilForKey:kSpdsDistrictName fromDictionary:dict];
            self.versionDate = [self objectOrNilForKey:kSpdsVersionDate fromDictionary:dict];
            self.districtCode = [self objectOrNilForKey:kSpdsDistrictCode fromDictionary:dict];
            self.compiledDate = [self objectOrNilForKey:kSpdsCompiledDate fromDictionary:dict];
            self.districtNumber = [self objectOrNilForKey:kSpdsDistrictNumber fromDictionary:dict];
            self.effectiveDate = [self objectOrNilForKey:kSpdsEffectiveDate fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.updateDate forKey:kSpdsUpdateDate];
    [mutableDict setValue:self.districtName forKey:kSpdsDistrictName];
    [mutableDict setValue:self.versionDate forKey:kSpdsVersionDate];
    [mutableDict setValue:self.districtCode forKey:kSpdsDistrictCode];
    [mutableDict setValue:self.compiledDate forKey:kSpdsCompiledDate];
    [mutableDict setValue:self.districtNumber forKey:kSpdsDistrictNumber];
    [mutableDict setValue:self.effectiveDate forKey:kSpdsEffectiveDate];

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

    self.updateDate = [aDecoder decodeObjectForKey:kSpdsUpdateDate];
    self.districtName = [aDecoder decodeObjectForKey:kSpdsDistrictName];
    self.versionDate = [aDecoder decodeObjectForKey:kSpdsVersionDate];
    self.districtCode = [aDecoder decodeObjectForKey:kSpdsDistrictCode];
    self.compiledDate = [aDecoder decodeObjectForKey:kSpdsCompiledDate];
    self.districtNumber = [aDecoder decodeObjectForKey:kSpdsDistrictNumber];
    self.effectiveDate = [aDecoder decodeObjectForKey:kSpdsEffectiveDate];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_updateDate forKey:kSpdsUpdateDate];
    [aCoder encodeObject:_districtName forKey:kSpdsDistrictName];
    [aCoder encodeObject:_versionDate forKey:kSpdsVersionDate];
    [aCoder encodeObject:_districtCode forKey:kSpdsDistrictCode];
    [aCoder encodeObject:_compiledDate forKey:kSpdsCompiledDate];
    [aCoder encodeObject:_districtNumber forKey:kSpdsDistrictNumber];
    [aCoder encodeObject:_effectiveDate forKey:kSpdsEffectiveDate];
}

- (id)copyWithZone:(NSZone *)zone
{
    Spds *copy = [[Spds alloc] init];
    
    if (copy) {

        copy.updateDate = [self.updateDate copyWithZone:zone];
        copy.districtName = [self.districtName copyWithZone:zone];
        copy.versionDate = [self.versionDate copyWithZone:zone];
        copy.districtCode = [self.districtCode copyWithZone:zone];
        copy.compiledDate = [self.compiledDate copyWithZone:zone];
        copy.districtNumber = [self.districtNumber copyWithZone:zone];
        copy.effectiveDate = [self.effectiveDate copyWithZone:zone];
    }
    
    return copy;
}


@end
