//
//  Preferences.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Preferences.h"
#import "MustMatchFields.h"
#import "ReturnFieldsDescriptor.h"



NSString *const kPreferencesMaxReturnedCandidates = @"maxReturnedCandidates";
NSString *const kPreferencesReturnAllCandidateInfo = @"returnAllCandidateInfo";
NSString *const kPreferencesFallbackToPostal = @"fallbackToPostal";
NSString *const kPreferencesPreferredDictionaryOrders = @"preferredDictionaryOrders";
NSString *const kPreferencesFallbackToGeographic = @"fallbackToGeographic";
NSString *const kPreferencesCornerOffset = @"cornerOffset";
NSString *const kPreferencesMustMatchFields = @"mustMatchFields";
NSString *const kPreferencesMatchMode = @"matchMode";
NSString *const kPreferencesCornerOffsetUnits = @"cornerOffsetUnits";
NSString *const kPreferencesClientLocale = @"clientLocale";
NSString *const kPreferencesStreetOffsetUnits = @"streetOffsetUnits";
NSString *const kPreferencesClientCoordSysName = @"clientCoordSysName";
NSString *const kPreferencesReturnFieldsDescriptor = @"returnFieldsDescriptor";
NSString *const kPreferencesCustomPreferences = @"customPreferences";
NSString *const kPreferencesStreetOffset = @"streetOffset";


@interface Preferences ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Preferences

@synthesize maxReturnedCandidates = _maxReturnedCandidates;
@synthesize returnAllCandidateInfo = _returnAllCandidateInfo;
@synthesize fallbackToPostal = _fallbackToPostal;
@synthesize preferredDictionaryOrders = _preferredDictionaryOrders;
@synthesize fallbackToGeographic = _fallbackToGeographic;
@synthesize cornerOffset = _cornerOffset;
@synthesize mustMatchFields = _mustMatchFields;
@synthesize matchMode = _matchMode;
@synthesize cornerOffsetUnits = _cornerOffsetUnits;
@synthesize clientLocale = _clientLocale;
@synthesize streetOffsetUnits = _streetOffsetUnits;
@synthesize clientCoordSysName = _clientCoordSysName;
@synthesize returnFieldsDescriptor = _returnFieldsDescriptor;
@synthesize customPreferences = _customPreferences;
@synthesize streetOffset = _streetOffset;


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
            self.maxReturnedCandidates = [[self objectOrNilForKey:kPreferencesMaxReturnedCandidates fromDictionary:dict] doubleValue];
            self.returnAllCandidateInfo = [self objectOrNilForKey:kPreferencesReturnAllCandidateInfo fromDictionary:dict];
            self.fallbackToPostal = [self objectOrNilForKey:kPreferencesFallbackToPostal fromDictionary:dict];
            self.preferredDictionaryOrders = [self objectOrNilForKey:kPreferencesPreferredDictionaryOrders fromDictionary:dict];
            self.fallbackToGeographic = [self objectOrNilForKey:kPreferencesFallbackToGeographic fromDictionary:dict];
            self.cornerOffset = [[self objectOrNilForKey:kPreferencesCornerOffset fromDictionary:dict] doubleValue];
            self.mustMatchFields = [MustMatchFields modelObjectWithDictionary:[dict objectForKey:kPreferencesMustMatchFields]];
            self.matchMode = [self objectOrNilForKey:kPreferencesMatchMode fromDictionary:dict];
            self.cornerOffsetUnits = [self objectOrNilForKey:kPreferencesCornerOffsetUnits fromDictionary:dict];
            self.clientLocale = [self objectOrNilForKey:kPreferencesClientLocale fromDictionary:dict];
            self.streetOffsetUnits = [self objectOrNilForKey:kPreferencesStreetOffsetUnits fromDictionary:dict];
            self.clientCoordSysName = [self objectOrNilForKey:kPreferencesClientCoordSysName fromDictionary:dict];
            self.returnFieldsDescriptor = [ReturnFieldsDescriptor modelObjectWithDictionary:[dict objectForKey:kPreferencesReturnFieldsDescriptor]];
            self.customPreferences = [self objectOrNilForKey:kPreferencesCustomPreferences fromDictionary:dict];
            self.streetOffset = [[self objectOrNilForKey:kPreferencesStreetOffset fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.maxReturnedCandidates] forKey:kPreferencesMaxReturnedCandidates];
    [mutableDict setValue:self.returnAllCandidateInfo forKey:kPreferencesReturnAllCandidateInfo];
    [mutableDict setValue:self.fallbackToPostal forKey:kPreferencesFallbackToPostal];
    NSMutableArray *tempArrayForPreferredDictionaryOrders = [NSMutableArray array];
    for (NSObject *subArrayObject in self.preferredDictionaryOrders) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForPreferredDictionaryOrders addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForPreferredDictionaryOrders addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForPreferredDictionaryOrders] forKey:kPreferencesPreferredDictionaryOrders];
    [mutableDict setValue:self.fallbackToGeographic forKey:kPreferencesFallbackToGeographic];
    [mutableDict setValue:[NSNumber numberWithDouble:self.cornerOffset] forKey:kPreferencesCornerOffset];
    [mutableDict setValue:[self.mustMatchFields dictionaryRepresentation] forKey:kPreferencesMustMatchFields];
    [mutableDict setValue:self.matchMode forKey:kPreferencesMatchMode];
    [mutableDict setValue:self.cornerOffsetUnits forKey:kPreferencesCornerOffsetUnits];
    [mutableDict setValue:self.clientLocale forKey:kPreferencesClientLocale];
    [mutableDict setValue:self.streetOffsetUnits forKey:kPreferencesStreetOffsetUnits];
    [mutableDict setValue:self.clientCoordSysName forKey:kPreferencesClientCoordSysName];
    [mutableDict setValue:[self.returnFieldsDescriptor dictionaryRepresentation] forKey:kPreferencesReturnFieldsDescriptor];
    
    [mutableDict setValue:[NSDictionary dictionaryWithDictionary:self.customPreferences] forKey:kPreferencesCustomPreferences];
    [mutableDict setValue:[NSNumber numberWithDouble:self.streetOffset] forKey:kPreferencesStreetOffset];

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

    self.maxReturnedCandidates = [aDecoder decodeDoubleForKey:kPreferencesMaxReturnedCandidates];
    self.returnAllCandidateInfo = [aDecoder decodeObjectForKey:kPreferencesReturnAllCandidateInfo];
    self.fallbackToPostal = [aDecoder decodeObjectForKey:kPreferencesFallbackToPostal];
    self.preferredDictionaryOrders = [aDecoder decodeObjectForKey:kPreferencesPreferredDictionaryOrders];
    self.fallbackToGeographic = [aDecoder decodeObjectForKey:kPreferencesFallbackToGeographic];
    self.cornerOffset = [aDecoder decodeDoubleForKey:kPreferencesCornerOffset];
    self.mustMatchFields = [aDecoder decodeObjectForKey:kPreferencesMustMatchFields];
    self.matchMode = [aDecoder decodeObjectForKey:kPreferencesMatchMode];
    self.cornerOffsetUnits = [aDecoder decodeObjectForKey:kPreferencesCornerOffsetUnits];
    self.clientLocale = [aDecoder decodeObjectForKey:kPreferencesClientLocale];
    self.streetOffsetUnits = [aDecoder decodeObjectForKey:kPreferencesStreetOffsetUnits];
    self.clientCoordSysName = [aDecoder decodeObjectForKey:kPreferencesClientCoordSysName];
    self.returnFieldsDescriptor = [aDecoder decodeObjectForKey:kPreferencesReturnFieldsDescriptor];
   self.customPreferences = [aDecoder decodeObjectForKey:kPreferencesCustomPreferences];
    self.streetOffset = [aDecoder decodeDoubleForKey:kPreferencesStreetOffset];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_maxReturnedCandidates forKey:kPreferencesMaxReturnedCandidates];
    [aCoder encodeObject:_returnAllCandidateInfo forKey:kPreferencesReturnAllCandidateInfo];
    [aCoder encodeObject:_fallbackToPostal forKey:kPreferencesFallbackToPostal];
    [aCoder encodeObject:_preferredDictionaryOrders forKey:kPreferencesPreferredDictionaryOrders];
    [aCoder encodeObject:_fallbackToGeographic forKey:kPreferencesFallbackToGeographic];
    [aCoder encodeDouble:_cornerOffset forKey:kPreferencesCornerOffset];
    [aCoder encodeObject:_mustMatchFields forKey:kPreferencesMustMatchFields];
    [aCoder encodeObject:_matchMode forKey:kPreferencesMatchMode];
    [aCoder encodeObject:_cornerOffsetUnits forKey:kPreferencesCornerOffsetUnits];
    [aCoder encodeObject:_clientLocale forKey:kPreferencesClientLocale];
    [aCoder encodeObject:_streetOffsetUnits forKey:kPreferencesStreetOffsetUnits];
    [aCoder encodeObject:_clientCoordSysName forKey:kPreferencesClientCoordSysName];
    [aCoder encodeObject:_returnFieldsDescriptor forKey:kPreferencesReturnFieldsDescriptor];
    [aCoder encodeObject:_customPreferences forKey:kPreferencesCustomPreferences];
    [aCoder encodeDouble:_streetOffset forKey:kPreferencesStreetOffset];
}

- (id)copyWithZone:(NSZone *)zone
{
    Preferences *copy = [[Preferences alloc] init];
    
    if (copy) {

        copy.maxReturnedCandidates = self.maxReturnedCandidates;
        copy.returnAllCandidateInfo = [self.returnAllCandidateInfo copyWithZone:zone];
        copy.fallbackToPostal = [self.fallbackToPostal copyWithZone:zone];
        copy.preferredDictionaryOrders = [self.preferredDictionaryOrders copyWithZone:zone];
        copy.fallbackToGeographic = [self.fallbackToGeographic copyWithZone:zone];
        copy.cornerOffset = self.cornerOffset;
        copy.mustMatchFields = [self.mustMatchFields copyWithZone:zone];
        copy.matchMode = [self.matchMode copyWithZone:zone];
        copy.cornerOffsetUnits = [self.cornerOffsetUnits copyWithZone:zone];
        copy.clientLocale = [self.clientLocale copyWithZone:zone];
        copy.streetOffsetUnits = [self.streetOffsetUnits copyWithZone:zone];
        copy.clientCoordSysName = [self.clientCoordSysName copyWithZone:zone];
        copy.returnFieldsDescriptor = [self.returnFieldsDescriptor copyWithZone:zone];
        copy.customPreferences = [self.customPreferences copyWithZone:zone];
        copy.streetOffset = self.streetOffset;
    }
    
    return copy;
}


@end
