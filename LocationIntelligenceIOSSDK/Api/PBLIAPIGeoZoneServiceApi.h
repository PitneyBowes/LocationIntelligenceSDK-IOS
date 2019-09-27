#import <Foundation/Foundation.h>
#import "PBBasicBoundaryAddress.h"
#import "PBBasicBoundary.h"
#import "PBPoiBoundary.h"
#import "PBTravelBoundaries.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 7.5.0
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

/// Gets Basic Boundary by Address
/// Gets Basic Boundary by Address
///
/// @param address Address around which Basic Boundary is requested
/// @param distance This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number.
/// @param country Three digit ISO country code (optional) (default to USA)
/// @param distanceUnit Longitude around which Basic Boundary is requested (optional) (default to feet)
/// @param resolution This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
/// @param responseSrs The spatial reference system to express the response in. By default, it would be epsg:4326 (optional) (default to epsg:4326)
/// 
///  code:200 message:"successful operation"
///
/// @return PBBasicBoundaryAddress*
-(NSNumber*) getBasicBoundaryByAddressWithAddress: (NSString*) address
    distance: (NSString*) distance
    country: (NSString*) country
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
    completionHandler: (void (^)(PBBasicBoundaryAddress* output, NSError* error)) handler;


/// Gets Basic Boundary by Location
/// Gets Basic Boundary by Location
///
/// @param latitude Latitude around which Basic Boundary is requested
/// @param longitude Longitude around which Basic Boundary is requested
/// @param distance This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number.
/// @param distanceUnit Longitude around which Basic Boundary is requested (optional) (default to feet)
/// @param resolution This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
/// @param responseSrs The spatial reference system to express the response in. By default, it would be epsg:4326 (optional) (default to epsg:4326)
/// @param srsName The spatial reference system for input. By default, it would be epsg:4326 (optional) (default to epsg:4326)
/// 
///  code:200 message:"successful operation"
///
/// @return PBBasicBoundary*
-(NSNumber*) getBasicBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    distance: (NSString*) distance
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
    srsName: (NSString*) srsName
    completionHandler: (void (^)(PBBasicBoundary* output, NSError* error)) handler;


/// Get Point of Interests Boundary by Address
/// Gets Point of Interests Boundary by Address
///
/// @param address Address around which POI Boundary is requested
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. (optional)
/// @param sicCode Specify starting digits or full sic code to filter the response (optional)
/// @param naicsCode Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPoiBoundary*
-(NSNumber*) getPOIBoundaryByAddressWithAddress: (NSString*) address
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
    completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;


/// Get Point of Interests Boundary by Location
/// Get Point of Interests Boundary by Location
///
/// @param latitude Latitude around which POI Boundary is requested
/// @param longitude Longitude around which POI Boundary is requested
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes (optional)
/// @param sicCode Specify starting digits or full sic code to filter the response (optional)
/// @param naicsCode Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPoiBoundary*
-(NSNumber*) getPOIBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
    completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;


/// Gets Point of Interests Boundary by PBKey
/// Gets Point of Interests Boundary by PBKey
///
/// @param pbKey PBKey for which POI Boundary is requested
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. (optional)
/// @param sicCode Specify starting digits or full sic code to filter the response (optional)
/// @param naicsCode Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPoiBoundary*
-(NSNumber*) getPOIBoundaryByPBKeyWithPbKey: (NSString*) pbKey
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
    completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;


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
/// @param defaultAmbientSpeed The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
/// @param ambientSpeedUnit The unit of measure to use to calculate the ambient speed. (optional) (default to MPH)
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
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
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
/// @param defaultAmbientSpeed The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
/// @param ambientSpeedUnit The unit of measure to use to calculate the ambient speed. (optional) (default to MPH)
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
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
    completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;



@end
