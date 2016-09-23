//
//  LatLongFields.h
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Geometry;

@interface LatLongFields : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *streetMatchLevel;
@property (nonatomic, strong) NSString *streetMatchCode;
@property (nonatomic, strong) NSString *matchLevel;
@property (nonatomic, strong) NSString *matchCode;
@property (nonatomic, strong) Geometry *geometry;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
