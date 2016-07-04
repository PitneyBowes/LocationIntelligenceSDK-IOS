//
//  ContactDetails.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ContactDetails.h"
#import "Address.h"


NSString *const kContactDetailsEmail = @"email";
NSString *const kContactDetailsPhone = @"phone";
NSString *const kContactDetailsFax = @"fax";
NSString *const kContactDetailsUrl = @"url";
NSString *const kContactDetailsAddress = @"address";


@interface ContactDetails ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ContactDetails

@synthesize email = _email;
@synthesize phone = _phone;
@synthesize fax = _fax;
@synthesize url = _url;
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
            self.email = [self objectOrNilForKey:kContactDetailsEmail fromDictionary:dict];
            self.phone = [self objectOrNilForKey:kContactDetailsPhone fromDictionary:dict];
            self.fax = [self objectOrNilForKey:kContactDetailsFax fromDictionary:dict];
            self.url = [self objectOrNilForKey:kContactDetailsUrl fromDictionary:dict];
            self.address = [Address modelObjectWithDictionary:[dict objectForKey:kContactDetailsAddress]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.email forKey:kContactDetailsEmail];
    [mutableDict setValue:self.phone forKey:kContactDetailsPhone];
    [mutableDict setValue:self.fax forKey:kContactDetailsFax];
    [mutableDict setValue:self.url forKey:kContactDetailsUrl];
    [mutableDict setValue:[self.address dictionaryRepresentation] forKey:kContactDetailsAddress];

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

    self.email = [aDecoder decodeObjectForKey:kContactDetailsEmail];
    self.phone = [aDecoder decodeObjectForKey:kContactDetailsPhone];
    self.fax = [aDecoder decodeObjectForKey:kContactDetailsFax];
    self.url = [aDecoder decodeObjectForKey:kContactDetailsUrl];
    self.address = [aDecoder decodeObjectForKey:kContactDetailsAddress];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_email forKey:kContactDetailsEmail];
    [aCoder encodeObject:_phone forKey:kContactDetailsPhone];
    [aCoder encodeObject:_fax forKey:kContactDetailsFax];
    [aCoder encodeObject:_url forKey:kContactDetailsUrl];
    [aCoder encodeObject:_address forKey:kContactDetailsAddress];
}

- (id)copyWithZone:(NSZone *)zone
{
    ContactDetails *copy = [[ContactDetails alloc] init];
    
    if (copy) {

        copy.email = [self.email copyWithZone:zone];
        copy.phone = [self.phone copyWithZone:zone];
        copy.fax = [self.fax copyWithZone:zone];
        copy.url = [self.url copyWithZone:zone];
        copy.address = [self.address copyWithZone:zone];
    }
    
    return copy;
}


@end
