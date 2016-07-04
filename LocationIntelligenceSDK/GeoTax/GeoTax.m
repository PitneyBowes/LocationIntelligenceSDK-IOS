//
//  BaseClass.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeoTax.h"
#import "Address.h"
#import "Jurisdiction.h"
#import "SalesTax.h"
#import "UseTax.h"


NSString *const kBaseClassMatchedAddress = @"matchedAddress";
NSString *const kBaseClassConfidence = @"confidence";
NSString *const kBaseClassJurisdiction = @"jurisdiction";
NSString *const kBaseClassSalesTax = @"salesTax";
NSString *const kBaseClassUseTax = @"useTax";


@interface GeoTax ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeoTax

@synthesize matchedAddress = _matchedAddress;
@synthesize confidence = _confidence;
@synthesize jurisdiction = _jurisdiction;
@synthesize salesTax = _salesTax;
@synthesize useTax = _useTax;


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
            self.matchedAddress = [Address modelObjectWithDictionary:[dict objectForKey:kBaseClassMatchedAddress]];
            self.confidence = [[self objectOrNilForKey:kBaseClassConfidence fromDictionary:dict] doubleValue];
            self.jurisdiction = [Jurisdiction modelObjectWithDictionary:[dict objectForKey:kBaseClassJurisdiction]];
            self.salesTax = [SalesTax modelObjectWithDictionary:[dict objectForKey:kBaseClassSalesTax]];
            self.useTax = [UseTax modelObjectWithDictionary:[dict objectForKey:kBaseClassUseTax]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.matchedAddress dictionaryRepresentation] forKey:kBaseClassMatchedAddress];
    [mutableDict setValue:[NSNumber numberWithDouble:self.confidence] forKey:kBaseClassConfidence];
    [mutableDict setValue:[self.jurisdiction dictionaryRepresentation] forKey:kBaseClassJurisdiction];
    [mutableDict setValue:[self.salesTax dictionaryRepresentation] forKey:kBaseClassSalesTax];
    [mutableDict setValue:[self.useTax dictionaryRepresentation] forKey:kBaseClassUseTax];

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

    self.matchedAddress = [aDecoder decodeObjectForKey:kBaseClassMatchedAddress];
    self.confidence = [aDecoder decodeDoubleForKey:kBaseClassConfidence];
    self.jurisdiction = [aDecoder decodeObjectForKey:kBaseClassJurisdiction];
    self.salesTax = [aDecoder decodeObjectForKey:kBaseClassSalesTax];
    self.useTax = [aDecoder decodeObjectForKey:kBaseClassUseTax];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_matchedAddress forKey:kBaseClassMatchedAddress];
    [aCoder encodeDouble:_confidence forKey:kBaseClassConfidence];
    [aCoder encodeObject:_jurisdiction forKey:kBaseClassJurisdiction];
    [aCoder encodeObject:_salesTax forKey:kBaseClassSalesTax];
    [aCoder encodeObject:_useTax forKey:kBaseClassUseTax];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeoTax *copy = [[GeoTax alloc] init];
    
    if (copy) {

        copy.matchedAddress = [self.matchedAddress copyWithZone:zone];
        copy.confidence = self.confidence;
        copy.jurisdiction = [self.jurisdiction copyWithZone:zone];
        copy.salesTax = [self.salesTax copyWithZone:zone];
        copy.useTax = [self.useTax copyWithZone:zone];
    }
    
    return copy;
}


@end
