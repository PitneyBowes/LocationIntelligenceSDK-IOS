//
//  UseTax.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "UseTax.h"
#import "SpdsTax.h"


NSString *const kUseTaxTotalTaxAmount = @"totalTaxAmount";
NSString *const kUseTaxTotalTaxRate = @"totalTaxRate";
NSString *const kUseTaxMunicipalTaxAmount = @"municipalTaxAmount";
NSString *const kUseTaxCountyTaxAmount = @"countyTaxAmount";
NSString *const kUseTaxStateTaxAmount = @"stateTaxAmount";
NSString *const kUseTaxStateTaxRate = @"stateTaxRate";
NSString *const kUseTaxCountyTaxRate = @"countyTaxRate";
NSString *const kUseTaxMunicipalTaxRate = @"municipalTaxRate";
NSString *const kUseTaxSpdsTax = @"spdsTax";


@interface UseTax ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation UseTax

@synthesize totalTaxAmount = _totalTaxAmount;
@synthesize totalTaxRate = _totalTaxRate;
@synthesize municipalTaxAmount = _municipalTaxAmount;
@synthesize countyTaxAmount = _countyTaxAmount;
@synthesize stateTaxAmount = _stateTaxAmount;
@synthesize stateTaxRate = _stateTaxRate;
@synthesize countyTaxRate = _countyTaxRate;
@synthesize municipalTaxRate = _municipalTaxRate;
@synthesize spdsTax = _spdsTax;


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
            self.totalTaxAmount = [[self objectOrNilForKey:kUseTaxTotalTaxAmount fromDictionary:dict] doubleValue];
            self.totalTaxRate = [[self objectOrNilForKey:kUseTaxTotalTaxRate fromDictionary:dict] doubleValue];
            self.municipalTaxAmount = [[self objectOrNilForKey:kUseTaxMunicipalTaxAmount fromDictionary:dict] doubleValue];
            self.countyTaxAmount = [[self objectOrNilForKey:kUseTaxCountyTaxAmount fromDictionary:dict] doubleValue];
            self.stateTaxAmount = [[self objectOrNilForKey:kUseTaxStateTaxAmount fromDictionary:dict] doubleValue];
            self.stateTaxRate = [[self objectOrNilForKey:kUseTaxStateTaxRate fromDictionary:dict] doubleValue];
            self.countyTaxRate = [[self objectOrNilForKey:kUseTaxCountyTaxRate fromDictionary:dict] doubleValue];
            self.municipalTaxRate = [[self objectOrNilForKey:kUseTaxMunicipalTaxRate fromDictionary:dict] doubleValue];
    NSObject *receivedSpdsTax = [dict objectForKey:kUseTaxSpdsTax];
    NSMutableArray *parsedSpdsTax = [NSMutableArray array];
    if ([receivedSpdsTax isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedSpdsTax) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedSpdsTax addObject:[SpdsTax modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedSpdsTax isKindOfClass:[NSDictionary class]]) {
       [parsedSpdsTax addObject:[SpdsTax modelObjectWithDictionary:(NSDictionary *)receivedSpdsTax]];
    }

    self.spdsTax = [NSArray arrayWithArray:parsedSpdsTax];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalTaxAmount] forKey:kUseTaxTotalTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalTaxRate] forKey:kUseTaxTotalTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.municipalTaxAmount] forKey:kUseTaxMunicipalTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.countyTaxAmount] forKey:kUseTaxCountyTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.stateTaxAmount] forKey:kUseTaxStateTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.stateTaxRate] forKey:kUseTaxStateTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.countyTaxRate] forKey:kUseTaxCountyTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.municipalTaxRate] forKey:kUseTaxMunicipalTaxRate];
    NSMutableArray *tempArrayForSpdsTax = [NSMutableArray array];
    for (NSObject *subArrayObject in self.spdsTax) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSpdsTax addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSpdsTax addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSpdsTax] forKey:kUseTaxSpdsTax];

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

    self.totalTaxAmount = [aDecoder decodeDoubleForKey:kUseTaxTotalTaxAmount];
    self.totalTaxRate = [aDecoder decodeDoubleForKey:kUseTaxTotalTaxRate];
    self.municipalTaxAmount = [aDecoder decodeDoubleForKey:kUseTaxMunicipalTaxAmount];
    self.countyTaxAmount = [aDecoder decodeDoubleForKey:kUseTaxCountyTaxAmount];
    self.stateTaxAmount = [aDecoder decodeDoubleForKey:kUseTaxStateTaxAmount];
    self.stateTaxRate = [aDecoder decodeDoubleForKey:kUseTaxStateTaxRate];
    self.countyTaxRate = [aDecoder decodeDoubleForKey:kUseTaxCountyTaxRate];
    self.municipalTaxRate = [aDecoder decodeDoubleForKey:kUseTaxMunicipalTaxRate];
    self.spdsTax = [aDecoder decodeObjectForKey:kUseTaxSpdsTax];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_totalTaxAmount forKey:kUseTaxTotalTaxAmount];
    [aCoder encodeDouble:_totalTaxRate forKey:kUseTaxTotalTaxRate];
    [aCoder encodeDouble:_municipalTaxAmount forKey:kUseTaxMunicipalTaxAmount];
    [aCoder encodeDouble:_countyTaxAmount forKey:kUseTaxCountyTaxAmount];
    [aCoder encodeDouble:_stateTaxAmount forKey:kUseTaxStateTaxAmount];
    [aCoder encodeDouble:_stateTaxRate forKey:kUseTaxStateTaxRate];
    [aCoder encodeDouble:_countyTaxRate forKey:kUseTaxCountyTaxRate];
    [aCoder encodeDouble:_municipalTaxRate forKey:kUseTaxMunicipalTaxRate];
    [aCoder encodeObject:_spdsTax forKey:kUseTaxSpdsTax];
}

- (id)copyWithZone:(NSZone *)zone
{
    UseTax *copy = [[UseTax alloc] init];
    
    if (copy) {

        copy.totalTaxAmount = self.totalTaxAmount;
        copy.totalTaxRate = self.totalTaxRate;
        copy.municipalTaxAmount = self.municipalTaxAmount;
        copy.countyTaxAmount = self.countyTaxAmount;
        copy.stateTaxAmount = self.stateTaxAmount;
        copy.stateTaxRate = self.stateTaxRate;
        copy.countyTaxRate = self.countyTaxRate;
        copy.municipalTaxRate = self.municipalTaxRate;
        copy.spdsTax = [self.spdsTax copyWithZone:zone];
    }
    
    return copy;
}


@end
