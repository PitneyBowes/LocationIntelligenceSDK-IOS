//
//  RangeVariable.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "RangeVariable.h"
#import "Field.h"


NSString *const kRangeVariableOrder = @"order";
NSString *const kRangeVariableCount = @"count";
NSString *const kRangeVariableName = @"name";
NSString *const kRangeVariableDescription = @"description";
NSString *const kRangeVariableField = @"field";


@interface RangeVariable ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation RangeVariable

@synthesize order = _order;
@synthesize count = _count;
@synthesize name = _name;
@synthesize rangeVariableDescription = _rangeVariableDescription;
@synthesize field = _field;


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
            self.order = [self objectOrNilForKey:kRangeVariableOrder fromDictionary:dict];
            self.count = [self objectOrNilForKey:kRangeVariableCount fromDictionary:dict];
            self.name = [self objectOrNilForKey:kRangeVariableName fromDictionary:dict];
            self.rangeVariableDescription = [self objectOrNilForKey:kRangeVariableDescription fromDictionary:dict];
    NSObject *receivedField = [dict objectForKey:kRangeVariableField];
    NSMutableArray *parsedField = [NSMutableArray array];
    if ([receivedField isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedField) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedField addObject:[Field modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedField isKindOfClass:[NSDictionary class]]) {
       [parsedField addObject:[Field modelObjectWithDictionary:(NSDictionary *)receivedField]];
    }

    self.field = [NSArray arrayWithArray:parsedField];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.order forKey:kRangeVariableOrder];
    [mutableDict setValue:self.count forKey:kRangeVariableCount];
    [mutableDict setValue:self.name forKey:kRangeVariableName];
    [mutableDict setValue:self.rangeVariableDescription forKey:kRangeVariableDescription];
    NSMutableArray *tempArrayForField = [NSMutableArray array];
    for (NSObject *subArrayObject in self.field) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForField addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForField addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForField] forKey:kRangeVariableField];

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

    self.order = [aDecoder decodeObjectForKey:kRangeVariableOrder];
    self.count = [aDecoder decodeObjectForKey:kRangeVariableCount];
    self.name = [aDecoder decodeObjectForKey:kRangeVariableName];
    self.rangeVariableDescription = [aDecoder decodeObjectForKey:kRangeVariableDescription];
    self.field = [aDecoder decodeObjectForKey:kRangeVariableField];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_order forKey:kRangeVariableOrder];
    [aCoder encodeObject:_count forKey:kRangeVariableCount];
    [aCoder encodeObject:_name forKey:kRangeVariableName];
    [aCoder encodeObject:_rangeVariableDescription forKey:kRangeVariableDescription];
    [aCoder encodeObject:_field forKey:kRangeVariableField];
}

- (id)copyWithZone:(NSZone *)zone
{
    RangeVariable *copy = [[RangeVariable alloc] init];
    
    if (copy) {

        copy.order = [self.order copyWithZone:zone];
        copy.count = [self.count copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.rangeVariableDescription = [self.rangeVariableDescription copyWithZone:zone];
        copy.field = [self.field copyWithZone:zone];
    }
    
    return copy;
}


@end
