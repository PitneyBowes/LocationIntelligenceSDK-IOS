//
//  Error.m
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Error.h"
#import "Errors.h"


NSString *const kErrorErrors = @"errors";


@interface Error ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Error

@synthesize errors = _errors;


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
    NSObject *receivedErrors = [dict objectForKey:kErrorErrors];
    NSMutableArray *parsedErrors = [NSMutableArray array];
    if ([receivedErrors isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedErrors) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedErrors addObject:[Errors modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedErrors isKindOfClass:[NSDictionary class]]) {
       [parsedErrors addObject:[Errors modelObjectWithDictionary:(NSDictionary *)receivedErrors]];
    }

    self.errors = [NSArray arrayWithArray:parsedErrors];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForErrors = [NSMutableArray array];
    for (NSObject *subArrayObject in self.errors) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForErrors addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForErrors addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForErrors] forKey:kErrorErrors];

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

    self.errors = [aDecoder decodeObjectForKey:kErrorErrors];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_errors forKey:kErrorErrors];
}

- (id)copyWithZone:(NSZone *)zone
{
    Error *copy = [[Error alloc] init];
    
    if (copy) {

        copy.errors = [self.errors copyWithZone:zone];
    }
    
    return copy;
}


@end
