//
//  GeoEnhanceService.h
//  PBSmartEarthSuite
 //
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "OAuthService.h"
#import "GeoEnhance.h"
#import "Timezone.h"


/**
 *  This service provides business listings or Point of Interests
 *  for an address or location coordinate
 */
@interface GeoEnhanceService : OAuthService



/**
 *
 * Accepts longitude and latitude and returns an Address for that location
 *
 * @param latitude
 * 		Required - Latitude of the location
 * @param longitude
 * 		Required - Longitude of the location
 * @param searchRadius
 * 		Optional - Search Radius, in feet. Default Value is 150 feet, Allowed range is 0- 5280 feet
 * @param searchRadiusUnit
 *          Optional - Unit used for searchRadius. Allowed values are FEET,METERS,MILES,KILOMETERS  (Case insensitive)
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback
 
 */
- (void) getAddress:(NSNumber *)latitude :
                    (NSNumber *)longitude :
                    (NSNumber *)searchRadius :
                    (NSString *)searchRadiusUnit :
                    (void (^)(GeoEnhance *geoEnhance))success failure : (void (^)( ErrorResponse *error))failure;




/**
 *  Get Places
 *
 * @param latitude
 *  		Required - latitude of the location
 * @param longitude
 *  		Required - longitude of the location
 * @param levelHint
 * 			Optional - Level of Information. Below are the numeric codes for geographic hierarchy level:
 * 			LEVEL 1 = Country
 * 			LEVEL 2 = State or equivalent
 * 			LEVEL 3 = District or equivalent
 * 			LEVEL 4 =City or Town
 * 			LEVEL 5 = Locality
 * 			LEVEL 6 = Neighbourhood
 * If not provided, returns the lowest geographic hierarchy level information available
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback

 */
- (void) getPlace: (NSNumber *)latitude :
                    (NSNumber *)longitude :
                    (NSNumber *)levelHint :
                    (void (^)(GeoEnhance *geoPlace))success failure : (void (^)( ErrorResponse *error))failure;




/**
 *  Get POIS
 *
 * @param latitude
 *  		Required - latitude of the location
 * @param longitude
 *  		Required - longitude of the location
 * @param category
 * 			Optional - Category or Sub-Category to refine the POI search results
 * @param maxCandidates
 * 			Optional - Maximum number of POIs that will be returned. Default is 10
 * @param searchRadius
 * 			Optional - Search Radius, in miles. Default Value is 2 miles, Allowed range is 0-50 miles
 * @param searchRadiusUnit
 *          Optional - Unit used for searchRadius. Allowed values are FEET,METERS,MILES,KILOMETERS  (Case insensitive)
 * @param searchDataset
 * 			Optional - Comma-separated input of dataSet names ('PBData' for searching in PB Data).
 * @param searchByPriority
 * 			Optional - Define priority while searching on DataSets. Allowed values are Y/N.
 *
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback
 */
- (void) getPOI: (NSNumber *)latitude :
                    (NSNumber *)longitude :
                    (NSString *)category :(NSNumber *)maxCandidates :
                    (NSNumber *)searchRadius :
                    (NSString *)searchRadiusUnit :
                    (NSString *)searchDataset :
                    (NSString *)searchByPriority :
                    (void (^)(GeoEnhance *geoEnhance))success failure : (void (^)( ErrorResponse *error))failure;




/*
 *  @param timestamp 
    Required- Specifies the desired time as milliseconds since midnight, January Required
     1, 1970 UTC. This API uses the timestamp to determine whether or
     not Daylight Savings should be applied. Negative values are used
     to express time before 1970.
 *  @param latitude  
           Required - latitude of the location
 *  @param longitude 
            Required - longitude of the location
 *  @param success   <#success description#>
 *  @param failure   <#failure description#>
 */
- (void) getTimezone:(NSNumber *) timestamp :
                                (NSNumber *)latitude :
                                (NSNumber *)longitude :
                                (void (^)( Timezone *timezoneResponse))success failure :
                                (void (^)( ErrorResponse *error))failure;


@end
