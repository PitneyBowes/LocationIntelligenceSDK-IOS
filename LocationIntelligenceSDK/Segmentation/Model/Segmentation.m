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

#import "Segmentation.h"
#import "Boundaries.h"
#import "SegmentationThemes.h"


NSString *const kBaseSegmentClassBoundaries = @"boundaries";
NSString *const kSegmentBaseClassThemes = @"themes";


@interface Segmentation ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Segmentation

@synthesize boundaries = _boundaries;
@synthesize themes = _themes;


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
        self.boundaries = [Boundaries modelObjectWithDictionary:[dict objectForKey:kBaseSegmentClassBoundaries]];
        self.themes = [SegmentationThemes modelObjectWithDictionary:[dict objectForKey:kSegmentBaseClassThemes]];
        
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.boundaries dictionaryRepresentation] forKey:kBaseSegmentClassBoundaries];
    [mutableDict setValue:[self.themes dictionaryRepresentation] forKey:kSegmentBaseClassThemes];
    
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
    
    self.boundaries = [aDecoder decodeObjectForKey:kBaseSegmentClassBoundaries];
    self.themes = [aDecoder decodeObjectForKey:kSegmentBaseClassThemes];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    [aCoder encodeObject:_boundaries forKey:kBaseSegmentClassBoundaries];
    [aCoder encodeObject:_themes forKey:kSegmentBaseClassThemes];
}

- (id)copyWithZone:(NSZone *)zone
{
    Segmentation *copy = [[Segmentation alloc] init];
    
    if (copy) {
        
        copy.boundaries = [self.boundaries copyWithZone:zone];
        copy.themes = [self.themes copyWithZone:zone];
    }
    
    return copy;
}


@end
