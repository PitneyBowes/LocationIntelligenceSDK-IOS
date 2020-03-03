#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 8.5.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

#import "PBAgeTheme.h"
#import "PBAttitudesAndMotivationTheme.h"
#import "PBAutomobileTheme.h"
#import "PBChannelPreferencesTheme.h"
#import "PBCommuterPatternsTheme.h"
#import "PBEducationalAttainmentTheme.h"
#import "PBEthnicityTheme.h"
#import "PBFinancialProductsTheme.h"
#import "PBGenderTheme.h"
#import "PBHouseholdSizeTheme.h"
#import "PBIncomeTheme.h"
#import "PBMaritalStatusTheme.h"
#import "PBPurchasingBehaviorTheme.h"
#import "PBRaceTheme.h"


@protocol PBDemographicsThemes
@end

@interface PBDemographicsThemes : PBObject


@property(nonatomic) PBAgeTheme* ageTheme;

@property(nonatomic) PBGenderTheme* genderTheme;

@property(nonatomic) PBIncomeTheme* incomeTheme;

@property(nonatomic) PBRaceTheme* raceTheme;

@property(nonatomic) PBEthnicityTheme* ethnicityTheme;

@property(nonatomic) PBMaritalStatusTheme* maritalStatusTheme;

@property(nonatomic) PBAutomobileTheme* automobileTheme;

@property(nonatomic) PBPurchasingBehaviorTheme* purchasingBehaviorTheme;

@property(nonatomic) PBEducationalAttainmentTheme* educationalAttainmentTheme;

@property(nonatomic) PBFinancialProductsTheme* financialProductsTheme;

@property(nonatomic) PBCommuterPatternsTheme* commuterPatternsTheme;

@property(nonatomic) PBAttitudesAndMotivationTheme* attitudesAndMotivationTheme;

@property(nonatomic) PBChannelPreferencesTheme* channelPreferencesTheme;

@property(nonatomic) PBHouseholdSizeTheme* householdSizeTheme;

@end
