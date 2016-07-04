//
//  GeocodePreference.m
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

#import "GeocodePreference.h"
#import "GeocodeService.h"

@implementation GeocodePreference

-(id)init {
    if (self = [super init])  {
        self.returnAllCandidateInfo = false;
        self.fallbackToGeographic=true;
        self.fallbackToPostal=true;
        self.maxReturnedCandidates=1;
        self.streetOffset=7;
        self.streetOffsetUnits=(DistanceUnits)METERS;
        self.cornerOffset=7;
        self.cornerOffsetUnits=(DistanceUnits)METERS;
        self.matchMode=(MatchMode)Standard;
        self.clientCoordSysName=@"EPSG:4326";
        self.distance=7;
        self.distance=(DistanceUnits)METERS;
    }
    return self;
}


@end
