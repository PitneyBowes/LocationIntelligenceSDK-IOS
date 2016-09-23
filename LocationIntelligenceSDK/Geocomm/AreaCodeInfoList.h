//
//  AreaCodeInfoList.h
//
//  Created by Gaurav Jain on 09/09/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface AreaCodeInfoList : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *ocnCategory;
@property (nonatomic, strong) NSString *endRange;
@property (nonatomic, strong) NSString *nxx;
@property (nonatomic, strong) NSString *areaName4;
@property (nonatomic, strong) NSString *ocn;
@property (nonatomic, strong) NSString *companyName;
@property (nonatomic, strong) NSString *lata;
@property (nonatomic, strong) NSString *npa;
@property (nonatomic, strong) NSString *startRange;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
