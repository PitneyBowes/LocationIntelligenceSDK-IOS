//
//  Census.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Census.h"
#import "Cbsa.h"
#import "Mcd.h"


NSString *const kCensusTract = @"tract";
NSString *const kCensusCbsa = @"cbsa";
NSString *const kCensusMatchLevel = @"matchLevel";
NSString *const kCensusMatchCode = @"matchCode";
NSString *const kCensusMcd = @"mcd";


@interface Census ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Census

@synthesize tract = _tract;
@synthesize cbsa = _cbsa;
@synthesize matchLevel = _matchLevel;
@synthesize matchCode = _matchCode;
@synthesize mcd = _mcd;


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
            self.tract = [self objectOrNilForKey:kCensusTract fromDictionary:dict];
            self.cbsa = [Cbsa modelObjectWithDictionary:[dict objectForKey:kCensusCbsa]];
            self.matchLevel = [self objectOrNilForKey:kCensusMatchLevel fromDictionary:dict];
            self.matchCode = [self objectOrNilForKey:kCensusMatchCode fromDictionary:dict];
            self.mcd = [Mcd modelObjectWithDictionary:[dict objectForKey:kCensusMcd]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.tract forKey:kCensusTract];
    [mutableDict setValue:[self.cbsa dictionaryRepresentation] forKey:kCensusCbsa];
    [mutableDict setValue:self.matchLevel forKey:kCensusMatchLevel];
    [mutableDict setValue:self.matchCode forKey:kCensusMatchCode];
    [mutableDict setValue:[self.mcd dictionaryRepresentation] forKey:kCensusMcd];

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

    self.tract = [aDecoder decodeObjectForKey:kCensusTract];
    self.cbsa = [aDecoder decodeObjectForKey:kCensusCbsa];
    self.matchLevel = [aDecoder decodeObjectForKey:kCensusMatchLevel];
    self.matchCode = [aDecoder decodeObjectForKey:kCensusMatchCode];
    self.mcd = [aDecoder decodeObjectForKey:kCensusMcd];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_tract forKey:kCensusTract];
    [aCoder encodeObject:_cbsa forKey:kCensusCbsa];
    [aCoder encodeObject:_matchLevel forKey:kCensusMatchLevel];
    [aCoder encodeObject:_matchCode forKey:kCensusMatchCode];
    [aCoder encodeObject:_mcd forKey:kCensusMcd];
}

- (id)copyWithZone:(NSZone *)zone
{
    Census *copy = [[Census alloc] init];
    
    if (copy) {

        copy.tract = [self.tract copyWithZone:zone];
        copy.cbsa = [self.cbsa copyWithZone:zone];
        copy.matchLevel = [self.matchLevel copyWithZone:zone];
        copy.matchCode = [self.matchCode copyWithZone:zone];
        copy.mcd = [self.mcd copyWithZone:zone];
    }
    
    return copy;
}


@end
