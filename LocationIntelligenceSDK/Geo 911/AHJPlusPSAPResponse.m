//
//  BaseClass.m
//
//  Created by Gaurav Jain on 08/07/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//


#import "PsapResponse.h"
#import "Ahjs.h"
#import "AHJPlusPSAPResponse.h"

NSString *const kBaseClassPsap = @"psap";
NSString *const kBaseClassAhjs = @"ahjs";


@interface AHJPlusPSAPResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation AHJPlusPSAPResponse

@synthesize psap = _psap;
@synthesize ahjs = _ahjs;


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
            self.psap = [PsapResponse modelObjectWithDictionary:[dict objectForKey:kBaseClassPsap]];
            self.ahjs = [Ahjs modelObjectWithDictionary:[dict objectForKey:kBaseClassAhjs]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.psap dictionaryRepresentation] forKey:kBaseClassPsap];
    [mutableDict setValue:[self.ahjs dictionaryRepresentation] forKey:kBaseClassAhjs];

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

    self.psap = [aDecoder decodeObjectForKey:kBaseClassPsap];
    self.ahjs = [aDecoder decodeObjectForKey:kBaseClassAhjs];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_psap forKey:kBaseClassPsap];
    [aCoder encodeObject:_ahjs forKey:kBaseClassAhjs];
}

- (id)copyWithZone:(NSZone *)zone
{
    AHJPlusPSAPResponse *copy = [[AHJPlusPSAPResponse alloc] init];
    
    if (copy) {

        copy.psap = [self.psap copyWithZone:zone];
        copy.ahjs = [self.ahjs copyWithZone:zone];
    }
    
    return copy;
}


@end
