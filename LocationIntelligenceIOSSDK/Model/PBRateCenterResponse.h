#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 7.5.0
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

#import "PBAreaCodeInfo.h"
#import "PBCounty.h"
#import "PBGeometry.h"
#import "PBMatch.h"
#import "PBMatchedAddress.h"


@protocol PBRateCenterResponse
@end

@interface PBRateCenterResponse : PBObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* alternateName;

@property(nonatomic) NSString* areaName1;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) NSArray<PBAreaCodeInfo>* areaCodeInfoList;

@property(nonatomic) PBMatchedAddress* matchedAddress;

@property(nonatomic) PBMatch* match;

@property(nonatomic) PBCounty* county;

@property(nonatomic) NSNumber* count;

@property(nonatomic) NSString* productCode;

@end
