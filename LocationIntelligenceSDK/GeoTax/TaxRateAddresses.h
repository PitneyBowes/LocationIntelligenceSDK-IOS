//
//  TaxAddresses.h
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface TaxRateAddresses : NSObject <NSCoding, NSCopying>



@property (nonatomic, strong) NSString *userBufferWidth;
@property (nonatomic, strong) NSString *bufferWidth;
@property (nonatomic, strong) NSString *distanceUnits;

@property (nonatomic, strong) id country;
@property (nonatomic, strong) id postCodeExt;
@property (nonatomic, strong) id formattedAddress;
@property (nonatomic, strong) id areaName1;
@property (nonatomic, strong) id addressNumber;
@property (nonatomic, strong) id streetName;
@property (nonatomic, strong) id city;
@property (nonatomic, strong) id areaName3;
@property (nonatomic, strong) id mainAddressLine;
@property (nonatomic, strong) id unitType;
@property (nonatomic, strong) id placeName;
@property (nonatomic, strong) id addressLastLine;
@property (nonatomic, strong) id postalCode;
@property (nonatomic, strong) id areaName2;
@property (nonatomic, strong) id areaName4;
@property (nonatomic, strong) id unitValue;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
