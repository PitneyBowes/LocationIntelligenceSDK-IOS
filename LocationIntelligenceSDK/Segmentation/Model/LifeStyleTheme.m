//
//  LifeStyleTheme.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "LifeStyleTheme.h"
#import "IndividualValueVariable.h"


NSString *const kLifeStyleThemeIndividualValueVariable = @"individualValueVariable";


@interface LifeStyleTheme ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LifeStyleTheme

@synthesize individualValueVariable = _individualValueVariable;


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
    NSObject *receivedIndividualValueVariable = [dict objectForKey:kLifeStyleThemeIndividualValueVariable];
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

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForIndividualValueVariable] forKey:kLifeStyleThemeIndividualValueVariable];

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

    self.individualValueVariable = [aDecoder decodeObjectForKey:kLifeStyleThemeIndividualValueVariable];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_individualValueVariable forKey:kLifeStyleThemeIndividualValueVariable];
}

- (id)copyWithZone:(NSZone *)zone
{
    LifeStyleTheme *copy = [[LifeStyleTheme alloc] init];
    
    if (copy) {

        copy.individualValueVariable = [self.individualValueVariable copyWithZone:zone];
    }
    
    return copy;
}


@end
