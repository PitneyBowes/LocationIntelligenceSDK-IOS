//
//  Ahjs.m
//
//  Created by Gaurav Jain on 08/07/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Ahjs.h"


NSString *const kAhjsAhjs = @"ahjs";


@interface Ahjs ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Ahjs

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
            self.ahjs = [self objectOrNilForKey:kAhjsAhjs fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForAhjs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.ahjs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForAhjs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForAhjs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForAhjs] forKey:kAhjsAhjs];

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

    self.ahjs = [aDecoder decodeObjectForKey:kAhjsAhjs];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ahjs forKey:kAhjsAhjs];
}

- (id)copyWithZone:(NSZone *)zone
{
    Ahjs *copy = [[Ahjs alloc] init];
    
    if (copy) {

        copy.ahjs = [self.ahjs copyWithZone:zone];
    }
    
    return copy;
}


@end
