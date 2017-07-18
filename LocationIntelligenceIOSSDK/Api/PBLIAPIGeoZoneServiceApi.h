#import <Foundation/Foundation.h>
#import "PBTravelBoundaries.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 3.5.0
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


@interface PBLIAPIGeoZoneServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoZoneServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoZoneServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Gets travel Boundary by Distance
/// Returns the travel boundary based on travel distance.
///
/// @param costs Travel distance(s)
/// @param point Starting point from where the travel boundary is calculated. Point in &#39;Lat,Long,coordsys&#39; format (optional)
/// @param address Starting address from where the travel boundary is calculated. (optional)
/// @param costUnit Travel distance such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
/// @param db Mode of commute. (optional) (default to driving)
/// @param country Three digit ISO country code. (optional) (default to USA)
/// @param maxOffroadDistance Maximum distance to allow travel off the road network. (optional)
/// @param maxOffroadDistanceUnit MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
/// @param destinationSrs Desired coordinate system of the travel boundary. (optional)
/// @param majorRoads Whether to include all roads in the calculation or just major roads. (optional) (default to false)
/// @param returnHoles Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired distance. (optional) (default to false)
/// @param returnIslands Whether to return islands, which are small areas outside the main boundary that can be reached within the desired distance. (optional) (default to false)
/// @param simplificationFactor Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. (optional) (default to 0.5)
/// @param bandingStyle Style of banding to be used in the result. (optional) (default to Donut)
/// @param historicTrafficTimeBucket Whether routing calculation uses the historic traffic speeds. (optional) (default to None)
/// 
///  code:200 message:"successful operation"
///
/// @return PBTravelBoundaries*
-(NSNumber*) getTravelBoundaryByDistanceWithCosts: (NSString*) costs
    point: (NSString*) point
    address: (NSString*) address
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;


/// Gets travel Boundary by Time
/// Travel boundary based on travel time.
///
/// @param costs Travel time used to calculate the travel boundary.
/// @param point Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format (optional)
/// @param address Starting address from where the travel boundary is calculated. (optional)
/// @param costUnit Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
/// @param db Mode of commute. (optional) (default to driving)
/// @param country 3 character ISO code or country name. (optional) (default to USA)
/// @param maxOffroadDistance Maximum distance to allow travel off the road network. (optional)
/// @param maxOffroadDistanceUnit MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
/// @param destinationSrs Desired coordinate system of the travel boundary. (optional)
/// @param majorRoads Whether to include all roads in the calculation or just major roads. (optional) (default to false)
/// @param returnHoles Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time. (optional) (default to false)
/// @param returnIslands Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time. (optional) (default to false)
/// @param simplificationFactor Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. (optional) (default to 0.5)
/// @param bandingStyle Style of banding to be used in the result. (optional) (default to Donut)
/// @param historicTrafficTimeBucket Whether routing calculation uses the historic traffic speeds. (optional) (default to None)
/// 
///  code:200 message:"successful operation"
///
/// @return PBTravelBoundaries*
-(NSNumber*) getTravelBoundaryByTimeWithCosts: (NSString*) costs
    point: (NSString*) point
    address: (NSString*) address
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;



@end
