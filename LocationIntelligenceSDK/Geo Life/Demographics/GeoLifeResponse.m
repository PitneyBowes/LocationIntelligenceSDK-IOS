//
//  BaseClass.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeoLifeResponse.h"
#import "Themes.h"
#import "Boundaries.h"


NSString *const kBaseClassThemes = @"themes";
NSString *const kBaseClassBoundaries = @"boundaries";


@interface GeoLifeResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation GeoLifeResponse

@synthesize themes = _themes;
@synthesize boundaries = _boundaries;


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
            self.themes = [Themes modelObjectWithDictionary:[dict objectForKey:kBaseClassThemes]];
            self.boundaries = [Boundaries modelObjectWithDictionary:[dict objectForKey:kBaseClassBoundaries]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.themes dictionaryRepresentation] forKey:kBaseClassThemes];
    [mutableDict setValue:[self.boundaries dictionaryRepresentation] forKey:kBaseClassBoundaries];

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

    self.themes = [aDecoder decodeObjectForKey:kBaseClassThemes];
    self.boundaries = [aDecoder decodeObjectForKey:kBaseClassBoundaries];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_themes forKey:kBaseClassThemes];
    [aCoder encodeObject:_boundaries forKey:kBaseClassBoundaries];
}

- (id)copyWithZone:(NSZone *)zone
{
    GeoLifeResponse *copy = [[GeoLifeResponse alloc] init];
    
    if (copy) {

        copy.themes = [self.themes copyWithZone:zone];
        copy.boundaries = [self.boundaries copyWithZone:zone];
    }
    
    return copy;
}


@end
