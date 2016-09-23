//
//  BaseClass.h
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Preferences,TaxAddresses;

@interface TaxRateAddressRequest : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) Preferences *preferences;
@property (nonatomic, strong) NSArray *taxRateAddresses;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
