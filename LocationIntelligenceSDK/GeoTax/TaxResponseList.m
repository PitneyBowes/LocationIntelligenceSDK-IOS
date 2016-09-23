//
//  BaseClass.m
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "TaxResponseList.h"
#import "TaxResponses.h"


NSString *const kBaseClassTaxResponses = @"taxResponses";


@interface TaxResponseList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation TaxResponseList

@synthesize taxResponses = _taxResponses;


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
    NSObject *receivedTaxResponses = [dict objectForKey:kBaseClassTaxResponses];
    NSMutableArray *parsedTaxResponses = [NSMutableArray array];
    if ([receivedTaxResponses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedTaxResponses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedTaxResponses addObject:[TaxResponses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedTaxResponses isKindOfClass:[NSDictionary class]]) {
       [parsedTaxResponses addObject:[TaxResponses modelObjectWithDictionary:(NSDictionary *)receivedTaxResponses]];
    }

    self.taxResponses = [NSArray arrayWithArray:parsedTaxResponses];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForTaxResponses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.taxResponses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTaxResponses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTaxResponses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTaxResponses] forKey:kBaseClassTaxResponses];

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

    self.taxResponses = [aDecoder decodeObjectForKey:kBaseClassTaxResponses];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_taxResponses forKey:kBaseClassTaxResponses];
}

- (id)copyWithZone:(NSZone *)zone
{
    TaxResponseList *copy = [[TaxResponseList alloc] init];
    
    if (copy) {

        copy.taxResponses = [self.taxResponses copyWithZone:zone];
    }
    
    return copy;
}


@end
