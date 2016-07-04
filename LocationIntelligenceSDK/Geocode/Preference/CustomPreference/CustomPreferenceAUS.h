//
//  CustomPreferenceAUS.h
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
#import "GeocodeService.h"

@interface CustomPreferenceAUS : CustomPreference

@property (nonatomic, strong) NSString *CENTERLINE_OFFSET;

@property(nonatomic, strong) NSString *CENTERLINE_OFFSET_UNIT;

@property (nonatomic, assign) BOOL  KEY_GNAF_ORIGINAL;

@property (nonatomic, assign) BOOL  KEY_POSTAL_CODE_OVERRIDE;

@property (nonatomic, assign) BOOL  KEY_RETURN_STREET_TYPE_ABBREVS;

@property (nonatomic, assign) BOOL  KEY_STREET_FRONTAGE;

@property (nonatomic, assign)  BOOL USE_ADDRESS_POINT_INTERPOLATION;

@property (nonatomic, assign)  BOOL USE_CENTERLINE_OFFSET;

@end
