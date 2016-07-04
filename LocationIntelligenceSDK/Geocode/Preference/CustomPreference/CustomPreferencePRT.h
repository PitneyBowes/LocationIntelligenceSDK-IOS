//
//  CustomPreferencePRT.h
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

@interface CustomPreferencePRT : CustomPreference


@property (nonatomic, assign) BOOL USE_ADDRESS_POINT_INTERPOLATION ;
@property (nonatomic, assign) BOOL USE_CENTERLINE_OFFSET ;
@property (nonatomic, strong) NSString *CENTERLINE_OFFSET ;
@property (nonatomic, strong)  NSString *CENTERLINE_OFFSET_UNIT ;


@end
