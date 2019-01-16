#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 6.0.0
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

#import "PBSpecialPurposeDistrictTaxRate.h"


@protocol PBSalesTax
@end

@interface PBSalesTax : PBObject


@property(nonatomic) NSNumber* totalTax;

@property(nonatomic) NSNumber* totalTaxRate;

@property(nonatomic) NSNumber* totalTaxAmount;

@property(nonatomic) NSNumber* stateTax;

@property(nonatomic) NSNumber* stateTaxRate;

@property(nonatomic) NSNumber* stateTaxAmount;

@property(nonatomic) NSNumber* countyTax;

@property(nonatomic) NSNumber* countyTaxRate;

@property(nonatomic) NSNumber* countyTaxAmount;

@property(nonatomic) NSNumber* municipalTax;

@property(nonatomic) NSNumber* municipalTaxRate;

@property(nonatomic) NSNumber* municipalTaxAmount;

@property(nonatomic) NSArray<PBSpecialPurposeDistrictTaxRate>* spdsTax;

@property(nonatomic) NSNumber* specialTaxRulesApplied;

@property(nonatomic) NSString* specialTaxRulesDescriptor;

@end
