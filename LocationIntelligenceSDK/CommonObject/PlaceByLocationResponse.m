//
//  Place.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "PlaceByLocationResponse.h"
#import "NeighbourhoodName.h"


NSString *const kPlaceLevel = @"level";
NSString *const kPlaceName = @"name";
NSString *const kPlaceLevelName = @"levelName";


@interface PlaceByLocationResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation PlaceByLocationResponse

@synthesize level = _level;
@synthesize name = _name;
@synthesize levelName = _levelName;


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
        self.level = [self objectOrNilForKey:kPlaceLevel fromDictionary:dict];
        NSObject *receivedName = [dict objectForKey:kPlaceName];
        NSMutableArray *parsedName = [NSMutableArray array];
        if ([receivedName isKindOfClass:[NSArray class]]) {
            for (NSDictionary *item in (NSArray *)receivedName) {
                if ([item isKindOfClass:[NSDictionary class]]) {
                    [parsedName addObject:[NeighbourhoodName modelObjectWithDictionary:item]];
                }
            }
        } else if ([receivedName isKindOfClass:[NSDictionary class]]) {
            [parsedName addObject:[NeighbourhoodName modelObjectWithDictionary:(NSDictionary *)receivedName]];
        }
        
        self.name = [NSArray arrayWithArray:parsedName];
        self.levelName = [self objectOrNilForKey:kPlaceLevelName fromDictionary:dict];
        
    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.level forKey:kPlaceLevel];
    NSMutableArray *tempArrayForName = [NSMutableArray array];
    for (NSObject *subArrayObject in self.name) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForName addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForName addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForName] forKey:kPlaceName];
    [mutableDict setValue:self.levelName forKey:kPlaceLevelName];
    
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
    
    self.level = [aDecoder decodeObjectForKey:kPlaceLevel];
    self.name = [aDecoder decodeObjectForKey:kPlaceName];
    self.levelName = [aDecoder decodeObjectForKey:kPlaceLevelName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    
    [aCoder encodeObject:_level forKey:kPlaceLevel];
    [aCoder encodeObject:_name forKey:kPlaceName];
    [aCoder encodeObject:_levelName forKey:kPlaceLevelName];
}

- (id)copyWithZone:(NSZone *)zone
{
    PlaceByLocationResponse *copy = [[PlaceByLocationResponse alloc] init];
    
    if (copy) {
        
        copy.level = [self.level copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.levelName = [self.levelName copyWithZone:zone];
    }
    
    return copy;
}


@end
