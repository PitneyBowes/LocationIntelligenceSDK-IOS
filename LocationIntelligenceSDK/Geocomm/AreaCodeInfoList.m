//
//  AreaCodeInfoList.m
//
//  Created by Gaurav Jain on 09/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import "AreaCodeInfoList.h"


NSString *const kAreaCodeInfoListOcnCategory = @"ocnCategory";
NSString *const kAreaCodeInfoListEndRange = @"endRange";
NSString *const kAreaCodeInfoListNxx = @"nxx";
NSString *const kAreaCodeInfoListAreaName4 = @"areaName4";
NSString *const kAreaCodeInfoListOcn = @"ocn";
NSString *const kAreaCodeInfoListCompanyName = @"companyName";
NSString *const kAreaCodeInfoListLata = @"lata";
NSString *const kAreaCodeInfoListNpa = @"npa";
NSString *const kAreaCodeInfoListStartRange = @"startRange";


@interface AreaCodeInfoList ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation AreaCodeInfoList

@synthesize ocnCategory = _ocnCategory;
@synthesize endRange = _endRange;
@synthesize nxx = _nxx;
@synthesize areaName4 = _areaName4;
@synthesize ocn = _ocn;
@synthesize companyName = _companyName;
@synthesize lata = _lata;
@synthesize npa = _npa;
@synthesize startRange = _startRange;


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
            self.ocnCategory = [self objectOrNilForKey:kAreaCodeInfoListOcnCategory fromDictionary:dict];
            self.endRange = [self objectOrNilForKey:kAreaCodeInfoListEndRange fromDictionary:dict];
            self.nxx = [self objectOrNilForKey:kAreaCodeInfoListNxx fromDictionary:dict];
            self.areaName4 = [self objectOrNilForKey:kAreaCodeInfoListAreaName4 fromDictionary:dict];
            self.ocn = [self objectOrNilForKey:kAreaCodeInfoListOcn fromDictionary:dict];
            self.companyName = [self objectOrNilForKey:kAreaCodeInfoListCompanyName fromDictionary:dict];
            self.lata = [self objectOrNilForKey:kAreaCodeInfoListLata fromDictionary:dict];
            self.npa = [self objectOrNilForKey:kAreaCodeInfoListNpa fromDictionary:dict];
            self.startRange = [self objectOrNilForKey:kAreaCodeInfoListStartRange fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.ocnCategory forKey:kAreaCodeInfoListOcnCategory];
    [mutableDict setValue:self.endRange forKey:kAreaCodeInfoListEndRange];
    [mutableDict setValue:self.nxx forKey:kAreaCodeInfoListNxx];
    [mutableDict setValue:self.areaName4 forKey:kAreaCodeInfoListAreaName4];
    [mutableDict setValue:self.ocn forKey:kAreaCodeInfoListOcn];
    [mutableDict setValue:self.companyName forKey:kAreaCodeInfoListCompanyName];
    [mutableDict setValue:self.lata forKey:kAreaCodeInfoListLata];
    [mutableDict setValue:self.npa forKey:kAreaCodeInfoListNpa];
    [mutableDict setValue:self.startRange forKey:kAreaCodeInfoListStartRange];

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

    self.ocnCategory = [aDecoder decodeObjectForKey:kAreaCodeInfoListOcnCategory];
    self.endRange = [aDecoder decodeObjectForKey:kAreaCodeInfoListEndRange];
    self.nxx = [aDecoder decodeObjectForKey:kAreaCodeInfoListNxx];
    self.areaName4 = [aDecoder decodeObjectForKey:kAreaCodeInfoListAreaName4];
    self.ocn = [aDecoder decodeObjectForKey:kAreaCodeInfoListOcn];
    self.companyName = [aDecoder decodeObjectForKey:kAreaCodeInfoListCompanyName];
    self.lata = [aDecoder decodeObjectForKey:kAreaCodeInfoListLata];
    self.npa = [aDecoder decodeObjectForKey:kAreaCodeInfoListNpa];
    self.startRange = [aDecoder decodeObjectForKey:kAreaCodeInfoListStartRange];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ocnCategory forKey:kAreaCodeInfoListOcnCategory];
    [aCoder encodeObject:_endRange forKey:kAreaCodeInfoListEndRange];
    [aCoder encodeObject:_nxx forKey:kAreaCodeInfoListNxx];
    [aCoder encodeObject:_areaName4 forKey:kAreaCodeInfoListAreaName4];
    [aCoder encodeObject:_ocn forKey:kAreaCodeInfoListOcn];
    [aCoder encodeObject:_companyName forKey:kAreaCodeInfoListCompanyName];
    [aCoder encodeObject:_lata forKey:kAreaCodeInfoListLata];
    [aCoder encodeObject:_npa forKey:kAreaCodeInfoListNpa];
    [aCoder encodeObject:_startRange forKey:kAreaCodeInfoListStartRange];
}

- (id)copyWithZone:(NSZone *)zone
{
    AreaCodeInfoList *copy = [[AreaCodeInfoList alloc] init];
    
    if (copy) {

        copy.ocnCategory = [self.ocnCategory copyWithZone:zone];
        copy.endRange = [self.endRange copyWithZone:zone];
        copy.nxx = [self.nxx copyWithZone:zone];
        copy.areaName4 = [self.areaName4 copyWithZone:zone];
        copy.ocn = [self.ocn copyWithZone:zone];
        copy.companyName = [self.companyName copyWithZone:zone];
        copy.lata = [self.lata copyWithZone:zone];
        copy.npa = [self.npa copyWithZone:zone];
        copy.startRange = [self.startRange copyWithZone:zone];
    }
    
    return copy;
}


@end
