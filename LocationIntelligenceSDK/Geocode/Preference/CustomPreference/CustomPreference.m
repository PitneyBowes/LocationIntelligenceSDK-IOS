//
//  CustomPreference.m
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

#import "CustomPreference.h"


@implementation CustomPreference

- (id)  initWithCountry: (NSString *)country
{
    self = [super init];
    if (self) {
        self.country=country;
        
        self.returnAllCandidateInfo=NO;
        self.fallbackToGeographic  =NO;
        self.fallbackToPostal  =NO;
        self.matchOnAddressNumber  =NO;
        self.matchOnAllStreetFields  =NO;
        self.matchOnAreaName1  =NO;
        self.matchOnAreaName2  =NO;
        self.matchOnAreaName3  =NO;
        self. matchOnAreaName4  =NO;
        self.matchOnInputFields  =NO;
        self.matchOnPlaceName  =NO;
        self.matchOnPostCode1  =NO;
        self.matchOnPostCode2  =NO;
        self.matchOnStreetDirectional  =NO;
        self.matchOnStreetName  =NO;
        self.matchOnStreetType  =NO;
        self.returnAllCustomFields  =NO;
        self.returnMatchDescriptor  =NO;
        self.returnStreetAddressFields  =NO;
        self.returnUnitInformation  =NO;
        self.FALLBACK_TO_WORLD=NO;
        
    }
    return self;
}
@end
