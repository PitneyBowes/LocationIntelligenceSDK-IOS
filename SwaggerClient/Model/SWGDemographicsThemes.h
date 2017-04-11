#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 3.0.0
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

#import "SWGAgeTheme.h"
#import "SWGAttitudesAndMotivationTheme.h"
#import "SWGAutomobileTheme.h"
#import "SWGChannelPreferencesTheme.h"
#import "SWGCommuterPatternsTheme.h"
#import "SWGEducationalAttainmentTheme.h"
#import "SWGEthnicityTheme.h"
#import "SWGFinancialProductsTheme.h"
#import "SWGGenderTheme.h"
#import "SWGHouseholdSizeTheme.h"
#import "SWGIncomeTheme.h"
#import "SWGMaritalStatusTheme.h"
#import "SWGPurchasingBehaviorTheme.h"
#import "SWGRaceTheme.h"


@protocol SWGDemographicsThemes
@end

@interface SWGDemographicsThemes : SWGObject


@property(nonatomic) SWGAgeTheme* ageTheme;

@property(nonatomic) SWGGenderTheme* genderTheme;

@property(nonatomic) SWGIncomeTheme* incomeTheme;

@property(nonatomic) SWGRaceTheme* raceTheme;

@property(nonatomic) SWGEthnicityTheme* ethnicityTheme;

@property(nonatomic) SWGMaritalStatusTheme* maritalStatusTheme;

@property(nonatomic) SWGAutomobileTheme* automobileTheme;

@property(nonatomic) SWGPurchasingBehaviorTheme* purchasingBehaviorTheme;

@property(nonatomic) SWGEducationalAttainmentTheme* educationalAttainmentTheme;

@property(nonatomic) SWGFinancialProductsTheme* financialProductsTheme;

@property(nonatomic) SWGCommuterPatternsTheme* commuterPatternsTheme;

@property(nonatomic) SWGAttitudesAndMotivationTheme* attitudesAndMotivationTheme;

@property(nonatomic) SWGChannelPreferencesTheme* channelPreferencesTheme;

@property(nonatomic) SWGHouseholdSizeTheme* householdSizeTheme;

@end
