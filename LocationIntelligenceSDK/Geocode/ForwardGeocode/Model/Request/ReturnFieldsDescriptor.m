//
//  ReturnFieldsDescriptor.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ReturnFieldsDescriptor.h"


NSString *const kReturnFieldsDescriptorReturnStreetAddressFields = @"returnStreetAddressFields";
NSString *const kReturnFieldsDescriptorReturnAllCustomFields = @"returnAllCustomFields";
NSString *const kReturnFieldsDescriptorReturnMatchDescriptor = @"returnMatchDescriptor";
NSString *const kReturnFieldsDescriptorReturnUnitInformation = @"returnUnitInformation";
NSString *const kReturnFieldsDescriptorReturnedCustomFieldKeys = @"returnedCustomFieldKeys";


@interface ReturnFieldsDescriptor ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ReturnFieldsDescriptor

@synthesize returnStreetAddressFields = _returnStreetAddressFields;
@synthesize returnAllCustomFields = _returnAllCustomFields;
@synthesize returnMatchDescriptor = _returnMatchDescriptor;
@synthesize returnUnitInformation = _returnUnitInformation;
@synthesize returnedCustomFieldKeys = _returnedCustomFieldKeys;


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
            self.returnStreetAddressFields = [self objectOrNilForKey:kReturnFieldsDescriptorReturnStreetAddressFields fromDictionary:dict];
            self.returnAllCustomFields = [self objectOrNilForKey:kReturnFieldsDescriptorReturnAllCustomFields fromDictionary:dict];
            self.returnMatchDescriptor = [self objectOrNilForKey:kReturnFieldsDescriptorReturnMatchDescriptor fromDictionary:dict];
            self.returnUnitInformation = [self objectOrNilForKey:kReturnFieldsDescriptorReturnUnitInformation fromDictionary:dict];
            self.returnedCustomFieldKeys = [self objectOrNilForKey:kReturnFieldsDescriptorReturnedCustomFieldKeys fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.returnStreetAddressFields forKey:kReturnFieldsDescriptorReturnStreetAddressFields];
    [mutableDict setValue:self.returnAllCustomFields forKey:kReturnFieldsDescriptorReturnAllCustomFields];
    [mutableDict setValue:self.returnMatchDescriptor forKey:kReturnFieldsDescriptorReturnMatchDescriptor];
    [mutableDict setValue:self.returnUnitInformation forKey:kReturnFieldsDescriptorReturnUnitInformation];
    NSMutableArray *tempArrayForReturnedCustomFieldKeys = [NSMutableArray array];
    for (NSObject *subArrayObject in self.returnedCustomFieldKeys) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForReturnedCustomFieldKeys addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForReturnedCustomFieldKeys addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForReturnedCustomFieldKeys] forKey:kReturnFieldsDescriptorReturnedCustomFieldKeys];

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

    self.returnStreetAddressFields = [aDecoder decodeObjectForKey:kReturnFieldsDescriptorReturnStreetAddressFields];
    self.returnAllCustomFields = [aDecoder decodeObjectForKey:kReturnFieldsDescriptorReturnAllCustomFields];
    self.returnMatchDescriptor = [aDecoder decodeObjectForKey:kReturnFieldsDescriptorReturnMatchDescriptor];
    self.returnUnitInformation = [aDecoder decodeObjectForKey:kReturnFieldsDescriptorReturnUnitInformation];
    self.returnedCustomFieldKeys = [aDecoder decodeObjectForKey:kReturnFieldsDescriptorReturnedCustomFieldKeys];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_returnStreetAddressFields forKey:kReturnFieldsDescriptorReturnStreetAddressFields];
    [aCoder encodeObject:_returnAllCustomFields forKey:kReturnFieldsDescriptorReturnAllCustomFields];
    [aCoder encodeObject:_returnMatchDescriptor forKey:kReturnFieldsDescriptorReturnMatchDescriptor];
    [aCoder encodeObject:_returnUnitInformation forKey:kReturnFieldsDescriptorReturnUnitInformation];
    [aCoder encodeObject:_returnedCustomFieldKeys forKey:kReturnFieldsDescriptorReturnedCustomFieldKeys];
}

- (id)copyWithZone:(NSZone *)zone
{
    ReturnFieldsDescriptor *copy = [[ReturnFieldsDescriptor alloc] init];
    
    if (copy) {

        copy.returnStreetAddressFields = [self.returnStreetAddressFields copyWithZone:zone];
        copy.returnAllCustomFields = [self.returnAllCustomFields copyWithZone:zone];
        copy.returnMatchDescriptor = [self.returnMatchDescriptor copyWithZone:zone];
        copy.returnUnitInformation = [self.returnUnitInformation copyWithZone:zone];
        copy.returnedCustomFieldKeys = [self.returnedCustomFieldKeys copyWithZone:zone];
    }
    
    return copy;
}


@end
