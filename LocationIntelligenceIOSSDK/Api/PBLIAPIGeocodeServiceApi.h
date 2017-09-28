#import <Foundation/Foundation.h>
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBGeocodeCapabilitiesResponse.h"
#import "PBConfiguredDictionaryResponse.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyResponseList.h"
#import "PBPBKeyAddressRequest.h"
#import "PBReverseGeocodeRequest.h"
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


@interface PBLIAPIGeocodeServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeocodeServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeocodeServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Gets Geocode
/// Gets Geocode
///
/// @param datapackBundle value of datapackBundle
/// @param country Country name or ISO code. (optional) (default to USA)
/// @param placeName Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
/// @param mainAddress Single line input, treated as collection of field elements. (optional) (default to 4750 Walnut St., Boulder CO, 80301)
/// @param lastLine The last line of the address. (optional)
/// @param areaName1 Specifies the largest geographic area, typically a state or province. (optional)
/// @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
/// @param areaName3 Specifies a city or town name. (optional)
/// @param areaName4 Specifies a city subdivision or locality. (optional)
/// @param postalCode The postal code in the appropriate format for the country. (optional)
/// @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to Standard)
/// @param fallbackGeo Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to true)
/// @param fallbackPostal Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to true)
/// @param maxCands The maximum number of candidates to return. Must be an integer value. (optional) (default to 1)
/// @param streetOffset Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to 7)
/// @param streetOffsetUnits Specifies the unit of measurement for the street offset. (optional) (default to METERS)
/// @param cornerOffset Specifies the distance to offset the street end points in street-level matching. (optional) (default to 7)
/// @param cornerOffsetUnits Specifies the unit of measurement for the corner offset. (optional) (default to METERS)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponse*
-(NSNumber*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    placeName: (NSString*) placeName
    mainAddress: (NSString*) mainAddress
    lastLine: (NSString*) lastLine
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postalCode: (NSNumber*) postalCode
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSNumber*) fallbackGeo
    fallbackPostal: (NSNumber*) fallbackPostal
    maxCands: (NSNumber*) maxCands
    streetOffset: (NSNumber*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSNumber*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;


/// Gets Geocode
/// Gets Geocode
///
/// @param datapackBundle value of datapackBundle
/// @param body Geocode Request Object (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponseList*
-(NSNumber*) geocodeBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBGeocodeRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Gets Capabilities
/// Gets Capabilities
///
/// @param datapackBundle value of datapackBundle
/// @param operation Geocode or ReverseGeocode Operation. (optional) (default to geocode)
/// @param country Country name or ISO code. (optional) (default to USA)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeCapabilitiesResponse*
-(NSNumber*) getCapabilitiesWithDatapackBundle: (NSString*) datapackBundle
    operation: (NSString*) operation
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeCapabilitiesResponse* output, NSError* error)) handler;


/// Gets installed Dictionaries
/// Gets installed Dictionaries
///
/// @param datapackBundle value of datapackBundle
/// @param country Three Letter ISO Country code (optional) (default to USA)
/// 
///  code:200 message:"successful operation"
///
/// @return PBConfiguredDictionaryResponse*
-(NSNumber*) getDictionariesWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    completionHandler: (void (^)(PBConfiguredDictionaryResponse* output, NSError* error)) handler;


/// Gets PBKey
/// Gets PBKey for an input free form address text
///
/// @param address free form address text
/// 
///  code:200 message:"successful operation"
///
/// @return PBPBKeyResponse*
-(NSNumber*) getPBKeyWithAddress: (NSString*) address
    completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler;


/// Gets PBKeys
/// Gets PBKeys for multiple input addresses
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPBKeyResponseList*
-(NSNumber*) getPBKeysWithBody: (PBPBKeyAddressRequest*) body
    completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler;


/// reverse Geocode
/// reverse Geocode
///
/// @param datapackBundle value of datapackBundle
/// @param body Reverse Geocode Request object (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponseList*
-(NSNumber*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBReverseGeocodeRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// reverse Geocode
/// reverse Geocode
///
/// @param datapackBundle value of datapackBundle
/// @param x Longitude of the location. (default to -105.240976)
/// @param y Latitude of the location. (default to 40.018301)
/// @param country Country name or ISO code. (optional)
/// @param coordSysName Coordinate system to convert geometry in format codespace:code. (optional) (default to EPSG:4326)
/// @param distance Radius in which search is performed. (optional) (default to 150)
/// @param distanceUnits Unit of measurement for the search distance. (optional) (default to METERS)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponse*
-(NSNumber*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSNumber*) x
    y: (NSNumber*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSNumber*) distance
    distanceUnits: (NSString*) distanceUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;



@end
