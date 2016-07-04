//
//  CustomPreferenceAUS.m
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

#import "CustomPreferenceAUS.h"

@implementation CustomPreferenceAUS
- (id)  init
{
    self = [super init];
    if (self) {
        self.country=@"AUS";
        self.KEY_GNAF_ORIGINAL=NO;
        
        self.KEY_POSTAL_CODE_OVERRIDE=NO;
        
        self.KEY_RETURN_STREET_TYPE_ABBREVS=NO;
        
        self.KEY_STREET_FRONTAGE=NO;
        
        self.USE_ADDRESS_POINT_INTERPOLATION=NO;
        
        self.USE_CENTERLINE_OFFSET=NO;

    }
    return self;
}
@end
