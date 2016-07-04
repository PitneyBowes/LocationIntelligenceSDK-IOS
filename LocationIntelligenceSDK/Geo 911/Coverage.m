//
//  Coverage.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Coverage.h"


NSString *const kCoverageComments = @"comments";
NSString *const kCoverageExceptions = @"exceptions";
NSString *const kCoverageArea = @"area";


@interface Coverage ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Coverage

@synthesize comments = _comments;
@synthesize exceptions = _exceptions;
@synthesize area = _area;


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
            self.comments = [self objectOrNilForKey:kCoverageComments fromDictionary:dict];
            self.exceptions = [self objectOrNilForKey:kCoverageExceptions fromDictionary:dict];
            self.area = [self objectOrNilForKey:kCoverageArea fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.comments forKey:kCoverageComments];
    [mutableDict setValue:self.exceptions forKey:kCoverageExceptions];
    [mutableDict setValue:self.area forKey:kCoverageArea];

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

    self.comments = [aDecoder decodeObjectForKey:kCoverageComments];
    self.exceptions = [aDecoder decodeObjectForKey:kCoverageExceptions];
    self.area = [aDecoder decodeObjectForKey:kCoverageArea];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_comments forKey:kCoverageComments];
    [aCoder encodeObject:_exceptions forKey:kCoverageExceptions];
    [aCoder encodeObject:_area forKey:kCoverageArea];
}

- (id)copyWithZone:(NSZone *)zone
{
    Coverage *copy = [[Coverage alloc] init];
    
    if (copy) {

        copy.comments = [self.comments copyWithZone:zone];
        copy.exceptions = [self.exceptions copyWithZone:zone];
        copy.area = [self.area copyWithZone:zone];
    }
    
    return copy;
}


@end
