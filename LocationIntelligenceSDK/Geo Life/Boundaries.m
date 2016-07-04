//
//  Boundaries.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Boundaries.h"
#import "Boundary.h"


NSString *const kBoundariesBoundary = @"boundary";


@interface Boundaries ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Boundaries

@synthesize boundary = _boundary;


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
    NSObject *receivedBoundary = [dict objectForKey:kBoundariesBoundary];
    NSMutableArray *parsedBoundary = [NSMutableArray array];
    if ([receivedBoundary isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedBoundary) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedBoundary addObject:[Boundary modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedBoundary isKindOfClass:[NSDictionary class]]) {
       [parsedBoundary addObject:[Boundary modelObjectWithDictionary:(NSDictionary *)receivedBoundary]];
    }

    self.boundary = [NSArray arrayWithArray:parsedBoundary];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForBoundary = [NSMutableArray array];
    for (NSObject *subArrayObject in self.boundary) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForBoundary addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForBoundary addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForBoundary] forKey:kBoundariesBoundary];

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

    self.boundary = [aDecoder decodeObjectForKey:kBoundariesBoundary];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_boundary forKey:kBoundariesBoundary];
}

- (id)copyWithZone:(NSZone *)zone
{
    Boundaries *copy = [[Boundaries alloc] init];
    
    if (copy) {

        copy.boundary = [self.boundary copyWithZone:zone];
    }
    
    return copy;
}


@end
