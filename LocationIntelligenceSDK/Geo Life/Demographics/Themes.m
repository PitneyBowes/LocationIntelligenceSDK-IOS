//
//  Themes.m
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "Themes.h"
#import "AgeTheme.h"
#import "AutomobileTheme.h"
#import "GenderTheme.h"
#import "AttitudesAndMotivationTheme.h"
#import "ChannelPreferencesTheme.h"
#import "CommuterPatternsTheme.h"
#import "EducationalAttainmentTheme.h"
#import "EthnicityTheme.h"
#import "FinancialProductsTheme.h"
#import "HouseholdSizeTheme.h"
#import "IncomeTheme.h"
#import "MaritalStatusTheme.h"
#import "PurchasingBehaviorTheme.h"
#import "RaceTheme.h"


NSString *const kThemesAgeTheme = @"ageTheme";
NSString *const kThemesAutomobileTheme = @"automobileTheme";
NSString *const kGenderTheme=@"genderTheme";
NSString *const kAttitudesAndMotivationTheme=@"attitudesAndMotivationTheme";
NSString *const kChannelPreferencesTheme=@"channelPreferencesTheme";
NSString *const kCommuterPatternsTheme=@"commuterPatternsTheme";
NSString *const kEducationalAttainmentTheme=@"educationalAttainmentTheme";
NSString *const kEthnicityTheme=@"ethnicityTheme";
NSString *const kFinancialProductsTheme=@"financialProductsTheme";
NSString *const kHouseholdSizeTheme=@"householdSizeTheme";
NSString *const kIncomeTheme=@"incomeTheme";
NSString *const kMaritalStatusTheme=@"maritalStatusTheme";
NSString *const kPurchasingBehaviorTheme=@"purchasingBehaviorTheme";
NSString *const kRaceTheme=@"raceTheme";


@interface Themes ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation Themes

@synthesize ageTheme = _ageTheme;
@synthesize automobileTheme= _automobileTheme;
@synthesize genderTheme=_genderTheme;
@synthesize attitudesAndMotivationTheme=_attitudesAndMotivationTheme;
@synthesize channelPreferencesTheme=_channelPreferencesTheme;
@synthesize commuterPatternsTheme=_commuterPatternsTheme;
@synthesize educationalAttainmentTheme=_educationalAttainmentTheme;
@synthesize ethnicityTheme=_ethnicityTheme;
@synthesize financialProductsTheme=_financialProductsTheme;
@synthesize householdSizeTheme=_householdSizeTheme;
@synthesize incomeTheme=_incomeTheme;
@synthesize maritalStatusTheme=_maritalStatusTheme;
@synthesize purchasingBehaviorTheme=_purchasingBehaviorTheme;
@synthesize raceTheme=_raceTheme;



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
            self.ageTheme = [AgeTheme modelObjectWithDictionary:[dict objectForKey:kThemesAgeTheme]];
            self.automobileTheme = [AutomobileTheme modelObjectWithDictionary:[dict objectForKey:kThemesAutomobileTheme]];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[self.ageTheme dictionaryRepresentation] forKey:kThemesAgeTheme];
    [mutableDict setValue:[self.automobileTheme dictionaryRepresentation] forKey:kThemesAutomobileTheme];
    [mutableDict setValue:[self.genderTheme dictionaryRepresentation] forKey:kGenderTheme];
    [mutableDict setValue:[self.attitudesAndMotivationTheme dictionaryRepresentation] forKey:kAttitudesAndMotivationTheme];
    [mutableDict setValue:[self.channelPreferencesTheme dictionaryRepresentation] forKey:kChannelPreferencesTheme];
    [mutableDict setValue:[self.commuterPatternsTheme dictionaryRepresentation] forKey:kCommuterPatternsTheme];
    [mutableDict setValue:[self.educationalAttainmentTheme dictionaryRepresentation] forKey:kEducationalAttainmentTheme];
    [mutableDict setValue:[self.ethnicityTheme dictionaryRepresentation] forKey:kEthnicityTheme];
    [mutableDict setValue:[self.financialProductsTheme dictionaryRepresentation] forKey:kFinancialProductsTheme];
    [mutableDict setValue:[self.householdSizeTheme dictionaryRepresentation] forKey:kHouseholdSizeTheme];
    [mutableDict setValue:[self.incomeTheme dictionaryRepresentation] forKey:kIncomeTheme];
    [mutableDict setValue:[self.maritalStatusTheme dictionaryRepresentation] forKey:kMaritalStatusTheme];
    [mutableDict setValue:[self.purchasingBehaviorTheme dictionaryRepresentation] forKey:kPurchasingBehaviorTheme];
    [mutableDict setValue:[self.raceTheme dictionaryRepresentation] forKey:kRaceTheme];

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

    self.ageTheme = [aDecoder decodeObjectForKey:kThemesAgeTheme];
    self.automobileTheme = [aDecoder decodeObjectForKey:kThemesAutomobileTheme];
    self.genderTheme= [aDecoder decodeObjectForKey:kGenderTheme];
    self.attitudesAndMotivationTheme= [aDecoder decodeObjectForKey:kAttitudesAndMotivationTheme];
    self.channelPreferencesTheme= [aDecoder decodeObjectForKey:kChannelPreferencesTheme];
    self.commuterPatternsTheme= [aDecoder decodeObjectForKey:kCommuterPatternsTheme];
    self.educationalAttainmentTheme= [aDecoder decodeObjectForKey:kEducationalAttainmentTheme];
    self.ethnicityTheme= [aDecoder decodeObjectForKey:kEthnicityTheme];
    self.financialProductsTheme= [aDecoder decodeObjectForKey:kFinancialProductsTheme];
    self.householdSizeTheme= [aDecoder decodeObjectForKey:kHouseholdSizeTheme];
    self.incomeTheme= [aDecoder decodeObjectForKey:kIncomeTheme];
    self.maritalStatusTheme= [aDecoder decodeObjectForKey:kMaritalStatusTheme];
    self.purchasingBehaviorTheme= [aDecoder decodeObjectForKey:kPurchasingBehaviorTheme];
    self.raceTheme= [aDecoder decodeObjectForKey:kRaceTheme];

    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_ageTheme forKey:kThemesAgeTheme];
    [aCoder encodeObject:_automobileTheme forKey:kThemesAutomobileTheme];
    [aCoder encodeObject: _genderTheme forKey:kGenderTheme];
    [aCoder encodeObject: _attitudesAndMotivationTheme forKey:kAttitudesAndMotivationTheme];
    [aCoder encodeObject: _channelPreferencesTheme forKey:kChannelPreferencesTheme];
    [aCoder encodeObject: _commuterPatternsTheme forKey:kCommuterPatternsTheme];
    [aCoder encodeObject: _educationalAttainmentTheme forKey:kEducationalAttainmentTheme];
    [aCoder encodeObject: _ethnicityTheme forKey:kEthnicityTheme];
    [aCoder encodeObject: _financialProductsTheme forKey:kFinancialProductsTheme];
    [aCoder encodeObject: _householdSizeTheme forKey:kHouseholdSizeTheme];
    [aCoder encodeObject: _incomeTheme forKey:kIncomeTheme];
    [aCoder encodeObject: _maritalStatusTheme forKey:kMaritalStatusTheme];
    [aCoder encodeObject: _purchasingBehaviorTheme forKey:kPurchasingBehaviorTheme];
    [aCoder encodeObject: _raceTheme forKey:kRaceTheme];

}

- (id)copyWithZone:(NSZone *)zone
{
    Themes *copy = [[Themes alloc] init];
    
    if (copy) {

       copy.ageTheme = [self.ageTheme copyWithZone:zone];
       copy.automobileTheme = [self.automobileTheme copyWithZone:zone];
       copy.genderTheme= [self.genderTheme copyWithZone:zone];
       copy.attitudesAndMotivationTheme= [self.attitudesAndMotivationTheme copyWithZone:zone];
       copy.channelPreferencesTheme= [self.channelPreferencesTheme copyWithZone:zone];
       copy.commuterPatternsTheme= [self.commuterPatternsTheme copyWithZone:zone];
       copy.educationalAttainmentTheme= [self.educationalAttainmentTheme copyWithZone:zone];
       copy.ethnicityTheme= [self.ethnicityTheme copyWithZone:zone];
       copy.financialProductsTheme= [self.financialProductsTheme copyWithZone:zone];
       copy.householdSizeTheme= [self.householdSizeTheme copyWithZone:zone];
       copy.incomeTheme= [self.incomeTheme copyWithZone:zone];
       copy.maritalStatusTheme= [self.maritalStatusTheme copyWithZone:zone];
       copy.purchasingBehaviorTheme= [self.purchasingBehaviorTheme copyWithZone:zone];
       copy.raceTheme= [self.raceTheme copyWithZone:zone];
    }
    
    return copy;
}


@end
