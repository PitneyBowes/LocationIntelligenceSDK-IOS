//
//  GeoCommService.h
//
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
#import "Match.h"
#import "AreaCodeInfoList.h"
#import "County.h"
#import "Address.h"
#import "Geometry.h"
#import "RateCenterResponse.h"


/**
 *  <#Description#>
 */
@interface GeoCommService : OAuthService

/**
 *  <#Description#>
 *
 *  @param address <#address description#>
 *  @param success <#success description#>
 *  @param failure <#failure description#>
 */
- (void) getRateCenterByAddress:(NSString *)address :
(void (^)(RateCenterResponse *rateCenterResponse))success
                 failure : (void (^)( ErrorResponse *error))failure;



/**
 *  <#Description#>
 *
 *  @param address <#address description#>
 *  @param country <#country description#>
 *  @param success <#success description#>
 *  @param failure <#failure description#>
 */
- (void) getRateCenterByAddressAndCountry:(NSString *)address
                                         : (NSString *)country
                                         :(void (^)(RateCenterResponse *rateCenterResponse))success
                                 failure : (void (^)( ErrorResponse *error))failure;




/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param areaCodeInfo        areaCodeInfo description
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressAndRequestInfo:(NSString *)address
                               : (BOOL *) areaCodeInfo
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure;



/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param areaCodeInfo         areaCodeInfo description
 *  @param level               <#level description#>
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */

- (void) getRateCenterByAddressAndLevel:(NSString *)address
                                       : (BOOL *) areaCodeInfo
                                       : (NSString *) level
                                       :(void (^)(RateCenterResponse *rateCenterResponse))success
                               failure : (void (^)( ErrorResponse *error))failure;



/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param country             <#country description#>
 *  @param areaCodeInfo        areaCodeInfo description
 *  @param level               <#level description#>
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressWithAllOptions:(NSString *)address
                               :(NSString *)country
                               : (BOOL *)areaCodeInfo
                               :(NSString *)level
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure;



/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param country             <#country description#>
 *  @param areaCodeInfo areaCodeInfodescription
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressAndCountry:(NSString *)address
                                         :(NSString *)country
                                         : (BOOL *)areaCodeInfo
                                         :(void (^)(RateCenterResponse *rateCenterResponse))success
                                 failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param latitude  <#latitude description#>
 *  @param longitude <#longitude description#>
 *  @param success   <#success description#>
 *  @param failure   <#failure description#>
 */


- (void) getRateCenterByLocation: (NSNumber *)latitude :
(NSNumber *)longitude :
(void (^)(RateCenterResponse *rateCenterResponse))success
                  failure : (void (^)( ErrorResponse *error))failure;


/**
 *  <#Description#>
 *
 *  @param latitude                <#latitude description#>
 *  @param longitude               longitude description
 *  @param areaCodeInfo              areaCodeInfo description
 *  @param level                   <#level description#>
 *  @param success                 <#success description#>
 *  @param failure                 <#failure description#>
 */
- (void) getRateCenterByLocationWithAllOptions: (NSNumber *)latitude
                             : (NSNumber *)longitude
                             : (BOOL *) areaCodeInfo
                             : (NSString *) level
                             :(void (^)(RateCenterResponse *rateCenterResponse))success
                     failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param latitude                <#latitude description#>
 *  @param longitude               <#longitude description#>
 *  @param areaCodeInfo            areaCodeInfo description
 *  @param success                 <#success description#>
 *  @param failure                 <#failure description#>
 */

- (void)getRateCenterByLocationWithAreaCodeInfo: (NSNumber *)latitude
                             : (NSNumber *)longitude
                             : (BOOL *) areaCodeInfo
                             :(void (^)(RateCenterResponse *rateCenterResponse))success
                     failure : (void (^)( ErrorResponse *error))failure;
@end
