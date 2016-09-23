//
//  TaxResponses.h
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UseTax, Census, SalesTax, Address, LatLongFields, Jurisdiction;

@interface TaxResponses : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) UseTax *useTax;
@property (nonatomic, strong) Census *census;
@property (nonatomic, assign) double confidence;
@property (nonatomic, strong) SalesTax *salesTax;
@property (nonatomic, strong) Address *matchedAddress;
@property (nonatomic, strong) LatLongFields *latLongFields;
@property (nonatomic, strong) Jurisdiction *jurisdiction;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
