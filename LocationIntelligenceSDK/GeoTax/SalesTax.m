//
//  SalesTax.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "SalesTax.h"
#import "SpdsTax.h"


NSString *const kSalesTaxTotalTaxAmount = @"totalTaxAmount";
NSString *const kSalesTaxTotalTaxRate = @"totalTaxRate";
NSString *const kSalesTaxMunicipalTaxAmount = @"municipalTaxAmount";
NSString *const kSalesTaxCountyTaxAmount = @"countyTaxAmount";
NSString *const kSalesTaxStateTaxAmount = @"stateTaxAmount";
NSString *const kSalesTaxStateTaxRate = @"stateTaxRate";
NSString *const kSalesTaxCountyTaxRate = @"countyTaxRate";
NSString *const kSalesTaxMunicipalTaxRate = @"municipalTaxRate";
NSString *const kSalesTaxSpdsTax = @"spdsTax";


@interface SalesTax ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SalesTax

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
            self.totalTaxAmount = [[self objectOrNilForKey:kSalesTaxTotalTaxAmount fromDictionary:dict] doubleValue];
            self.totalTaxRate = [[self objectOrNilForKey:kSalesTaxTotalTaxRate fromDictionary:dict] doubleValue];
            self.municipalTaxAmount = [[self objectOrNilForKey:kSalesTaxMunicipalTaxAmount fromDictionary:dict] doubleValue];
            self.countyTaxAmount = [[self objectOrNilForKey:kSalesTaxCountyTaxAmount fromDictionary:dict] doubleValue];
            self.stateTaxAmount = [[self objectOrNilForKey:kSalesTaxStateTaxAmount fromDictionary:dict] doubleValue];
            self.stateTaxRate = [[self objectOrNilForKey:kSalesTaxStateTaxRate fromDictionary:dict] doubleValue];
            self.countyTaxRate = [[self objectOrNilForKey:kSalesTaxCountyTaxRate fromDictionary:dict] doubleValue];
            self.municipalTaxRate = [[self objectOrNilForKey:kSalesTaxMunicipalTaxRate fromDictionary:dict] doubleValue];
    NSObject *receivedSpdsTax = [dict objectForKey:kSalesTaxSpdsTax];
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
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalTaxAmount] forKey:kSalesTaxTotalTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalTaxRate] forKey:kSalesTaxTotalTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.municipalTaxAmount] forKey:kSalesTaxMunicipalTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.countyTaxAmount] forKey:kSalesTaxCountyTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.stateTaxAmount] forKey:kSalesTaxStateTaxAmount];
    [mutableDict setValue:[NSNumber numberWithDouble:self.stateTaxRate] forKey:kSalesTaxStateTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.countyTaxRate] forKey:kSalesTaxCountyTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.municipalTaxRate] forKey:kSalesTaxMunicipalTaxRate];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSpdsTax] forKey:kSalesTaxSpdsTax];

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

    self.totalTaxAmount = [aDecoder decodeDoubleForKey:kSalesTaxTotalTaxAmount];
    self.totalTaxRate = [aDecoder decodeDoubleForKey:kSalesTaxTotalTaxRate];
    self.municipalTaxAmount = [aDecoder decodeDoubleForKey:kSalesTaxMunicipalTaxAmount];
    self.countyTaxAmount = [aDecoder decodeDoubleForKey:kSalesTaxCountyTaxAmount];
    self.stateTaxAmount = [aDecoder decodeDoubleForKey:kSalesTaxStateTaxAmount];
    self.stateTaxRate = [aDecoder decodeDoubleForKey:kSalesTaxStateTaxRate];
    self.countyTaxRate = [aDecoder decodeDoubleForKey:kSalesTaxCountyTaxRate];
    self.municipalTaxRate = [aDecoder decodeDoubleForKey:kSalesTaxMunicipalTaxRate];
    self.spdsTax = [aDecoder decodeObjectForKey:kSalesTaxSpdsTax];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_totalTaxAmount forKey:kSalesTaxTotalTaxAmount];
    [aCoder encodeDouble:_totalTaxRate forKey:kSalesTaxTotalTaxRate];
    [aCoder encodeDouble:_municipalTaxAmount forKey:kSalesTaxMunicipalTaxAmount];
    [aCoder encodeDouble:_countyTaxAmount forKey:kSalesTaxCountyTaxAmount];
    [aCoder encodeDouble:_stateTaxAmount forKey:kSalesTaxStateTaxAmount];
    [aCoder encodeDouble:_stateTaxRate forKey:kSalesTaxStateTaxRate];
    [aCoder encodeDouble:_countyTaxRate forKey:kSalesTaxCountyTaxRate];
    [aCoder encodeDouble:_municipalTaxRate forKey:kSalesTaxMunicipalTaxRate];
    [aCoder encodeObject:_spdsTax forKey:kSalesTaxSpdsTax];
}

- (id)copyWithZone:(NSZone *)zone
{
    SalesTax *copy = [[SalesTax alloc] init];
    
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
