//
//  Candidates.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Candidates.h"
#import "Ranges.h"
#import "Address.h"
#import "Geometry.h"


NSString *const kCandidatesRanges = @"ranges";
NSString *const kCandidatesAddress = @"address";
NSString *const kCandidatesSourceDictionary = @"sourceDictionary";
NSString *const kCandidatesPrecisionCode = @"precisionCode";
NSString *const kCandidatesGeometry = @"geometry";
NSString *const kCandidatesFormattedLocationAddress = @"formattedLocationAddress";
NSString *const kCandidatesFormattedStreetAddress = @"formattedStreetAddress";
NSString *const kCandidatesIdentifier = @"identifier";
NSString *const kCandidatesMatching = @"matching";
NSString *const kCandidatesPrecisionLevel = @"precisionLevel";


@interface Candidates ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Candidates

@synthesize ranges = _ranges;
@synthesize address = _address;
@synthesize sourceDictionary = _sourceDictionary;
@synthesize precisionCode = _precisionCode;
@synthesize geometry = _geometry;
@synthesize formattedLocationAddress = _formattedLocationAddress;
@synthesize formattedStreetAddress = _formattedStreetAddress;
@synthesize identifier = _identifier;
@synthesize matching = _matching;
@synthesize precisionLevel = _precisionLevel;


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
    NSObject *receivedRanges = [dict objectForKey:kCandidatesRanges];
    NSMutableArray *parsedRanges = [NSMutableArray array];
    if ([receivedRanges isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedRanges) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedRanges addObject:[Ranges modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedRanges isKindOfClass:[NSDictionary class]]) {
       [parsedRanges addObject:[Ranges modelObjectWithDictionary:(NSDictionary *)receivedRanges]];
    }

    self.ranges = [NSArray arrayWithArray:parsedRanges];
            self.address = [Address modelObjectWithDictionary:[dict objectForKey:kCandidatesAddress]];
            self.sourceDictionary = [self objectOrNilForKey:kCandidatesSourceDictionary fromDictionary:dict];
            self.precisionCode = [self objectOrNilForKey:kCandidatesPrecisionCode fromDictionary:dict];
            self.geometry = [Geometry modelObjectWithDictionary:[dict objectForKey:kCandidatesGeometry]];
            self.formattedLocationAddress = [self objectOrNilForKey:kCandidatesFormattedLocationAddress fromDictionary:dict];
            self.formattedStreetAddress = [self objectOrNilForKey:kCandidatesFormattedStreetAddress fromDictionary:dict];
            self.identifier = [self objectOrNilForKey:kCandidatesIdentifier fromDictionary:dict];
            self.matching = [self objectOrNilForKey:kCandidatesMatching fromDictionary:dict];
            self.precisionLevel = [[self objectOrNilForKey:kCandidatesPrecisionLevel fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForRanges = [NSMutableArray array];
    for (NSObject *subArrayObject in self.ranges) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForRanges addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForRanges addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRanges] forKey:kCandidatesRanges];
    [mutableDict setValue:[self.address dictionaryRepresentation] forKey:kCandidatesAddress];
    [mutableDict setValue:self.sourceDictionary forKey:kCandidatesSourceDictionary];
    [mutableDict setValue:self.precisionCode forKey:kCandidatesPrecisionCode];
    [mutableDict setValue:[self.geometry dictionaryRepresentation] forKey:kCandidatesGeometry];
    [mutableDict setValue:self.formattedLocationAddress forKey:kCandidatesFormattedLocationAddress];
    [mutableDict setValue:self.formattedStreetAddress forKey:kCandidatesFormattedStreetAddress];
    [mutableDict setValue:self.identifier forKey:kCandidatesIdentifier];
    [mutableDict setValue:self.matching forKey:kCandidatesMatching];
    [mutableDict setValue:[NSNumber numberWithDouble:self.precisionLevel] forKey:kCandidatesPrecisionLevel];

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

    self.ranges = [aDecoder decodeObjectForKey:kCandidatesRanges];
    self.address = [aDecoder decodeObjectForKey:kCandidatesAddress];
    self.sourceDictionary = [aDecoder decodeObjectForKey:kCandidatesSourceDictionary];
    self.precisionCode = [aDecoder decodeObjectForKey:kCandidatesPrecisionCode];
    self.geometry = [aDecoder decodeObjectForKey:kCandidatesGeometry];
    self.formattedLocationAddress = [aDecoder decodeObjectForKey:kCandidatesFormattedLocationAddress];
    self.formattedStreetAddress = [aDecoder decodeObjectForKey:kCandidatesFormattedStreetAddress];
    self.identifier = [aDecoder decodeObjectForKey:kCandidatesIdentifier];
    self.matching = [aDecoder decodeObjectForKey:kCandidatesMatching];
    self.precisionLevel = [aDecoder decodeDoubleForKey:kCandidatesPrecisionLevel];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ranges forKey:kCandidatesRanges];
    [aCoder encodeObject:_address forKey:kCandidatesAddress];
    [aCoder encodeObject:_sourceDictionary forKey:kCandidatesSourceDictionary];
    [aCoder encodeObject:_precisionCode forKey:kCandidatesPrecisionCode];
    [aCoder encodeObject:_geometry forKey:kCandidatesGeometry];
    [aCoder encodeObject:_formattedLocationAddress forKey:kCandidatesFormattedLocationAddress];
    [aCoder encodeObject:_formattedStreetAddress forKey:kCandidatesFormattedStreetAddress];
    [aCoder encodeObject:_identifier forKey:kCandidatesIdentifier];
    [aCoder encodeObject:_matching forKey:kCandidatesMatching];
    [aCoder encodeDouble:_precisionLevel forKey:kCandidatesPrecisionLevel];
}

- (id)copyWithZone:(NSZone *)zone
{
    Candidates *copy = [[Candidates alloc] init];
    
    if (copy) {

        copy.ranges = [self.ranges copyWithZone:zone];
        copy.address = [self.address copyWithZone:zone];
        copy.sourceDictionary = [self.sourceDictionary copyWithZone:zone];
        copy.precisionCode = [self.precisionCode copyWithZone:zone];
        copy.geometry = [self.geometry copyWithZone:zone];
        copy.formattedLocationAddress = [self.formattedLocationAddress copyWithZone:zone];
        copy.formattedStreetAddress = [self.formattedStreetAddress copyWithZone:zone];
        copy.identifier = [self.identifier copyWithZone:zone];
        copy.matching = [self.matching copyWithZone:zone];
        copy.precisionLevel = self.precisionLevel;
    }
    
    return copy;
}


@end
