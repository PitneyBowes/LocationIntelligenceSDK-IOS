//
//  Output.m
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Output.h"


NSString *const kOutputName = @"name";
NSString *const kOutputType = @"type";
NSString *const kOutputDescription = @"description";


@interface Output ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Output

@synthesize name = _name;
@synthesize type = _type;
@synthesize outputDescription = _outputDescription;


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
            self.name = [self objectOrNilForKey:kOutputName fromDictionary:dict];
            self.type = [self objectOrNilForKey:kOutputType fromDictionary:dict];
            self.outputDescription = [self objectOrNilForKey:kOutputDescription fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.name forKey:kOutputName];
    [mutableDict setValue:self.type forKey:kOutputType];
    [mutableDict setValue:self.outputDescription forKey:kOutputDescription];

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

    self.name = [aDecoder decodeObjectForKey:kOutputName];
    self.type = [aDecoder decodeObjectForKey:kOutputType];
    self.outputDescription = [aDecoder decodeObjectForKey:kOutputDescription];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_name forKey:kOutputName];
    [aCoder encodeObject:_type forKey:kOutputType];
    [aCoder encodeObject:_outputDescription forKey:kOutputDescription];
}

- (id)copyWithZone:(NSZone *)zone
{
    Output *copy = [[Output alloc] init];
    
    if (copy) {

        copy.name = [self.name copyWithZone:zone];
        copy.type = [self.type copyWithZone:zone];
        copy.outputDescription = [self.outputDescription copyWithZone:zone];
    }
    
    return copy;
}


@end
