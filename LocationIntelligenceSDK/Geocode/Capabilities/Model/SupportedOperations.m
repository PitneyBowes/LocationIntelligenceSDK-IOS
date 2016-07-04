//
//  SupportedOperations.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "SupportedOperations.h"
#import "Outputs.h"
#import "RequiredInputs.h"
#import "SupportLevels.h"
#import "OptionalInputs.h"


NSString *const kSupportedOperationsOutputs = @"outputs";
NSString *const kSupportedOperationsRequiredInputs = @"requiredInputs";
NSString *const kSupportedOperationsName = @"name";
NSString *const kSupportedOperationsSupportLevels = @"supportLevels";
NSString *const kSupportedOperationsOptionalInputs = @"optionalInputs";


@interface SupportedOperations ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation SupportedOperations

@synthesize outputs = _outputs;
@synthesize requiredInputs = _requiredInputs;
@synthesize name = _name;
@synthesize supportLevels = _supportLevels;
@synthesize optionalInputs = _optionalInputs;


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
    NSObject *receivedOutputs = [dict objectForKey:kSupportedOperationsOutputs];
    NSMutableArray *parsedOutputs = [NSMutableArray array];
    if ([receivedOutputs isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedOutputs) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedOutputs addObject:[Outputs modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedOutputs isKindOfClass:[NSDictionary class]]) {
       [parsedOutputs addObject:[Outputs modelObjectWithDictionary:(NSDictionary *)receivedOutputs]];
    }

    self.outputs = [NSArray arrayWithArray:parsedOutputs];
    NSObject *receivedRequiredInputs = [dict objectForKey:kSupportedOperationsRequiredInputs];
    NSMutableArray *parsedRequiredInputs = [NSMutableArray array];
    if ([receivedRequiredInputs isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedRequiredInputs) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedRequiredInputs addObject:[RequiredInputs modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedRequiredInputs isKindOfClass:[NSDictionary class]]) {
       [parsedRequiredInputs addObject:[RequiredInputs modelObjectWithDictionary:(NSDictionary *)receivedRequiredInputs]];
    }

    self.requiredInputs = [NSArray arrayWithArray:parsedRequiredInputs];
            self.name = [self objectOrNilForKey:kSupportedOperationsName fromDictionary:dict];
    NSObject *receivedSupportLevels = [dict objectForKey:kSupportedOperationsSupportLevels];
    NSMutableArray *parsedSupportLevels = [NSMutableArray array];
    if ([receivedSupportLevels isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedSupportLevels) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedSupportLevels addObject:[SupportLevels modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedSupportLevels isKindOfClass:[NSDictionary class]]) {
       [parsedSupportLevels addObject:[SupportLevels modelObjectWithDictionary:(NSDictionary *)receivedSupportLevels]];
    }

    self.supportLevels = [NSArray arrayWithArray:parsedSupportLevels];
    NSObject *receivedOptionalInputs = [dict objectForKey:kSupportedOperationsOptionalInputs];
    NSMutableArray *parsedOptionalInputs = [NSMutableArray array];
    if ([receivedOptionalInputs isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedOptionalInputs) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedOptionalInputs addObject:[OptionalInputs modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedOptionalInputs isKindOfClass:[NSDictionary class]]) {
       [parsedOptionalInputs addObject:[OptionalInputs modelObjectWithDictionary:(NSDictionary *)receivedOptionalInputs]];
    }

    self.optionalInputs = [NSArray arrayWithArray:parsedOptionalInputs];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForOutputs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.outputs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForOutputs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForOutputs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForOutputs] forKey:kSupportedOperationsOutputs];
    NSMutableArray *tempArrayForRequiredInputs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.requiredInputs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForRequiredInputs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForRequiredInputs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForRequiredInputs] forKey:kSupportedOperationsRequiredInputs];
    [mutableDict setValue:self.name forKey:kSupportedOperationsName];
    NSMutableArray *tempArrayForSupportLevels = [NSMutableArray array];
    for (NSObject *subArrayObject in self.supportLevels) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForSupportLevels addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForSupportLevels addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForSupportLevels] forKey:kSupportedOperationsSupportLevels];
    NSMutableArray *tempArrayForOptionalInputs = [NSMutableArray array];
    for (NSObject *subArrayObject in self.optionalInputs) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForOptionalInputs addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForOptionalInputs addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForOptionalInputs] forKey:kSupportedOperationsOptionalInputs];

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

    self.outputs = [aDecoder decodeObjectForKey:kSupportedOperationsOutputs];
    self.requiredInputs = [aDecoder decodeObjectForKey:kSupportedOperationsRequiredInputs];
    self.name = [aDecoder decodeObjectForKey:kSupportedOperationsName];
    self.supportLevels = [aDecoder decodeObjectForKey:kSupportedOperationsSupportLevels];
    self.optionalInputs = [aDecoder decodeObjectForKey:kSupportedOperationsOptionalInputs];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_outputs forKey:kSupportedOperationsOutputs];
    [aCoder encodeObject:_requiredInputs forKey:kSupportedOperationsRequiredInputs];
    [aCoder encodeObject:_name forKey:kSupportedOperationsName];
    [aCoder encodeObject:_supportLevels forKey:kSupportedOperationsSupportLevels];
    [aCoder encodeObject:_optionalInputs forKey:kSupportedOperationsOptionalInputs];
}

- (id)copyWithZone:(NSZone *)zone
{
    SupportedOperations *copy = [[SupportedOperations alloc] init];
    
    if (copy) {

        copy.outputs = [self.outputs copyWithZone:zone];
        copy.requiredInputs = [self.requiredInputs copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.supportLevels = [self.supportLevels copyWithZone:zone];
        copy.optionalInputs = [self.optionalInputs copyWithZone:zone];
    }
    
    return copy;
}


@end
