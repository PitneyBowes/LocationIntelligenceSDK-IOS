//
//  Responses.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Responses.h"
#import "Candidates.h"


NSString *const kResponsesTotalMatches = @"totalMatches";
NSString *const kResponsesTotalPossibleCandidates = @"totalPossibleCandidates";
NSString *const kResponsesCandidates = @"candidates";


@interface Responses ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Responses

@synthesize totalMatches = _totalMatches;
@synthesize totalPossibleCandidates = _totalPossibleCandidates;
@synthesize candidates = _candidates;


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
            self.totalMatches = [[self objectOrNilForKey:kResponsesTotalMatches fromDictionary:dict] doubleValue];
            self.totalPossibleCandidates = [[self objectOrNilForKey:kResponsesTotalPossibleCandidates fromDictionary:dict] doubleValue];
    NSObject *receivedCandidates = [dict objectForKey:kResponsesCandidates];
    NSMutableArray *parsedCandidates = [NSMutableArray array];
    if ([receivedCandidates isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedCandidates) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedCandidates addObject:[Candidates modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedCandidates isKindOfClass:[NSDictionary class]]) {
       [parsedCandidates addObject:[Candidates modelObjectWithDictionary:(NSDictionary *)receivedCandidates]];
    }

    self.candidates = [NSArray arrayWithArray:parsedCandidates];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalMatches] forKey:kResponsesTotalMatches];
    [mutableDict setValue:[NSNumber numberWithDouble:self.totalPossibleCandidates] forKey:kResponsesTotalPossibleCandidates];
    NSMutableArray *tempArrayForCandidates = [NSMutableArray array];
    for (NSObject *subArrayObject in self.candidates) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForCandidates addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForCandidates addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForCandidates] forKey:kResponsesCandidates];

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

    self.totalMatches = [aDecoder decodeDoubleForKey:kResponsesTotalMatches];
    self.totalPossibleCandidates = [aDecoder decodeDoubleForKey:kResponsesTotalPossibleCandidates];
    self.candidates = [aDecoder decodeObjectForKey:kResponsesCandidates];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_totalMatches forKey:kResponsesTotalMatches];
    [aCoder encodeDouble:_totalPossibleCandidates forKey:kResponsesTotalPossibleCandidates];
    [aCoder encodeObject:_candidates forKey:kResponsesCandidates];
}

- (id)copyWithZone:(NSZone *)zone
{
    Responses *copy = [[Responses alloc] init];
    
    if (copy) {

        copy.totalMatches = self.totalMatches;
        copy.totalPossibleCandidates = self.totalPossibleCandidates;
        copy.candidates = [self.candidates copyWithZone:zone];
    }
    
    return copy;
}


@end
