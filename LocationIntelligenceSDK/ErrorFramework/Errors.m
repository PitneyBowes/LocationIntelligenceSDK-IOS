//
//  Errors.m
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Errors.h"


NSString *const kErrorsErrorDescription = @"errorDescription";
NSString *const kErrorsErrorCode = @"errorCode";


@interface Errors ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Errors

@synthesize errorDescription = _errorDescription;
@synthesize errorCode = _errorCode;


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
            self.errorDescription = [self objectOrNilForKey:kErrorsErrorDescription fromDictionary:dict];
            self.errorCode = [self objectOrNilForKey:kErrorsErrorCode fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorDescription forKey:kErrorsErrorDescription];
    [mutableDict setValue:self.errorCode forKey:kErrorsErrorCode];

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

    self.errorDescription = [aDecoder decodeObjectForKey:kErrorsErrorDescription];
    self.errorCode = [aDecoder decodeObjectForKey:kErrorsErrorCode];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorDescription forKey:kErrorsErrorDescription];
    [aCoder encodeObject:_errorCode forKey:kErrorsErrorCode];
}

- (id)copyWithZone:(NSZone *)zone
{
    Errors *copy = [[Errors alloc] init];
    
    if (copy) {

        copy.errorDescription = [self.errorDescription copyWithZone:zone];
        copy.errorCode = [self.errorCode copyWithZone:zone];
    }
    
    return copy;
}


@end
