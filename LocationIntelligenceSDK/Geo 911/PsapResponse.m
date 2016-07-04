//
//  Geo911.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "PsapResponse.h"
#import "ContactPerson.h"
#import "County.h"
#import "SiteDetails.h"
#import "Coverage.h"
#import "Address.h"


NSString *const kGeo911Phone = @"phone";
NSString *const kGeo911ContactPerson = @"contactPerson";
NSString *const kGeo911County = @"county";
NSString *const kGeo911Agency = @"agency";
NSString *const kGeo911SiteDetails = @"siteDetails";
NSString *const kGeo911FccId = @"fccId";
NSString *const kGeo911Type = @"type";
NSString *const kGeo911Coverage = @"coverage";
NSString *const kGeo911MailingAddress = @"mailingAddress";


@interface PsapResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation PsapResponse

@synthesize phone = _phone;
@synthesize contactPerson = _contactPerson;
@synthesize county = _county;
@synthesize agency = _agency;
@synthesize siteDetails = _siteDetails;
@synthesize fccId = _fccId;
@synthesize type = _type;
@synthesize coverage = _coverage;
@synthesize mailingAddress = _mailingAddress;


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
            self.phone = [self objectOrNilForKey:kGeo911Phone fromDictionary:dict];
            self.contactPerson = [ContactPerson modelObjectWithDictionary:[dict objectForKey:kGeo911ContactPerson]];
            self.county = [County modelObjectWithDictionary:[dict objectForKey:kGeo911County]];
            self.agency = [self objectOrNilForKey:kGeo911Agency fromDictionary:dict];
            self.siteDetails = [SiteDetails modelObjectWithDictionary:[dict objectForKey:kGeo911SiteDetails]];
            self.fccId = [self objectOrNilForKey:kGeo911FccId fromDictionary:dict];
            self.type = [self objectOrNilForKey:kGeo911Type fromDictionary:dict];
            self.coverage = [Coverage modelObjectWithDictionary:[dict objectForKey:kGeo911Coverage]];
            self.mailingAddress = [Address modelObjectWithDictionary:[dict objectForKey:kGeo911MailingAddress]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.phone forKey:kGeo911Phone];
    [mutableDict setValue:[self.contactPerson dictionaryRepresentation] forKey:kGeo911ContactPerson];
    [mutableDict setValue:[self.county dictionaryRepresentation] forKey:kGeo911County];
    [mutableDict setValue:self.agency forKey:kGeo911Agency];
    [mutableDict setValue:[self.siteDetails dictionaryRepresentation] forKey:kGeo911SiteDetails];
    [mutableDict setValue:self.fccId forKey:kGeo911FccId];
    [mutableDict setValue:self.type forKey:kGeo911Type];
    [mutableDict setValue:[self.coverage dictionaryRepresentation] forKey:kGeo911Coverage];
    [mutableDict setValue:[self.mailingAddress dictionaryRepresentation] forKey:kGeo911MailingAddress];

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

    self.phone = [aDecoder decodeObjectForKey:kGeo911Phone];
    self.contactPerson = [aDecoder decodeObjectForKey:kGeo911ContactPerson];
    self.county = [aDecoder decodeObjectForKey:kGeo911County];
    self.agency = [aDecoder decodeObjectForKey:kGeo911Agency];
    self.siteDetails = [aDecoder decodeObjectForKey:kGeo911SiteDetails];
    self.fccId = [aDecoder decodeObjectForKey:kGeo911FccId];
    self.type = [aDecoder decodeObjectForKey:kGeo911Type];
    self.coverage = [aDecoder decodeObjectForKey:kGeo911Coverage];
    self.mailingAddress = [aDecoder decodeObjectForKey:kGeo911MailingAddress];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_phone forKey:kGeo911Phone];
    [aCoder encodeObject:_contactPerson forKey:kGeo911ContactPerson];
    [aCoder encodeObject:_county forKey:kGeo911County];
    [aCoder encodeObject:_agency forKey:kGeo911Agency];
    [aCoder encodeObject:_siteDetails forKey:kGeo911SiteDetails];
    [aCoder encodeObject:_fccId forKey:kGeo911FccId];
    [aCoder encodeObject:_type forKey:kGeo911Type];
    [aCoder encodeObject:_coverage forKey:kGeo911Coverage];
    [aCoder encodeObject:_mailingAddress forKey:kGeo911MailingAddress];
}

- (id)copyWithZone:(NSZone *)zone
{
    PsapResponse *copy = [[PsapResponse alloc] init];
    
    if (copy) {

        copy.phone = [self.phone copyWithZone:zone];
        copy.contactPerson = [self.contactPerson copyWithZone:zone];
        copy.county = [self.county copyWithZone:zone];
        copy.agency = [self.agency copyWithZone:zone];
        copy.siteDetails = [self.siteDetails copyWithZone:zone];
        copy.fccId = [self.fccId copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.coverage = [self.coverage copyWithZone:zone];
        copy.mailingAddress = [self.mailingAddress copyWithZone:zone];
    }
    
    return copy;
}


@end
