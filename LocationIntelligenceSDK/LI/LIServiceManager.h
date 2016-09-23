//
//  LBS.h
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

#import "BaseAuthService.h"
#import "GeoSearchService.h"
#import "OAuthFactory.h"
#import "GeoEnhanceService.h"
#import "GeoLifeService.h"
#import "Geo911Service.h"
#import "GeoTaxService.h"
#import "GeocodeService.h"
#import "GeoCommService.h"



/**
 * LBS class is responsible for providing entry point all LBS specific
 * interfaces.It provides singleton object for this class
 */
@interface LIServiceManager : NSObject



/**
 *  Method to initialize LBS services with a user supplied token.
 *
 *  @param authToken Auth Token
 *
 *  @return Instance of LBS
 */
+ (LIServiceManager*)sharedSingletonClassByAuthToken : (NSString *) authToken;



/**
 *  Method to initialize LBS interfaces with user login credentials
 *
 *  @param consumerKey    Consumer Key
 *  @param consumerSecret consumerSecret
 *
 *  @return Instance of LBS
 */
+ (LIServiceManager*)sharedSingletonClass : (NSString *) consumerKey :(NSString *) consumerSecret;




+ (LIServiceManager*)sharedSingletonClass : (BaseAuthService*) baseOAuthService;



/**
 * OAuth Service APIs Handler
 *
 * @return an instance of BaseOAuthService
 */
-(BaseAuthService *)getBaseOAuthService;



/**
 * GeoSearchService Handler
 *
 * @return an instance of GeoSearchService
 */

-(GeoSearchService *) getGeoSearchService;


/**
 * GeoEnhance Service Handler
 *
 * @return an instance of GeoEnhanceService
 */
-(GeoEnhanceService *) getGeoEnhanceService;


/**
 * GeoLife Service Handler
 *
 * @return an instance of GeoLifeService
 */
-(GeoLifeService *) getGeoLifeService;


/**
 * Geo911 Service Handler
 *
 * @return an instance of Geo911Service
 */
-(Geo911Service *) getGeo911Service;



/**
 * GeoTax Service Handler
 *
 * @return an instance of GeoTaxService
 */
-(GeoTaxService *) getGeoTaxService;



/**
 * Geocode Service Handler
 *
 * @return an instance of GeoTaxService
 */
-(GeocodeService *) getGeocodeService;

/**
 *  <#Description#>
 *
 *  @return <#return value description#>
 */
-(GeoCommService *) getGeoCommSerivce;

/**
 * To invalidate the LBS static reference
 */
- (void) invalidateLIServiceManagerInstance;




@end
