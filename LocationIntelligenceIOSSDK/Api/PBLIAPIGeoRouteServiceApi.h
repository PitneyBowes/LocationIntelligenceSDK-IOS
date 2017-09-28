#import <Foundation/Foundation.h>
#import "PBGeoRouteResponse.h"
#import "PBTravelCostMatrixResponse.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 3.7.0
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


@interface PBLIAPIGeoRouteServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoRouteServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoRouteServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Gets Route by Address
/// Routing Directions for Single and Multiple Origin & Destination Inputs. Accepts addresses as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.
///
/// @param startAddress Starting address of the route.
/// @param endAddress Ending address of the route.
/// @param db Mode of commute. (optional) (default to driving)
/// @param country Three digit ISO country code (optional) (default to USA)
/// @param intermediateAddresses List of intermediate addresses of the route. (optional)
/// @param oip Specifies whether waypoints need to be optimized. (optional) (default to false)
/// @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
/// @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional) (default to time)
/// @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional) (default to true)
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
/// @param returnTime Specifies whether time needs to be part of direction information in response. (optional) (default to true)
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
/// @param language Language of travel directions. (optional) (default to en)
/// @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to None)
/// @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to none)
/// @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to false)
/// @param majorRoads Whether to include all roads in route calculation or just major roads. (optional) (default to false)
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
/// @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional) (default to false)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoRouteResponse*
-(NSNumber*) getRouteByAddressWithStartAddress: (NSString*) startAddress
    endAddress: (NSString*) endAddress
    db: (NSString*) db
    country: (NSString*) country
    intermediateAddresses: (NSString*) intermediateAddresses
    oip: (NSString*) oip
    destinationSrs: (NSString*) destinationSrs
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    language: (NSString*) language
    directionsStyle: (NSString*) directionsStyle
    segmentGeometryStyle: (NSString*) segmentGeometryStyle
    primaryNameOnly: (NSString*) primaryNameOnly
    majorRoads: (NSString*) majorRoads
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    returnDirectionGeometry: (NSString*) returnDirectionGeometry
    completionHandler: (void (^)(PBGeoRouteResponse* output, NSError* error)) handler;


/// Gets Route by Location
/// Returns the fastest or shortest route based on a starting and ending location with optional intermediate points as input.
///
/// @param startPoint Start Point in &#39;Lat,Long,coordsys&#39; format
/// @param endPoint End Point in &#39;Lat,Long,coordsys&#39; format
/// @param db Mode of commute. (optional) (default to driving)
/// @param intermediatePoints List of intermediate points of the route. (optional)
/// @param oip Specifies whether waypoints need to be optimized. (optional) (default to false)
/// @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
/// @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional) (default to time)
/// @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional) (default to true)
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
/// @param returnTime Specifies whether time needs to be part of direction information in response. (optional) (default to true)
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
/// @param language Specifies the language of travel directions. (optional) (default to en)
/// @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to None)
/// @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to none)
/// @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to false)
/// @param majorRoads Whether to include all roads in route calculation or just major roads. (optional) (default to false)
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
/// @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional) (default to false)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoRouteResponse*
-(NSNumber*) getRouteByLocationWithStartPoint: (NSString*) startPoint
    endPoint: (NSString*) endPoint
    db: (NSString*) db
    intermediatePoints: (NSString*) intermediatePoints
    oip: (NSString*) oip
    destinationSrs: (NSString*) destinationSrs
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    language: (NSString*) language
    directionsStyle: (NSString*) directionsStyle
    segmentGeometryStyle: (NSString*) segmentGeometryStyle
    primaryNameOnly: (NSString*) primaryNameOnly
    majorRoads: (NSString*) majorRoads
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    returnDirectionGeometry: (NSString*) returnDirectionGeometry
    completionHandler: (void (^)(PBGeoRouteResponse* output, NSError* error)) handler;


/// Gets Cost Matrix by Address
/// Calculates the travel time and distances between an array of start and end addresses.
///
/// @param startAddresses Start locations in text based addresses.
/// @param endAddresses End locations in text based addresses.
/// @param db Mode of commute. (optional) (default to driving)
/// @param country 3 Digit ISO country code. (optional) (default to USA)
/// @param optimizeBy Specifies the type of optimizing to use for the route (time/distance). (optional) (default to time)
/// @param returnDistance Specifies whether to return the travel distance in the response or not. (optional) (default to true)
/// @param destinationSrs Coordinate system used for the returned routes. (optional)
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
/// @param returnTime Specifies whether to return the travel time in the response or not. (optional) (default to true)
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
/// @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional) (default to false)
/// @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to true)
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
/// 
///  code:200 message:"successful operation"
///
/// @return PBTravelCostMatrixResponse*
-(NSNumber*) getTravelCostMatrixByAddressWithStartAddresses: (NSString*) startAddresses
    endAddresses: (NSString*) endAddresses
    db: (NSString*) db
    country: (NSString*) country
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    destinationSrs: (NSString*) destinationSrs
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    majorRoads: (NSString*) majorRoads
    returnOptimalRoutesOnly: (NSString*) returnOptimalRoutesOnly
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler;


/// Gets Cost Matrix by Location
/// GeoRoute's 'Travel Cost Matrix By Location' service calculates the travel time and distances between an array of start and end points based on location coordinates.
///
/// @param startPoints The address to be searched.
/// @param endPoints The address to be searched.
/// @param db Mode of commute. (optional) (default to driving)
/// @param optimizeBy Specifies whether routes should be optimized by time or distance. (optional) (default to time)
/// @param returnDistance Specifies whether distance needs to be returned in response. (optional) (default to true)
/// @param destinationSrs Specifies the desired coordinate system of returned routes. (optional)
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
/// @param returnTime Specifies whether time needs to be returned in response. (optional) (default to true)
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
/// @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional) (default to false)
/// @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to true)
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
/// 
///  code:200 message:"successful operation"
///
/// @return PBTravelCostMatrixResponse*
-(NSNumber*) getTravelCostMatrixByLocationWithStartPoints: (NSString*) startPoints
    endPoints: (NSString*) endPoints
    db: (NSString*) db
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    destinationSrs: (NSString*) destinationSrs
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    majorRoads: (NSString*) majorRoads
    returnOptimalRoutesOnly: (NSString*) returnOptimalRoutesOnly
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler;



@end
