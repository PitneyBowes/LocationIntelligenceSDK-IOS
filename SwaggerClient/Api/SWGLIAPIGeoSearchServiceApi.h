#import <Foundation/Foundation.h>
#import "SWGLocations.h"
#import "SWGApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 3.0.0
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


@interface SWGLIAPIGeoSearchServiceApi: NSObject <SWGApi>

extern NSString* kSWGLIAPIGeoSearchServiceApiErrorDomain;
extern NSInteger kSWGLIAPIGeoSearchServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Gets LocationList
/// Gets LocationList
///
/// @param searchText The input to be searched.
/// @param latitude Latitude of the location. Either the latitude or the longitude must be provided. (optional)
/// @param longitude Longitude of the location. Either the latitude or the longitude must be provided. (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param maxCandidates Maximum number of addresses that can be retrieved. (optional)
/// @param country Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return SWGLocations*
-(NSNumber*) geoSearchWithSearchText: (NSString*) searchText
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    maxCandidates: (NSString*) maxCandidates
    country: (NSString*) country
    completionHandler: (void (^)(SWGLocations* output, NSError* error)) handler;



@end
