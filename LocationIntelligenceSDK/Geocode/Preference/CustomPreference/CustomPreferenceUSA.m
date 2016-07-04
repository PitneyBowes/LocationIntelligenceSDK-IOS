//
//  CustomPreferenceUSA.m
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

#import "CustomPreferenceUSA.h"

@implementation CustomPreferenceUSA

- (id)  init
{
    self = [super init];
    if (self) {
        self.country=@"USA";
        
        self.FIND_ADDRCODE=YES;
        
        
        self.FIND_ADDRESS_RANGE=NO;
        
        
        self.FIND_BUILDING_SEARCH=NO;
        
        
        
        
        
        self.FIND_CENTERLN_PROJ_OF_POINT=NO;
        
        
        self.FIND_CORRECT_LASTLINE=NO;
        
        
        self.FIND_DB_ORDER=NO;
        
        
        self.FIND_DPV=NO;
        
        
        
        
        
        self.FIND_EXPND_SRCH_LIM_TO_STATE=NO;
        
        
        self.FIND_FIRST_LETTER_EXPANDED=NO;
        
        
        self.FIND_LACSLINK=NO;
        
        
        self.FIND_MIXED_CASE=NO;
        
        
        self.FIND_PREFER_POBOX=NO;
        
        
        self.FIND_PREFER_STREET=NO;
        
        
        self.FIND_PREFER_ZIP_OVER_CITY=NO;
        
        
        self.FIND_SEARCH_AREA=NO;
        
        
        self.FIND_STREET_CENTROID=NO;
        
        
        self.FIND_SUITELINK=NO;
        
        
        self.FIND_Z5_CODE=NO;
        
        
        self.FIND_Z7_CODE=NO;
        
        
        self.FIND_Z9_CODE=NO;
        
        
        self.FIND_Z_CODE=NO;
    }
    return self;
}

@end
