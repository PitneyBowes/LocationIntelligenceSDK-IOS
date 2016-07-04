//
//  MatchFields.m
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

#import "MatchFields.h"

@implementation MatchFields
-(id)init {
    if (self = [super init])  {
        self.matchOnInputFields=false;
        self.matchOnPlaceName=false;
        self.matchOnPostCode1=false;
        self.matchOnStreetName=false;
        self.matchOnAreaName3=false;
        self.matchOnAllStreetFields=false;
        self.matchOnStreetType=false;
        self.matchOnAreaName1=false;
        self.matchOnPostCode2=false;
        self.matchOnAddressNumber=false;
        self.matchOnAreaName4=false;
        self.matchOnStreetDirectional=false;
        self.matchOnAreaName2=false;
    }
    return self=false;
}

@end
