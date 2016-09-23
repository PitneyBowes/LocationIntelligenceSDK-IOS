//
//  Mcd.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "Mcd.h"


NSString *const kMcdName = @"name";
NSString *const kMcdCode = @"code";


@interface Mcd ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Mcd

@synthesize name = _name;
@synthesize code = _code;


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
            self.name = [self objectOrNilForKey:kMcdName fromDictionary:dict];
            self.code = [self objectOrNilForKey:kMcdCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kMcdName];
    [mutableDict setValue:self.code forKey:kMcdCode];

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

    self.name = [aDecoder decodeObjectForKey:kMcdName];
    self.code = [aDecoder decodeObjectForKey:kMcdCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kMcdName];
    [aCoder encodeObject:_code forKey:kMcdCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    Mcd *copy = [[Mcd alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.code = [self.code copyWithZone:zone];
    }
    
    return copy;
}


@end
