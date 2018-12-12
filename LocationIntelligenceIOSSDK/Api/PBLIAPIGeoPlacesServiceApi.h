#import <Foundation/Foundation.h>
#import "PBGeoPlaceMetadataResponse.h"
#import "PBGeoplacesResponse.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 6.0.0
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


@interface PBLIAPIGeoPlacesServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoPlacesServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoPlacesServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
/// Accepts first partial digits or full category codes to filter the response
///
/// @param categoryCode Specify starting digits or full category code to filter the response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoPlaceMetadataResponse*
-(NSNumber*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    completionHandler: (void (^)(PBGeoPlaceMetadataResponse* output, NSError* error)) handler;


/// Point of Interests By Address.
/// Accepts address as an input to retrieve nearby point of interests.
///
/// @param address Address
/// @param country Country (optional)
/// @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
/// @param type Matched against the content which defines the type of the poi.  (optional)
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  (optional)
/// @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param travelTime Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
/// @param travelTimeUnit Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
/// @param travelDistance Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
/// @param travelDistanceUnit Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
/// @param travelMode Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
/// @param sortBy Specifies the order in which POIs are retrieved. (optional) (default to distance)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoplacesResponse*
-(NSNumber*) getPOIsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBGeoplacesResponse* output, NSError* error)) handler;


/// Point of Interests By Location.
/// Accepts longitude and latitude as an input to retrieve nearby point of interests.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
/// @param type Matched against the content which defines the type of the poi.  (optional)
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  (optional)
/// @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param travelTime Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
/// @param travelTimeUnit Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
/// @param travelDistance Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
/// @param travelDistanceUnit Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
/// @param travelMode Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
/// @param sortBy Specifies the order in which POIs are retrieved. (optional) (default to distance)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoplacesResponse*
-(NSNumber*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBGeoplacesResponse* output, NSError* error)) handler;


/// Returns SIC Codes with their Industry Titles and Category Codes mapping
/// Accepts first few partial digits or full SIC codes to filter the response
///
/// @param sicCode Specify starting digits or full sic code to filter the response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoPlaceMetadataResponse*
-(NSNumber*) getSICMetadataWithSicCode: (NSString*) sicCode
    completionHandler: (void (^)(PBGeoPlaceMetadataResponse* output, NSError* error)) handler;



@end