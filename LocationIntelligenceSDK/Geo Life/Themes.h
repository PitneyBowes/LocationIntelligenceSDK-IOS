//
//  Themes.h
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import <Foundation/Foundation.h>

@class AgeTheme;
@class AutomobileTheme;
@class GenderTheme;
@class AttitudesAndMotivationTheme;
@class ChannelPreferencesTheme;
@class CommuterPatternsTheme;
@class EducationalAttainmentTheme;
@class EthnicityTheme;
@class FinancialProductsTheme;
@class HouseholdSizeTheme;
@class IncomeTheme;
@class MaritalStatusTheme;
@class PurchasingBehaviorTheme;
@class RaceTheme;



@interface Themes : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) AgeTheme *ageTheme;
@property (nonatomic,strong) AutomobileTheme *automobileTheme;
@property (nonatomic, strong)  GenderTheme *genderTheme;
@property (nonatomic, strong)  AttitudesAndMotivationTheme *attitudesAndMotivationTheme;
@property (nonatomic, strong)  ChannelPreferencesTheme *channelPreferencesTheme;
@property (nonatomic, strong)  CommuterPatternsTheme *commuterPatternsTheme;
@property (nonatomic, strong)  EducationalAttainmentTheme *educationalAttainmentTheme;
@property (nonatomic, strong)  EthnicityTheme *ethnicityTheme;
@property (nonatomic, strong)  FinancialProductsTheme *financialProductsTheme;
@property (nonatomic, strong)  HouseholdSizeTheme *householdSizeTheme;
@property (nonatomic, strong)  IncomeTheme *incomeTheme;
@property (nonatomic, strong)  MaritalStatusTheme *maritalStatusTheme;
@property (nonatomic, strong)  PurchasingBehaviorTheme *purchasingBehaviorTheme;
@property (nonatomic, strong)  RaceTheme *raceTheme;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
