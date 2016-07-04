//
//  GeocodePreference.h
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
#import "MatchFields.h"


typedef enum{METERS,FEET} DistanceUnits;
typedef enum{Exact,Standard,Relaxed,Custom,Interactive,CASS} MatchMode;

@interface GeocodePreference : NSObject


@property (nonatomic, assign) BOOL returnAllCandidateInfo;

@property (nonatomic, assign) BOOL fallbackToGeographic;

@property (nonatomic, assign) BOOL fallbackToPostal;

@property (nonatomic, assign) int maxReturnedCandidates;

@property (nonatomic, assign) double distance;

@property (nonatomic, assign) double streetOffset;

@property (nonatomic, assign) double cornerOffset;

@property (nonatomic, assign) MatchMode matchMode;

@property (nonatomic, strong) NSString *clientLocale;

@property (nonatomic, strong) NSString *clientCoordSysName;

@property(nonatomic, assign) DistanceUnits distanceUnits;

@property(nonatomic, assign) DistanceUnits streetOffsetUnits;

@property(nonatomic, assign) DistanceUnits cornerOffsetUnits;

@property(nonatomic, strong) MatchFields* mustMatchFields;

@property(nonatomic, strong) NSDictionary *preferredDictionaryOrders;


@end
