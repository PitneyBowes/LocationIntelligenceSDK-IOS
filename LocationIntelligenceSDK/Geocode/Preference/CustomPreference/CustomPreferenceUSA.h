//
//  CustomPreferenceUSA.h
//  LocationIntelligenceSDK
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
#import "CustomPreference.h"

@interface CustomPreferenceUSA : CustomPreference


@property (nonatomic, assign) BOOL FIND_ADDRCODE;


@property (nonatomic, assign) BOOL FIND_ADDRESS_RANGE;


@property (nonatomic, assign) BOOL FIND_BUILDING_SEARCH;


@property (nonatomic, strong) NSString  *FIND_CENTERLINE_OFFSET;


@property (nonatomic, assign) BOOL FIND_CENTERLN_PROJ_OF_POINT;


@property (nonatomic, assign) BOOL FIND_CORRECT_LASTLINE;


@property (nonatomic, assign) BOOL FIND_DB_ORDER;


@property (nonatomic, assign) BOOL FIND_DPV;


@property (nonatomic, strong) NSString  *FIND_EXPANDED_SEARCH_RADIUS;


@property (nonatomic, assign) BOOL FIND_EXPND_SRCH_LIM_TO_STATE;


@property (nonatomic, assign) BOOL FIND_FIRST_LETTER_EXPANDED;


@property (nonatomic, assign) BOOL FIND_LACSLINK;


@property (nonatomic, assign) BOOL FIND_MIXED_CASE;


@property (nonatomic, assign) BOOL FIND_PREFER_POBOX;


@property (nonatomic, assign) BOOL FIND_PREFER_STREET;


@property (nonatomic, assign) BOOL FIND_PREFER_ZIP_OVER_CITY;


@property (nonatomic, assign) BOOL FIND_SEARCH_AREA;


@property (nonatomic, assign) BOOL FIND_STREET_CENTROID;


@property (nonatomic, assign) BOOL FIND_SUITELINK;


@property (nonatomic, assign) BOOL FIND_Z5_CODE;


@property (nonatomic, assign) BOOL FIND_Z7_CODE;


@property (nonatomic, assign) BOOL FIND_Z9_CODE;


@property (nonatomic, assign) BOOL FIND_Z_CODE;

@end
