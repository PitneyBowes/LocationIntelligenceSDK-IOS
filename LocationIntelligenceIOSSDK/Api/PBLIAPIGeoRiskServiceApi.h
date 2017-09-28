#import <Foundation/Foundation.h>
#import "PBCrimeRiskResponse.h"
#import "PBWaterBodyResponse.h"
#import "PBEarthquakeHistory.h"
#import "PBEarthquakeRiskResponse.h"
#import "PBFireHistory.h"
#import "PBFireRiskResponse.h"
#import "PBFireRiskResponseList.h"
#import "PBFireRiskByAddressRequest.h"
#import "PBFireRiskByLocationRequest.h"
#import "PBFireStations.h"
#import "PBFloodRiskResponse.h"
#import "PBFloodRiskResponseList.h"
#import "PBFloodRiskByAddressRequest.h"
#import "PBFloodRiskByLocationRequest.h"
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


@interface PBLIAPIGeoRiskServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoRiskServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoRiskServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Gets CrimeRiskResponse
/// Returns the crime data or crime indexes for a given address input.
///
/// @param address Free-form address text.
/// @param type Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with &#39;all&#39; as default.) (optional)
/// @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBCrimeRiskResponse*
-(NSNumber*) getCrimeRiskByAddressWithAddress: (NSString*) address
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler;


/// Gets CrimeRiskResponse
/// Returns the crime data or crime indexes for a given location.
///
/// @param longitude The longitude of the location
/// @param latitude The latitude of the location
/// @param type Refers to crime type. Valid values are following 11 crime types with &#39;all&#39; as default (more than one can also be given as comma separated types) (optional)
/// @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBCrimeRiskResponse*
-(NSNumber*) getCrimeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler;


/// Gets WaterBodyResponse
/// Gets WaterBodyResponse
///
/// @param address The address of the location
/// @param maxCandidates 1 (default value), Maximum value is 3 (optional)
/// @param waterBodyType all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
/// @param searchDistance 5000 miles (default value), minimum should be 0 (optional)
/// @param searchDistanceUnit miles (default value),feet, kilometers, meters (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBWaterBodyResponse*
-(NSNumber*) getDistanceToCoastByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
    completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler;


/// Gets WaterBodyResponse
/// Gets WaterBodyResponse
///
/// @param longitude The longitude of the location
/// @param latitude The latitude of the location
/// @param maxCandidates 1 (default value), Maximum value is 3 (optional)
/// @param waterBodyType all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
/// @param searchDistance This specifies the search distance (optional)
/// @param searchDistanceUnit miles (default value),feet, kilometers, meters (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBWaterBodyResponse*
-(NSNumber*) getDistanceToCoastByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
    completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler;


/// Gets EarthquakeHistory
/// Gets EarthquakeHistory
///
/// @param postCode 5 digit Postal code to search
/// @param startDate Start time in milliseconds(UTC) (optional)
/// @param endDate End time in milliseconds(UTC) (optional)
/// @param minMagnitude Minimum richter scale magnitude (optional)
/// @param maxMagnitude Maximum Richter scale magnitude (optional)
/// @param maxCandidates Maximum response events (optional) (default to 1)
/// 
///  code:200 message:"successful operation"
///
/// @return PBEarthquakeHistory*
-(NSNumber*) getEarthquakeHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    minMagnitude: (NSString*) minMagnitude
    maxMagnitude: (NSString*) maxMagnitude
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBEarthquakeHistory* output, NSError* error)) handler;


/// Gets EarthquakeRiskResponse
/// Returns the count of earthquake events for various richter measurements and values for an input address.
///
/// @param address Free-form address text
/// @param richterValue Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
/// @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBEarthquakeRiskResponse*
-(NSNumber*) getEarthquakeRiskByAddressWithAddress: (NSString*) address
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler;


/// Gets EarthquakeRiskResponse
/// Gets EarthquakeRiskResponse
///
/// @param longitude The longitude of the location
/// @param latitude The latitude of the location
/// @param richterValue Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
/// @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBEarthquakeRiskResponse*
-(NSNumber*) getEarthquakeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler;


/// Gets FireHistory
/// Gets FireHistory
///
/// @param postCode 5 digit Postal code to search
/// @param startDate Start time in milliseconds(UTC) (optional)
/// @param endDate End time in milliseconds(UTC) (optional)
/// @param maxCandidates Maximum response events (optional) (default to 1)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireHistory*
-(NSNumber*) getFireHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBFireHistory* output, NSError* error)) handler;


/// Gets FireRiskResponse
/// Returns the fire data based on address input.
///
/// @param address Free-form address text
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireRiskResponse*
-(NSNumber*) getFireRiskByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler;


/// Batch method for getting fire risk by address
/// Batch method for getting fire risk by address
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireRiskResponseList*
-(NSNumber*) getFireRiskByAddressBatchWithBody: (PBFireRiskByAddressRequest*) body
    completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler;


/// Gets FireRiskResponse
/// Returns the fire data based on location input.
///
/// @param longitude Longitude of Location
/// @param latitude Latitude of Location
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireRiskResponse*
-(NSNumber*) getFireRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler;


/// Batch method for getting fire risk by location
/// Batch method for getting fire risk by location
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireRiskResponseList*
-(NSNumber*) getFireRiskByLocationBatchWithBody: (PBFireRiskByLocationRequest*) body
    completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler;


/// Gets FireStationResponse
/// Returns the nearest Firestations from an input address.
///
/// @param address The address to be searched.
/// @param maxCandidates Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
/// @param travelTime Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
/// @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
/// @param travelDistance Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
/// @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
/// @param sortBy Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireStations*
-(NSNumber*) getFireStationByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler;


/// Gets FireStationResponse
/// Returns the nearest Firestations from an input location.
///
/// @param longitude Longitude of Location
/// @param latitude Latitude of Location
/// @param maxCandidates Specifies the maximum number of fire stations that this service retrieves. The default value is 3. The retrieved fire stations are distance ordered from the specified location. Maximum of 5 fire stations can be retrieved. (optional)
/// @param travelTime Maximum travel time from input location to fire station. Maximum allowed is 2 hours (optional)
/// @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
/// @param travelDistance Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
/// @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
/// @param sortBy Sorting of fire stations in result by travel time/distance (nearest first from input location). (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFireStations*
-(NSNumber*) getFireStationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler;


/// Gets FloodRiskResponse
/// Returns the Flood Risk data for flood zones based on an address.
///
/// @param address Free-text Address
/// @param includeZoneDesc Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. (optional)
/// @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFloodRiskResponse*
-(NSNumber*) getFloodRiskByAddressWithAddress: (NSString*) address
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler;


/// Batch method for getting flood risk by address
/// Batch method for getting flood risk by address
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFloodRiskResponseList*
-(NSNumber*) getFloodRiskByAddressBatchWithBody: (PBFloodRiskByAddressRequest*) body
    completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler;


/// Gets FloodRiskResponse
/// Returns the Flood Risk data for Flood Zones and Base Flood Elevation, based on location.
///
/// @param longitude Longitude of Location
/// @param latitude Latitude of Location
/// @param includeZoneDesc Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. Default: &#39;Y&#39; (optional)
/// @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFloodRiskResponse*
-(NSNumber*) getFloodRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler;


/// Batch method for getting flood risk by location
/// Batch method for getting flood risk by location
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBFloodRiskResponseList*
-(NSNumber*) getFloodRiskByLocationBatchWithBody: (PBFloodRiskByLocationRequest*) body
    completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler;



@end
