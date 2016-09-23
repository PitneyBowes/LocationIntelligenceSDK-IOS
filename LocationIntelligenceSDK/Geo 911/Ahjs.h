//
//  Ahjs.h
//
//  Created by Gaurav Jain on 08/07/16
//  Copyright (c) 2016 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Ahjs : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSArray *ahjs;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
