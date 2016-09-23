//
//  Census.h
//
//  Created by Gaurav Jain on 31/08/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Cbsa, Mcd;

@interface Census : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *tract;
@property (nonatomic, strong) Cbsa *cbsa;
@property (nonatomic, strong) NSString *matchLevel;
@property (nonatomic, strong) NSString *matchCode;
@property (nonatomic, strong) Mcd *mcd;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
