//
//  ErrorResponse.m
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ErrorResponse.h"
#import "LIErrorResponse.h"


NSString *const kErrorResponseErrorResponseType = @"errorResponseType";
NSString *const kErrorResponseLbsErrorResponse = @"liErrorResponse";
NSString *const kErrorResponseRootCauseErrorMessage = @"rootCauseErrorMessage";


@interface ErrorResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ErrorResponse

@synthesize errorResponseType = _errorResponseType;
@synthesize liErrorResponse = _liErrorResponse;
@synthesize rootCauseErrorMessage = _rootCauseErrorMessage;


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
            self.errorResponseType = [self objectOrNilForKey:kErrorResponseErrorResponseType fromDictionary:dict];
            self.liErrorResponse = [LIErrorResponse modelObjectWithDictionary:[dict objectForKey:kErrorResponseLbsErrorResponse]];
            self.rootCauseErrorMessage = [self objectOrNilForKey:kErrorResponseRootCauseErrorMessage fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.errorResponseType forKey:kErrorResponseErrorResponseType];
    [mutableDict setValue:[self.liErrorResponse dictionaryRepresentation] forKey:kErrorResponseLbsErrorResponse];
    [mutableDict setValue:self.rootCauseErrorMessage forKey:kErrorResponseRootCauseErrorMessage];

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

    self.errorResponseType = [aDecoder decodeObjectForKey:kErrorResponseErrorResponseType];
    self.liErrorResponse = [aDecoder decodeObjectForKey:kErrorResponseLbsErrorResponse];
    self.rootCauseErrorMessage = [aDecoder decodeObjectForKey:kErrorResponseRootCauseErrorMessage];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errorResponseType forKey:kErrorResponseErrorResponseType];
    [aCoder encodeObject:_liErrorResponse forKey:kErrorResponseLbsErrorResponse];
    [aCoder encodeObject:_rootCauseErrorMessage forKey:kErrorResponseRootCauseErrorMessage];
}

- (id)copyWithZone:(NSZone *)zone
{
    ErrorResponse *copy = [[ErrorResponse alloc] init];
    
    if (copy) {

        copy.errorResponseType = [self.errorResponseType copyWithZone:zone];
        copy.liErrorResponse = [self.liErrorResponse copyWithZone:zone];
        copy.rootCauseErrorMessage = [self.rootCauseErrorMessage copyWithZone:zone];
    }
    
    return copy;
}


-(int) getHttpStatusCode{
    
    int httpStatusCode = 0;
    if(self.liErrorResponse != nil){
        return [self.liErrorResponse httpStatusCode];
    }
    return httpStatusCode;
}

-(NSArray*)getLBSError{
    
    if(self.liErrorResponse != nil && [self.liErrorResponse  error] != nil){
        return [[self.liErrorResponse error] errors];
    }
    return nil;
}



@end
