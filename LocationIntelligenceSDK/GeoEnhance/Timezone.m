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

#import "Timezone.h"


NSString *const kBaseClassTimezoneName = @"timezoneName";
NSString *const kBaseClassTimestamp = @"timestamp";
NSString *const kBaseClassDstOffset = @"dstOffset";
NSString *const kBaseClassUtcOffset = @"utcOffset";


@interface Timezone ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Timezone

@synthesize timezoneName = _timezoneName;
@synthesize timestamp = _timestamp;
@synthesize dstOffset = _dstOffset;
@synthesize utcOffset = _utcOffset;


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
            self.timezoneName = [self objectOrNilForKey:kBaseClassTimezoneName fromDictionary:dict];
            self.timestamp = [[self objectOrNilForKey:kBaseClassTimestamp fromDictionary:dict] doubleValue];
            self.dstOffset = [[self objectOrNilForKey:kBaseClassDstOffset fromDictionary:dict] doubleValue];
            self.utcOffset = [[self objectOrNilForKey:kBaseClassUtcOffset fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.timezoneName forKey:kBaseClassTimezoneName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.timestamp] forKey:kBaseClassTimestamp];
    [mutableDict setValue:[NSNumber numberWithDouble:self.dstOffset] forKey:kBaseClassDstOffset];
    [mutableDict setValue:[NSNumber numberWithDouble:self.utcOffset] forKey:kBaseClassUtcOffset];

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

    self.timezoneName = [aDecoder decodeObjectForKey:kBaseClassTimezoneName];
    self.timestamp = [aDecoder decodeDoubleForKey:kBaseClassTimestamp];
    self.dstOffset = [aDecoder decodeDoubleForKey:kBaseClassDstOffset];
    self.utcOffset = [aDecoder decodeDoubleForKey:kBaseClassUtcOffset];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_timezoneName forKey:kBaseClassTimezoneName];
    [aCoder encodeDouble:_timestamp forKey:kBaseClassTimestamp];
    [aCoder encodeDouble:_dstOffset forKey:kBaseClassDstOffset];
    [aCoder encodeDouble:_utcOffset forKey:kBaseClassUtcOffset];
}

- (id)copyWithZone:(NSZone *)zone
{
    Timezone *copy = [[Timezone alloc] init];
    
    if (copy) {

        copy.timezoneName = [self.timezoneName copyWithZone:zone];
        copy.timestamp = self.timestamp;
        copy.dstOffset = self.dstOffset;
        copy.utcOffset = self.utcOffset;
    }
    
    return copy;
}


@end
