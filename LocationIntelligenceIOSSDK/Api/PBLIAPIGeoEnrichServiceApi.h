#import <Foundation/Foundation.h>
#import "PBLocations.h"
#import "PBPlaceByLocations.h"
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


@interface PBLIAPIGeoEnrichServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoEnrichServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Address By Location.
/// This service accepts longitude and latitude as input and returns an address for that location.
///
/// @param latitude Latitude of the location.
/// @param longitude Longitude of the location.
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as feet, kilometers, miles or meters. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBLocations*
-(NSNumber*) getAddressWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    completionHandler: (void (^)(PBLocations* output, NSError* error)) handler;


/// Points Of Interest By Location.
/// Identifies and retrieves Points of Interest that exist around a specific location (ordered by distance from the location).
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param brandName Specifies the name of the brand to be searched. Also performs search on partially specified brand names. (optional)
/// @param category Specific Category/Categories for which the POI search is performed. (Categories 10020102,10020103 are for Chinese and Italian Restaurants .https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/EightDigitPOICategoryCodes.xlsx  (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param searchDataset The datasets upon which the POI search can be performed. (optional)
/// @param searchPriority Search order of POI datasets mentioned in searchDataset. (optional)
/// @param travelTime Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
/// @param travelTimeUnit Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
/// @param travelDistance Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
/// @param travelDistanceUnit Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
/// @param mode Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time.Allowed values driving and walking (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBLocations*
-(NSNumber*) getEntityByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    brandName: (NSString*) brandName
    category: (NSString*) category
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    searchDataset: (NSString*) searchDataset
    searchPriority: (NSString*) searchPriority
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    mode: (NSString*) mode
    completionHandler: (void (^)(PBLocations* output, NSError* error)) handler;


/// Place By Location.
/// Identifies and retrieves the nearest neighborhood around a specific location. This GeoEnrich service accepts latitude & longitude as input and returns a place name.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param levelHint Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPlaceByLocations*
-(NSNumber*) getPlaceByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    levelHint: (NSString*) levelHint
    completionHandler: (void (^)(PBPlaceByLocations* output, NSError* error)) handler;



@end
