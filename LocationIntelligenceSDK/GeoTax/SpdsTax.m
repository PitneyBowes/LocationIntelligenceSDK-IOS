//
//  SpdsTax.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "SpdsTax.h"


NSString *const kSpdsTaxDistrictNumber = @"districtNumber";
NSString *const kSpdsTaxTaxRate = @"taxRate";
NSString *const kSpdsTaxTaxAmount = @"taxAmount";


@interface SpdsTax ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SpdsTax

@synthesize districtNumber = _districtNumber;
@synthesize taxRate = _taxRate;
@synthesize taxAmount = _taxAmount;


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
            self.districtNumber = [self objectOrNilForKey:kSpdsTaxDistrictNumber fromDictionary:dict];
            self.taxRate = [[self objectOrNilForKey:kSpdsTaxTaxRate fromDictionary:dict] doubleValue];
            self.taxAmount = [[self objectOrNilForKey:kSpdsTaxTaxAmount fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.districtNumber forKey:kSpdsTaxDistrictNumber];
    [mutableDict setValue:[NSNumber numberWithDouble:self.taxRate] forKey:kSpdsTaxTaxRate];
    [mutableDict setValue:[NSNumber numberWithDouble:self.taxAmount] forKey:kSpdsTaxTaxAmount];

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

    self.districtNumber = [aDecoder decodeObjectForKey:kSpdsTaxDistrictNumber];
    self.taxRate = [aDecoder decodeDoubleForKey:kSpdsTaxTaxRate];
    self.taxAmount = [aDecoder decodeDoubleForKey:kSpdsTaxTaxAmount];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_districtNumber forKey:kSpdsTaxDistrictNumber];
    [aCoder encodeDouble:_taxRate forKey:kSpdsTaxTaxRate];
    [aCoder encodeDouble:_taxAmount forKey:kSpdsTaxTaxAmount];
}

- (id)copyWithZone:(NSZone *)zone
{
    SpdsTax *copy = [[SpdsTax alloc] init];
    
    if (copy) {

        copy.districtNumber = [self.districtNumber copyWithZone:zone];
        copy.taxRate = self.taxRate;
        copy.taxAmount = self.taxAmount;
    }
    
    return copy;
}


@end
