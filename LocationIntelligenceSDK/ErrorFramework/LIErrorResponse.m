//
//  SBSErrorResponse.m
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "LIErrorResponse.h"
#import "Error.h"


NSString *const kLbsErrorResponseError = @"errors";
NSString *const kLbsErrorResponseHttpStatusCode = @"httpStatusCode";


@interface LIErrorResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation LIErrorResponse

@synthesize error = _error;
@synthesize httpStatusCode = _httpStatusCode;


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
            self.error = [Error modelObjectWithDictionary:[dict objectForKey:kLbsErrorResponseError]];
            self.httpStatusCode = [[self objectOrNilForKey:kLbsErrorResponseHttpStatusCode fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.error dictionaryRepresentation] forKey:kLbsErrorResponseError];
    [mutableDict setValue:[NSNumber numberWithDouble:self.httpStatusCode] forKey:kLbsErrorResponseHttpStatusCode];

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

    self.error = [aDecoder decodeObjectForKey:kLbsErrorResponseError];
    self.httpStatusCode = [aDecoder decodeDoubleForKey:kLbsErrorResponseHttpStatusCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_error forKey:kLbsErrorResponseError];
    [aCoder encodeDouble:_httpStatusCode forKey:kLbsErrorResponseHttpStatusCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    LIErrorResponse *copy = [[LIErrorResponse alloc] init];
    
    if (copy) {

        copy.error = [self.error copyWithZone:zone];
        copy.httpStatusCode = self.httpStatusCode;
    }
    
    return copy;
}


@end
