//
//  Theme.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Theme.h"
#import "IndividualValueVariable.h"
#import "RangeVariable.h"


NSString *const kThemeBoundaryRef = @"boundaryRef";
NSString *const kThemeIndividualValueVariable = @"individualValueVariable";
NSString *const kThemeRangeVariable = @"rangeVariable";


@interface Theme ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Theme

@synthesize boundaryRef = _boundaryRef;
@synthesize individualValueVariable = _individualValueVariable;
@synthesize rangeVariable = _rangeVariable;


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
        self.boundaryRef = [self objectOrNilForKey:kThemeBoundaryRef fromDictionary:dict];
        NSObject *receivedIndividualValueVariable = [dict objectForKey:kThemeIndividualValueVariable];
        NSMutableArray *parsedIndividualValueVariable = [NSMutableArray array];
        if ([receivedIndividualValueVariable isKindOfClass:[NSArray class]]) {
            for (NSDictionary *item in (NSArray *)receivedIndividualValueVariable) {
                if ([item isKindOfClass:[NSDictionary class]]) {
                    [parsedIndividualValueVariable addObject:[IndividualValueVariable modelObjectWithDictionary:item]];
                }
            }
        } else if ([receivedIndividualValueVariable isKindOfClass:[NSDictionary class]]) {
            [parsedIndividualValueVariable addObject:[IndividualValueVariable modelObjectWithDictionary:(NSDictionary *)receivedIndividualValueVariable]];
        }
        
        self.individualValueVariable = [NSArray arrayWithArray:parsedIndividualValueVariable];
        NSObject *receivedRangeVariable = [dict objectForKey:kThemeRangeVariable];
        NSMutableArray *parsedRangeVariable = [NSMutableArray array];
        if ([receivedRangeVariable isKindOfClass:[NSArray class]]) {
            for (NSDictionary *item in (NSArray *)receivedRangeVariable) {
                if ([item isKindOfClass:[NSDictionary class]]) {
                    [parsedRangeVariable addObject:[RangeVariable modelObjectWithDictionary:item]];
                }
            }
        } else if ([receivedRangeVariable isKindOfClass:[NSDictionary class]]) {
            [parsedRangeVariable addObject:[RangeVariable modelObjectWithDictionary:(NSDictionary *)receivedRangeVariable]];
        }
        
        self.rangeVariable = [NSArray arrayWithArray:parsedRangeVariable];
        
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.boundaryRef forKey:kThemeBoundaryRef];
    NSMutableArray *tempArrayForIndividualValueVariable = [NSMutableArray array];
    for (NSObject *subArrayObject in self.individualValueVariable) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForIndividualValueVariable addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForIndividualValueVariable addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForIndividualValueVariable] forKey:kThemeIndividualValueVariable];
    NSMutableArray *tempArrayForRangeVariable = [NSMutableArray array];
    for (NSObject *subArrayObject in self.rangeVariable) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForRangeVariable addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForRangeVariable addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRangeVariable] forKey:kThemeRangeVariable];
    
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
    
    self.boundaryRef = [aDecoder decodeObjectForKey:kThemeBoundaryRef];
    self.individualValueVariable = [aDecoder decodeObjectForKey:kThemeIndividualValueVariable];
    self.rangeVariable = [aDecoder decodeObjectForKey:kThemeRangeVariable];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    [aCoder encodeObject:_boundaryRef forKey:kThemeBoundaryRef];
    [aCoder encodeObject:_individualValueVariable forKey:kThemeIndividualValueVariable];
    [aCoder encodeObject:_rangeVariable forKey:kThemeRangeVariable];
}

- (id)copyWithZone:(NSZone *)zone
{
    Theme *copy = [[Theme alloc] init];
    
    if (copy) {
        
        copy.boundaryRef = [self.boundaryRef copyWithZone:zone];
        copy.individualValueVariable = [self.individualValueVariable copyWithZone:zone];
        copy.rangeVariable = [self.rangeVariable copyWithZone:zone];
    }
    
    return copy;
}


@end
