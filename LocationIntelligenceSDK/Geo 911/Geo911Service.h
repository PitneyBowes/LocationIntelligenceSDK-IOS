//
//  Geo911Service.h
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
#import "County.h"
#import "ContactPerson.h"
#import "Address.h"
#import "SiteDetails.h"
#import "Coverage.h"
#import "PsapResponse.h"


/**
 *   This service provides Life-saving emergency call-routing information (PSAP details) w.r.t requested Address or Latitude-Longitude.
 */
@interface Geo911Service : OAuthService


/**
 * Retrieves Public Safety Answering Points (PSAP) details.
 * Accepts the address as input and returns PSAP locations' details
 * including agency name, phone number, county name, coverage, contact person's
 * details, site details and mailing address
 * @param address
 * 			Required - Free-form address text
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback
 */
- (void) getPSAPByAddress:(NSString *)address :
                            (void (^)(PsapResponse *geo911))success
                                failure : (void (^)( ErrorResponse *error))failure;

	
/**
 * Retrieves Public Safety Answering Points (PSAP) details.
 * Accepts latitude and longitude co-ordinates as input and returns PSAP locations' details
 * including agency name, including agency name, phone number, county name, coverage,
 * contact person's details, site details and mailing address.
 * @param latitude
 * 			Required - latitude of the location
 * @param longitude
 * 			Required - longitude of the location
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback
 */


- (void) getPSAPByLocation: (NSNumber *)latitude :
                            (NSNumber *)longitude :
                            (void (^)(PsapResponse *geo911))success
                                failure : (void (^)( ErrorResponse *error))failure;


@end
