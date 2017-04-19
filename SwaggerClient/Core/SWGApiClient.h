#import <Foundation/Foundation.h>
#import <ISO8601/ISO8601.h>
#import <AFNetworking/AFNetworking.h>
#import "SWGJSONResponseSerializer.h"
#import "SWGJSONRequestSerializer.h"
#import "SWGQueryParamCollection.h"
#import "SWGConfiguration.h"
#import "SWGResponseDeserializer.h"
#import "SWGSanitizer.h"
#import "SWGLogger.h"

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

#import "SWGAHJ.h"
#import "SWGAHJList.h"
#import "SWGAHJPlusPSAPResponse.h"
#import "SWGAddress.h"
#import "SWGAgeTheme.h"
#import "SWGAreaCodeInfo.h"
#import "SWGAttitudesAndMotivationTheme.h"
#import "SWGAutomobileTheme.h"
#import "SWGBaseFloodElevation.h"
#import "SWGBoundaries.h"
#import "SWGBoundary.h"
#import "SWGCandidate.h"
#import "SWGCandidateRange.h"
#import "SWGCandidateRangeUnit.h"
#import "SWGCbsa.h"
#import "SWGCensus.h"
#import "SWGChannelPreferencesTheme.h"
#import "SWGCommunity.h"
#import "SWGCommuterPatternsTheme.h"
#import "SWGConfiguredDictionaryResponse.h"
#import "SWGContactDetails.h"
#import "SWGContactPerson.h"
#import "SWGCost.h"
#import "SWGCosts.h"
#import "SWGCountrySupport.h"
#import "SWGCounty.h"
#import "SWGCoverage.h"
#import "SWGCrimeBoundary.h"
#import "SWGCrimeIndexTheme.h"
#import "SWGCrimeRiskResponse.h"
#import "SWGCrs.h"
#import "SWGCustomObject.h"
#import "SWGCustomObjectMember.h"
#import "SWGDemographics.h"
#import "SWGDemographicsThemes.h"
#import "SWGDictionary.h"
#import "SWGDirectionGeometry.h"
#import "SWGDistance.h"
#import "SWGEarthquakeRiskResponse.h"
#import "SWGEducationalAttainmentTheme.h"
#import "SWGEthnicityTheme.h"
#import "SWGEventsCount.h"
#import "SWGField.h"
#import "SWGFieldsMatching.h"
#import "SWGFinancialProductsTheme.h"
#import "SWGFireDepartment.h"
#import "SWGFireRiskResponse.h"
#import "SWGFireShed.h"
#import "SWGFireStation.h"
#import "SWGFireStations.h"
#import "SWGFloodBoundary.h"
#import "SWGFloodRiskResponse.h"
#import "SWGFloodZone.h"
#import "SWGGenderTheme.h"
#import "SWGGeoPos.h"
#import "SWGGeoRiskBoundaries.h"
#import "SWGGeoRiskCrimeTheme.h"
#import "SWGGeoRouteResponse.h"
#import "SWGGeoTaxLocations.h"
#import "SWGGeocodeAddress.h"
#import "SWGGeocodeCapabilitiesResponse.h"
#import "SWGGeocodeRequest.h"
#import "SWGGeocodeServiceResponse.h"
#import "SWGGeocodeServiceResponseList.h"
#import "SWGGeometry.h"
#import "SWGGeometryPolygon.h"
#import "SWGGrid.h"
#import "SWGHouseholdSizeTheme.h"
#import "SWGIncomeTheme.h"
#import "SWGIndexVariable.h"
#import "SWGIndividualValueVariable.h"
#import "SWGInputParameter.h"
#import "SWGLatLongFields.h"
#import "SWGLifeStyleTheme.h"
#import "SWGLocation.h"
#import "SWGLocations.h"
#import "SWGMaritalStatusTheme.h"
#import "SWGMatch.h"
#import "SWGMcd.h"
#import "SWGName.h"
#import "SWGOperation.h"
#import "SWGOutputParameter.h"
#import "SWGPSAPResponse.h"
#import "SWGPlace.h"
#import "SWGPlaceByLocations.h"
#import "SWGPlaceByLocationsLocation.h"
#import "SWGPlaceLocation.h"
#import "SWGPlaceLocationName.h"
#import "SWGPoi.h"
#import "SWGPoint.h"
#import "SWGPoints.h"
#import "SWGPolygon.h"
#import "SWGPreferences.h"
#import "SWGPrimaryZone.h"
#import "SWGProperties.h"
#import "SWGPurchasingBehaviorTheme.h"
#import "SWGRaceTheme.h"
#import "SWGRangeVariable.h"
#import "SWGRateCenterResponse.h"
#import "SWGReturnFieldsDescriptor.h"
#import "SWGReverseGeocodeRequest.h"
#import "SWGRisk.h"
#import "SWGRouteDirection.h"
#import "SWGRouteDirections.h"
#import "SWGRouteGeometry.h"
#import "SWGSalesTax.h"
#import "SWGSegmentation.h"
#import "SWGSegmentationThemes.h"
#import "SWGSiteDetails.h"
#import "SWGSpecialPurposeDistrict.h"
#import "SWGSpecialPurposeDistrictTax.h"
#import "SWGState.h"
#import "SWGStatus.h"
#import "SWGSupportLevel.h"
#import "SWGTaxAddress.h"
#import "SWGTaxAddressRequest.h"
#import "SWGTaxJurisdiction.h"
#import "SWGTaxLocationRequest.h"
#import "SWGTaxRateAddress.h"
#import "SWGTaxRateAddressRequest.h"
#import "SWGTaxRateLocationRequest.h"
#import "SWGTaxResponse.h"
#import "SWGTaxResponses.h"
#import "SWGTime.h"
#import "SWGTimezone.h"
#import "SWGTravelBoundaries.h"
#import "SWGTravelBoundary.h"
#import "SWGTravelCostMatrixResponse.h"
#import "SWGTravelCostMatrixResponseEndPoint.h"
#import "SWGTravelCostMatrixResponseEndPointCrs.h"
#import "SWGTravelCostMatrixResponseEndPointCrsProperties.h"
#import "SWGTravelCostMatrixResponseMatrix.h"
#import "SWGUseTax.h"



@class SWGConfiguration;

/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const SWGResponseObjectErrorKey;

@interface SWGApiClient : AFHTTPSessionManager

@property(nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property(nonatomic, assign) NSTimeInterval timeoutInterval;
@property(nonatomic, readonly) NSOperationQueue* queue;

/// In order to ensure the HTTPResponseHeaders are correct, it is recommended to initialize one SWGApiClient instance per thread.
@property(nonatomic, readonly) NSDictionary* HTTPResponseHeaders;

@property(nonatomic, strong) id<SWGResponseDeserializer> responseDeserializer;

@property(nonatomic, strong) id<SWGSanitizer> sanitizer;
/**
 * Clears Cache
 */
+(void)clearCache;

/**
 * Turns on cache
 *
 * @param enabled If the cached is enable, must be `YES` or `NO`
 */
+(void)setCacheEnabled:(BOOL) enabled;

/**
 * Gets the request queue size
 *
 * @return The size of `queuedRequests` static variable.
 */
+(NSUInteger)requestQueueSize;

/**
 * Sets the client unreachable
 *
 * @param state off line state, must be `YES` or `NO`
 */
+(void) setOfflineState:(BOOL) state;

/**
 * Gets if the client is unreachable
 *
 * @return The client offline state
 */
+(BOOL) getOfflineState;

/**
 * Sets the client reachability, this may be overridden by the reachability manager if reachability changes
 *
 * @param The client reachability.
 */
+(void) setReachabilityStatus:(AFNetworkReachabilityStatus) status;

/**
 * Gets the client reachability
 *
 * @return The client reachability.
 */
+(AFNetworkReachabilityStatus) getReachabilityStatus;

/**
 * Gets the next request id
 *
 * @return The next executed request id.
 */
+(NSNumber*) nextRequestId;

/**
 * Generates request id and add it to the queue
 *
 * @return The next executed request id.
 */
+(NSNumber*) queueRequest;

/**
 * Removes request id from the queue
 *
 * @param requestId The request which will be removed.
 */
+(void) cancelRequest:(NSNumber*)requestId;

/**
 * Customizes the behavior when the reachability changed
 *
 * @param changeBlock The block will be executed when the reachability changed.
 */
+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock;

/**
 * Sets the api client reachability strategy
 */
- (void)configureCacheReachibility;

/**
 * Sets header for request
 *
 * @param value The header value
 * @param forKey The header key
 */
-(void)setHeaderValue:(NSString*) value
               forKey:(NSString*) forKey;

/**
 * Updates header parameters and query parameters for authentication
 *
 * @param headers The header parameter will be udpated, passed by pointer to pointer.
 * @param querys The query parameters will be updated, passed by pointer to pointer.
 * @param authSettings The authentication names NSArray.
 */
- (void) updateHeaderParams:(NSDictionary **)headers
                queryParams:(NSDictionary **)querys
           WithAuthSettings:(NSArray *)authSettings;

/**
 * Performs request
 *
 * @param path Request url.
 * @param method Request method.
 * @param pathParams Request path parameters.
 * @param queryParams Request query parameters.
 * @param body Request body.
 * @param headerParams Request header parameters.
 * @param authSettings Request authentication names.
 * @param requestContentType Request content-type.
 * @param responseContentType Response content-type.
 * @param completionBlock The block will be executed when the request completed.
 *
 * @return The request id.
 */
-(NSNumber*) requestWithPath:(NSString*) path
                      method:(NSString*) method
                  pathParams:(NSDictionary *) pathParams
                 queryParams:(NSDictionary*) queryParams
                  formParams:(NSDictionary *) formParams
                       files:(NSDictionary *) files
                        body:(id) body
                headerParams:(NSDictionary*) headerParams
                authSettings:(NSArray *) authSettings
          requestContentType:(NSString*) requestContentType
         responseContentType:(NSString*) responseContentType
                responseType:(NSString *) responseType
             completionBlock:(void (^)(id, NSError *))completionBlock;

/**
 * Custom security policy
 *
 * @return AFSecurityPolicy
 */
- (AFSecurityPolicy *) customSecurityPolicy;

/**
 * SWGConfiguration return sharedConfig
 *
 * @return SWGConfiguration
 */
- (SWGConfiguration*) configuration;


@end