//
//  GeoLifeService.h
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
#import "GeoLifeResponse.h"


/**
 *  This Service provides demographic data and lifestyle characteristics for a specific area.
 */
@interface GeoLifeService : OAuthService





/**
 * Returns the geodemographic variables - age, gender, marital status, ethnicity, and household income
 * based on an address provided
 *
 * @param address
 *   		Required - Free-form address text
 * @param country
 *          Optional - Country Code
 *          Acceptable list of country codes: USA,CAN,AUS,SWE,JPN,GBR
 * @param profile
 * 			Optional - Pre-defined profiles sets. Below are the values:
 * 			  			'Top5Ascending': Retrieves the top 5 results in ascending order.
 * 						'Top5Decending': Retrieves the top 5 results in descending order.
 * 						'Top3Ascending': Retrieves the top 3 results in ascending order.
 * 						'Top3Decending': Retrieves the top 3 results in descending order
 * @param filter
 * 			Optional - Represents demographic themes to narrow down search results
 * 						for example; Age, Income, Ethnicity
 * 						Maximum number of themes that can be provided as a filter are 10.
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback
 */

- (void) getDemographicsByAddress: (NSString *)address :
									(NSString *)country :
                                    (NSString *)profile :
                                    (NSString *)filter :
                                    (void (^)(GeoLifeResponse *geoLife))success
                                    failure : (void (^)( ErrorResponse *error))failure;


/**
 * Returns the geodemographic variables - age, gender, marital status, ethnicity, and household income
 * based on Lattitude Longitude provided
 *
 * @param latitude
 *  		Required - latitude of the location
 * @param longitude
 *  		Required - longitude of the location
 * @param profile
 * 			Optional - Pre-defined profiles sets. Below are the values:
 * 			  			'Top5Ascending': Retrieves the top 5 results in ascending order.
 * 						'Top5Decending': Retrieves the top 5 results in descending order.
 * 						'Top3Ascending': Retrieves the top 3 results in ascending order.
 * 						'Top3Decending': Retrieves the top 3 results in descending order
 * @param filter
 *  		Optional - Represents demographic themes to narrow down search results
 * 					   for example; Age, Income, Ethnicity
 * 					   Maximum number of themes that can be provided as a filter are 10.
 * @param success      Asynchronous sucess callback
 * @param failure      Asynchronous failure callback
 */

- (void) getDemographicsByLocation: (NSNumber *)latitude :
                                    (NSNumber *)longitude :
                                    (NSString *)profile :(NSString *)filter :
                                    (void (^)(GeoLifeResponse *geoLife))success
                                    failure : (void (^)( ErrorResponse *error))failure;





@end
