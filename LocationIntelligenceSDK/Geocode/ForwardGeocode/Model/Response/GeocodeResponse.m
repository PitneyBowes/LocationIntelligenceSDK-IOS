//
//  GeocodeResponse.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeocodeResponse.h"
#import "Responses.h"


NSString *const kGeocodeResponseResponses = @"responses";


@interface GeocodeResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeocodeResponse

@synthesize responses = _responses;


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
    NSObject *receivedResponses = [dict objectForKey:kGeocodeResponseResponses];
    NSMutableArray *parsedResponses = [NSMutableArray array];
    if ([receivedResponses isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedResponses) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedResponses addObject:[Responses modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedResponses isKindOfClass:[NSDictionary class]]) {
       [parsedResponses addObject:[Responses modelObjectWithDictionary:(NSDictionary *)receivedResponses]];
    }

    self.responses = [NSArray arrayWithArray:parsedResponses];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForResponses = [NSMutableArray array];
    for (NSObject *subArrayObject in self.responses) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForResponses addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForResponses addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForResponses] forKey:kGeocodeResponseResponses];

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

    self.responses = [aDecoder decodeObjectForKey:kGeocodeResponseResponses];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_responses forKey:kGeocodeResponseResponses];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeocodeResponse *copy = [[GeocodeResponse alloc] init];
    
    if (copy) {

        copy.responses = [self.responses copyWithZone:zone];
    }
    
    return copy;
}


@end
