//
//  AllowedValuesWithDescriptions.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "AllowedValuesWithDescriptions.h"


NSString *const kAllowedValuesWithDescriptionsCUSTOM = @"CUSTOM";
NSString *const kAllowedValuesWithDescriptionsCASS = @"CASS";
NSString *const kAllowedValuesWithDescriptionsGeographic = @"geographic";
NSString *const kAllowedValuesWithDescriptionsFoot = @"Foot";
NSString *const kAllowedValuesWithDescriptionsINTERACTIVE = @"INTERACTIVE";
NSString *const kAllowedValuesWithDescriptionsAddress = @"address";
NSString *const kAllowedValuesWithDescriptionsPostal = @"postal";
NSString *const kAllowedValuesWithDescriptionsCustom = @"custom";
NSString *const kAllowedValuesWithDescriptionsEXACT = @"EXACT";
NSString *const kAllowedValuesWithDescriptionsMeter = @"Meter";
NSString *const kAllowedValuesWithDescriptionsSTANDARD = @"STANDARD";
NSString *const kAllowedValuesWithDescriptionsRELAXED = @"RELAXED";


@interface AllowedValuesWithDescriptions ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation AllowedValuesWithDescriptions

@synthesize cUSTOM = _cUSTOM;
@synthesize cASS = _cASS;
@synthesize geographic = _geographic;
@synthesize foot = _foot;
@synthesize iNTERACTIVE = _iNTERACTIVE;
@synthesize address = _address;
@synthesize postal = _postal;
@synthesize custom = _custom;
@synthesize eXACT = _eXACT;
@synthesize meter = _meter;
@synthesize sTANDARD = _sTANDARD;
@synthesize rELAXED = _rELAXED;


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
            self.cUSTOM = [self objectOrNilForKey:kAllowedValuesWithDescriptionsCUSTOM fromDictionary:dict];
            self.cASS = [self objectOrNilForKey:kAllowedValuesWithDescriptionsCASS fromDictionary:dict];
            self.geographic = [self objectOrNilForKey:kAllowedValuesWithDescriptionsGeographic fromDictionary:dict];
            self.foot = [self objectOrNilForKey:kAllowedValuesWithDescriptionsFoot fromDictionary:dict];
            self.iNTERACTIVE = [self objectOrNilForKey:kAllowedValuesWithDescriptionsINTERACTIVE fromDictionary:dict];
            self.address = [self objectOrNilForKey:kAllowedValuesWithDescriptionsAddress fromDictionary:dict];
            self.postal = [self objectOrNilForKey:kAllowedValuesWithDescriptionsPostal fromDictionary:dict];
            self.custom = [self objectOrNilForKey:kAllowedValuesWithDescriptionsCustom fromDictionary:dict];
            self.eXACT = [self objectOrNilForKey:kAllowedValuesWithDescriptionsEXACT fromDictionary:dict];
            self.meter = [self objectOrNilForKey:kAllowedValuesWithDescriptionsMeter fromDictionary:dict];
            self.sTANDARD = [self objectOrNilForKey:kAllowedValuesWithDescriptionsSTANDARD fromDictionary:dict];
            self.rELAXED = [self objectOrNilForKey:kAllowedValuesWithDescriptionsRELAXED fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.cUSTOM forKey:kAllowedValuesWithDescriptionsCUSTOM];
    [mutableDict setValue:self.cASS forKey:kAllowedValuesWithDescriptionsCASS];
    [mutableDict setValue:self.geographic forKey:kAllowedValuesWithDescriptionsGeographic];
    [mutableDict setValue:self.foot forKey:kAllowedValuesWithDescriptionsFoot];
    [mutableDict setValue:self.iNTERACTIVE forKey:kAllowedValuesWithDescriptionsINTERACTIVE];
    [mutableDict setValue:self.address forKey:kAllowedValuesWithDescriptionsAddress];
    [mutableDict setValue:self.postal forKey:kAllowedValuesWithDescriptionsPostal];
    [mutableDict setValue:self.custom forKey:kAllowedValuesWithDescriptionsCustom];
    [mutableDict setValue:self.eXACT forKey:kAllowedValuesWithDescriptionsEXACT];
    [mutableDict setValue:self.meter forKey:kAllowedValuesWithDescriptionsMeter];
    [mutableDict setValue:self.sTANDARD forKey:kAllowedValuesWithDescriptionsSTANDARD];
    [mutableDict setValue:self.rELAXED forKey:kAllowedValuesWithDescriptionsRELAXED];

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

    self.cUSTOM = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsCUSTOM];
    self.cASS = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsCASS];
    self.geographic = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsGeographic];
    self.foot = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsFoot];
    self.iNTERACTIVE = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsINTERACTIVE];
    self.address = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsAddress];
    self.postal = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsPostal];
    self.custom = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsCustom];
    self.eXACT = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsEXACT];
    self.meter = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsMeter];
    self.sTANDARD = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsSTANDARD];
    self.rELAXED = [aDecoder decodeObjectForKey:kAllowedValuesWithDescriptionsRELAXED];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_cUSTOM forKey:kAllowedValuesWithDescriptionsCUSTOM];
    [aCoder encodeObject:_cASS forKey:kAllowedValuesWithDescriptionsCASS];
    [aCoder encodeObject:_geographic forKey:kAllowedValuesWithDescriptionsGeographic];
    [aCoder encodeObject:_foot forKey:kAllowedValuesWithDescriptionsFoot];
    [aCoder encodeObject:_iNTERACTIVE forKey:kAllowedValuesWithDescriptionsINTERACTIVE];
    [aCoder encodeObject:_address forKey:kAllowedValuesWithDescriptionsAddress];
    [aCoder encodeObject:_postal forKey:kAllowedValuesWithDescriptionsPostal];
    [aCoder encodeObject:_custom forKey:kAllowedValuesWithDescriptionsCustom];
    [aCoder encodeObject:_eXACT forKey:kAllowedValuesWithDescriptionsEXACT];
    [aCoder encodeObject:_meter forKey:kAllowedValuesWithDescriptionsMeter];
    [aCoder encodeObject:_sTANDARD forKey:kAllowedValuesWithDescriptionsSTANDARD];
    [aCoder encodeObject:_rELAXED forKey:kAllowedValuesWithDescriptionsRELAXED];
}

- (id)copyWithZone:(NSZone *)zone
{
    AllowedValuesWithDescriptions *copy = [[AllowedValuesWithDescriptions alloc] init];
    
    if (copy) {

        copy.cUSTOM = [self.cUSTOM copyWithZone:zone];
        copy.cASS = [self.cASS copyWithZone:zone];
        copy.geographic = [self.geographic copyWithZone:zone];
        copy.foot = [self.foot copyWithZone:zone];
        copy.iNTERACTIVE = [self.iNTERACTIVE copyWithZone:zone];
        copy.address = [self.address copyWithZone:zone];
        copy.postal = [self.postal copyWithZone:zone];
        copy.custom = [self.custom copyWithZone:zone];
        copy.eXACT = [self.eXACT copyWithZone:zone];
        copy.meter = [self.meter copyWithZone:zone];
        copy.sTANDARD = [self.sTANDARD copyWithZone:zone];
        copy.rELAXED = [self.rELAXED copyWithZone:zone];
    }
    
    return copy;
}


@end
