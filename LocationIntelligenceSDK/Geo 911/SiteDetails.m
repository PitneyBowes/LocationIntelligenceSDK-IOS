//
//  SiteDetails.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "SiteDetails.h"
#import "Address.h"


NSString *const kSiteDetailsPhone = @"phone";
NSString *const kSiteDetailsFax = @"fax";
NSString *const kSiteDetailsAddress = @"address";


@interface SiteDetails ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SiteDetails

@synthesize phone = _phone;
@synthesize fax = _fax;
@synthesize address = _address;


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
            self.phone = [self objectOrNilForKey:kSiteDetailsPhone fromDictionary:dict];
            self.fax = [self objectOrNilForKey:kSiteDetailsFax fromDictionary:dict];
            self.address = [Address modelObjectWithDictionary:[dict objectForKey:kSiteDetailsAddress]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.phone forKey:kSiteDetailsPhone];
    [mutableDict setValue:self.fax forKey:kSiteDetailsFax];
    [mutableDict setValue:[self.address dictionaryRepresentation] forKey:kSiteDetailsAddress];

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

    self.phone = [aDecoder decodeObjectForKey:kSiteDetailsPhone];
    self.fax = [aDecoder decodeObjectForKey:kSiteDetailsFax];
    self.address = [aDecoder decodeObjectForKey:kSiteDetailsAddress];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_phone forKey:kSiteDetailsPhone];
    [aCoder encodeObject:_fax forKey:kSiteDetailsFax];
    [aCoder encodeObject:_address forKey:kSiteDetailsAddress];
}

- (id)copyWithZone:(NSZone *)zone
{
    SiteDetails *copy = [[SiteDetails alloc] init];
    
    if (copy) {

        copy.phone = [self.phone copyWithZone:zone];
        copy.fax = [self.fax copyWithZone:zone];
        copy.address = [self.address copyWithZone:zone];
    }
    
    return copy;
}


@end
