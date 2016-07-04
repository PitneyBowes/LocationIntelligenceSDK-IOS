//
//  ContactPerson.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ContactPerson.h"


NSString *const kContactPersonPhone = @"phone";
NSString *const kContactPersonPrefix = @"prefix";
NSString *const kContactPersonFirstName = @"firstName";
NSString *const kContactPersonFax = @"fax";
NSString *const kContactPersonComments = @"comments";
NSString *const kContactPersonTitle = @"title";
NSString *const kContactPersonAdditionalDetails = @"additionalDetails";
NSString *const kContactPersonEmail = @"email";
NSString *const kContactPersonLastName = @"lastName";


@interface ContactPerson ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ContactPerson

@synthesize phone = _phone;
@synthesize prefix = _prefix;
@synthesize firstName = _firstName;
@synthesize fax = _fax;
@synthesize comments = _comments;
@synthesize title = _title;
@synthesize additionalDetails = _additionalDetails;
@synthesize email = _email;
@synthesize lastName = _lastName;


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
            self.phone = [self objectOrNilForKey:kContactPersonPhone fromDictionary:dict];
            self.prefix = [self objectOrNilForKey:kContactPersonPrefix fromDictionary:dict];
            self.firstName = [self objectOrNilForKey:kContactPersonFirstName fromDictionary:dict];
            self.fax = [self objectOrNilForKey:kContactPersonFax fromDictionary:dict];
            self.comments = [self objectOrNilForKey:kContactPersonComments fromDictionary:dict];
            self.title = [self objectOrNilForKey:kContactPersonTitle fromDictionary:dict];
            self.additionalDetails = [self objectOrNilForKey:kContactPersonAdditionalDetails fromDictionary:dict];
            self.email = [self objectOrNilForKey:kContactPersonEmail fromDictionary:dict];
            self.lastName = [self objectOrNilForKey:kContactPersonLastName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.phone forKey:kContactPersonPhone];
    [mutableDict setValue:self.prefix forKey:kContactPersonPrefix];
    [mutableDict setValue:self.firstName forKey:kContactPersonFirstName];
    [mutableDict setValue:self.fax forKey:kContactPersonFax];
    [mutableDict setValue:self.comments forKey:kContactPersonComments];
    [mutableDict setValue:self.title forKey:kContactPersonTitle];
    [mutableDict setValue:self.additionalDetails forKey:kContactPersonAdditionalDetails];
    [mutableDict setValue:self.email forKey:kContactPersonEmail];
    [mutableDict setValue:self.lastName forKey:kContactPersonLastName];

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

    self.phone = [aDecoder decodeObjectForKey:kContactPersonPhone];
    self.prefix = [aDecoder decodeObjectForKey:kContactPersonPrefix];
    self.firstName = [aDecoder decodeObjectForKey:kContactPersonFirstName];
    self.fax = [aDecoder decodeObjectForKey:kContactPersonFax];
    self.comments = [aDecoder decodeObjectForKey:kContactPersonComments];
    self.title = [aDecoder decodeObjectForKey:kContactPersonTitle];
    self.additionalDetails = [aDecoder decodeObjectForKey:kContactPersonAdditionalDetails];
    self.email = [aDecoder decodeObjectForKey:kContactPersonEmail];
    self.lastName = [aDecoder decodeObjectForKey:kContactPersonLastName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_phone forKey:kContactPersonPhone];
    [aCoder encodeObject:_prefix forKey:kContactPersonPrefix];
    [aCoder encodeObject:_firstName forKey:kContactPersonFirstName];
    [aCoder encodeObject:_fax forKey:kContactPersonFax];
    [aCoder encodeObject:_comments forKey:kContactPersonComments];
    [aCoder encodeObject:_title forKey:kContactPersonTitle];
    [aCoder encodeObject:_additionalDetails forKey:kContactPersonAdditionalDetails];
    [aCoder encodeObject:_email forKey:kContactPersonEmail];
    [aCoder encodeObject:_lastName forKey:kContactPersonLastName];
}

- (id)copyWithZone:(NSZone *)zone
{
    ContactPerson *copy = [[ContactPerson alloc] init];
    
    if (copy) {

        copy.phone = [self.phone copyWithZone:zone];
        copy.prefix = [self.prefix copyWithZone:zone];
        copy.firstName = [self.firstName copyWithZone:zone];
        copy.fax = [self.fax copyWithZone:zone];
        copy.comments = [self.comments copyWithZone:zone];
        copy.title = [self.title copyWithZone:zone];
        copy.additionalDetails = [self.additionalDetails copyWithZone:zone];
        copy.email = [self.email copyWithZone:zone];
        copy.lastName = [self.lastName copyWithZone:zone];
    }
    
    return copy;
}


@end
