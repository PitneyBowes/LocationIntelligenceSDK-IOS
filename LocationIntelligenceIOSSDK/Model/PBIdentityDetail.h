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

#import "PBAge.h"
#import "PBEducation.h"
#import "PBEmail.h"
#import "PBEmployment.h"
#import "PBGeoIdentityName.h"
#import "PBInterest.h"
#import "PBLocation.h"
#import "PBPhoto.h"
#import "PBProfile.h"
#import "PBTopic.h"
#import "PBUrl.h"


@protocol PBIdentityDetail
@end

@interface PBIdentityDetail : PBObject


@property(nonatomic) NSArray<PBInterest>* interests;

@property(nonatomic) NSDictionary<NSString*, PBProfile>* profiles;

@property(nonatomic) NSArray<PBPhoto>* photos;

@property(nonatomic) NSArray<PBUrl>* urls;

@property(nonatomic) PBGeoIdentityName* name;

@property(nonatomic) PBAge* age;

@property(nonatomic) NSString* gender;

@property(nonatomic) NSArray<PBLocation>* locations;

@property(nonatomic) NSArray<PBEducation>* education;

@property(nonatomic) NSArray<PBEmail>* emails;

@property(nonatomic) NSArray<PBEmployment>* employment;

@property(nonatomic) NSArray<PBTopic>* topics;

@end