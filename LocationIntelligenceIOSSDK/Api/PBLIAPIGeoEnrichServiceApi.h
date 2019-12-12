#import <Foundation/Foundation.h>
#import "PBGeoEnrichMetadataResponse.h"
#import "PBPOIPlaces.h"
#import "PBGeoEnrichResponse.h"
#import "PBPois.h"
#import "PBPOIByGeometryRequest.h"
#import "PBPoiCountRequest.h"
#import "PBPoiCount.h"
#import "PBPlaceByLocations.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 8.0.0
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

/// Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
/// Accepts first partial digits or full category codes to filter the response
///
/// @param categoryCode Specify starting digits or full category code to filter the response (optional)
/// @param level Allowed values are 1,2,3. If level&#x3D;1, then only 4 digits category codes will be returned, level&#x3D;2 means only 6 digits category codes   will be returned, level&#x3D;3 means only 11 digits category codes will be returned. Multiple comma-separated values will also be accepted. So level&#x3D;&#39;1,2&#39; means return 4 digits and 6 digits category codes. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoEnrichMetadataResponse*
-(NSNumber*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    level: (NSString*) level
    completionHandler: (void (^)(PBGeoEnrichMetadataResponse* output, NSError* error)) handler;


/// Point of Interest By Id.
/// 
///
/// @param _id POI unique Identifier. Accepts only numbers.
/// 
///  code:200 message:"successful operation"
///
/// @return PBPOIPlaces*
-(NSNumber*) getPOIByIdWithId: (NSString*) _id
    completionHandler: (void (^)(PBPOIPlaces* output, NSError* error)) handler;


/// Points of Interest By Address.
/// Accepts address as an input to retrieve nearby points of interest.
///
/// @param address Address
/// @param country Country (optional)
/// @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
/// @param type Matched against the content which defines the type of the poi.  (optional)
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
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
/// @param fuzzyOnName Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
/// @param page Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoEnrichResponse*
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
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;


/// Points of Interest By Area.
/// Accepts postcode or city as an input to retrieve nearby points of interest.
///
/// @param country Country
/// @param areaName3 Either areaName3 or postcode is required (optional)
/// @param postcode1 Either areaName3 or postcode is required (optional)
/// @param postcode2 postcode extension (optional)
/// @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
/// @param type Matched against the content which defines the type of the poi.  (optional)
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
/// @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param fuzzyOnName Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
/// @param page Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoEnrichResponse*
-(NSNumber*) getPOIsByAreaWithCountry: (NSString*) country
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;


/// Point of Interests By Geometry.
/// Accepts geometry as an input to retrieve nearby point of interests.
///
/// @param accept  (optional)
/// @param contentType  (optional)
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPois*
-(NSNumber*) getPOIsByGeometryWithAccept: (NSString*) accept
    contentType: (NSString*) contentType
    body: (PBPOIByGeometryRequest*) body
    completionHandler: (void (^)(PBPois* output, NSError* error)) handler;


/// Points of Interest By Location.
/// Accepts longitude and latitude as an input to retrieve nearby points of interest.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param searchText Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
/// @param type Matched against the content which defines the type of the poi.  (optional)
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
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
/// @param fuzzyOnName Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
/// @param page Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
/// @param searchOnNameOnly search name description (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoEnrichResponse*
-(NSNumber*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
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
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    searchOnNameOnly: (NSString*) searchOnNameOnly
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;


/// Point of Interests count By Geometry.
/// Accepts geometry/loc/address as an input to count nearby point of interests.
///
/// @param contentType  (optional)
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPoiCount*
-(NSNumber*) getPOIsCountWithContentType: (NSString*) contentType
    body: (PBPoiCountRequest*) body
    completionHandler: (void (^)(PBPoiCount* output, NSError* error)) handler;


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


/// Returns SIC Codes with their Industry Titles and Category Codes mapping
/// Accepts first few partial digits or full SIC codes to filter the response
///
/// @param sicCode Specify starting digits or full sic code to filter the response (optional)
/// @param level Allowed values are 1,2. If level&#x3D;1, then only 4 digits sic codes will be returned, level&#x3D;2 means only 8 digits sic codes will be returned. Multiple comma-separated values will also be accepted. So level&#x3D;&#39;1,2&#39; means return both 4 digits and 8 digits sic codes. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoEnrichMetadataResponse*
-(NSNumber*) getSICMetadataWithSicCode: (NSString*) sicCode
    level: (NSString*) level
    completionHandler: (void (^)(PBGeoEnrichMetadataResponse* output, NSError* error)) handler;


/// Points of Interest Autocomplete.
/// POIs-Autocomplete will return POIs predictions based on the full or partial words specified in the search.The search can then be narrowed based on Location, IP Address or Country along with other supporting filters.
///
/// @param longitude Longitude of the location. (optional)
/// @param latitude Latitude of the location. (optional)
/// @param searchText Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param travelTime Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
/// @param travelTimeUnit Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
/// @param travelDistance Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
/// @param travelDistanceUnit Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
/// @param travelMode Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
/// @param country Country (optional)
/// @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
/// @param areaName3 Specifies the name of the city or town.  (optional)
/// @param postcode1 Postal Code of the input to be searched (optional)
/// @param postcode2 Postcode2 (optional)
/// @param ipAddress IP address of network connected device in standard IPv4 octet and a valid external address. (optional)
/// @param autoDetectLocation Specifies whether to auto-detect location from IP address. If &#39;True&#39; is set, the location is detected from the specified ip address. If &#39;False&#39; is set. the search will happen according to country or location. (optional)
/// @param type Matched against the content which defines the type of the poi.  (optional)
/// @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
/// @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param sortBy Specifies the order in which POIs are retrieved. (optional) (default to distance)
/// @param searchOnNameOnly specifies search on name (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoEnrichResponse*
-(NSNumber*) poisAutocompleteWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    ipAddress: (NSString*) ipAddress
    autoDetectLocation: (NSString*) autoDetectLocation
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    sortBy: (NSString*) sortBy
    searchOnNameOnly: (NSString*) searchOnNameOnly
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;



@end
