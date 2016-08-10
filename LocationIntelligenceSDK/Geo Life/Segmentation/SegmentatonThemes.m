//
//  Themes.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "SegmentationThemes.h"
#import "LifeStyleTheme.h"


NSString *const kThemesLifeStyleTheme = @"lifeStyleTheme";


@interface SegmentationThemes ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SegmentationThemes

@synthesize lifeStyleTheme = _lifeStyleTheme;


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
            self.lifeStyleTheme = [LifeStyleTheme modelObjectWithDictionary:[dict objectForKey:kThemesLifeStyleTheme]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.lifeStyleTheme dictionaryRepresentation] forKey:kThemesLifeStyleTheme];

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

    self.lifeStyleTheme = [aDecoder decodeObjectForKey:kThemesLifeStyleTheme];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_lifeStyleTheme forKey:kThemesLifeStyleTheme];
}

- (id)copyWithZone:(NSZone *)zone
{
    SegmentationThemes *copy = [[SegmentationThemes alloc] init];
    
    if (copy) {

        copy.lifeStyleTheme = [self.lifeStyleTheme copyWithZone:zone];
    }
    
    return copy;
}


@end
