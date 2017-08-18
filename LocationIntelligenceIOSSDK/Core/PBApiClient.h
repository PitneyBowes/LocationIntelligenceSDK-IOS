#import <Foundation/Foundation.h>
#import <ISO8601/ISO8601.h>
#import <AFNetworking/AFNetworking.h>
#import "PBJSONResponseSerializer.h"
#import "PBJSONRequestSerializer.h"
#import "PBQueryParamCollection.h"
#import "PBConfiguration.h"
#import "PBResponseDeserializer.h"
#import "PBSanitizer.h"
#import "PBLogger.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 3.6.0
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

#import "PBAHJ.h"
#import "PBAHJList.h"
#import "PBAHJPlusPSAPResponse.h"
#import "PBAddress.h"
#import "PBAdjacentBody.h"
#import "PBAgeTheme.h"
#import "PBArea.h"
#import "PBAreaCodeInfo.h"
#import "PBAttitudesAndMotivationTheme.h"
#import "PBAutomobileTheme.h"
#import "PBBaseFloodElevation.h"
#import "PBBoundaries.h"
#import "PBBoundary.h"
#import "PBBoundaryBuffer.h"
#import "PBBufferRelation.h"
#import "PBCandidate.h"
#import "PBCandidateRange.h"
#import "PBCandidateRangeUnit.h"
#import "PBCbsa.h"
#import "PBCensus.h"
#import "PBChannelPreferencesTheme.h"
#import "PBCommunity.h"
#import "PBCommuterPatternsTheme.h"
#import "PBConfiguredDictionaryResponse.h"
#import "PBContactDetails.h"
#import "PBContactPerson.h"
#import "PBCost.h"
#import "PBCosts.h"
#import "PBCountrySupport.h"
#import "PBCounty.h"
#import "PBCoverage.h"
#import "PBCrimeBoundary.h"
#import "PBCrimeIndexTheme.h"
#import "PBCrimeRiskResponse.h"
#import "PBCrs.h"
#import "PBCustomObject.h"
#import "PBCustomObjectMember.h"
#import "PBDateTimeEarthQuake.h"
#import "PBDemographics.h"
#import "PBDemographicsThemes.h"
#import "PBDepth.h"
#import "PBDictionary.h"
#import "PBDirectionGeometry.h"
#import "PBDistance.h"
#import "PBDistanceToBorder.h"
#import "PBDistrictType.h"
#import "PBEarthquakeEvent.h"
#import "PBEarthquakeEventsResponse.h"
#import "PBEarthquakeHistory.h"
#import "PBEarthquakeLocation.h"
#import "PBEarthquakeRiskResponse.h"
#import "PBEducationalAttainmentTheme.h"
#import "PBEthnicityTheme.h"
#import "PBEventsCount.h"
#import "PBField.h"
#import "PBFieldsMatching.h"
#import "PBFinancialProductsTheme.h"
#import "PBFireDepartment.h"
#import "PBFireEvent.h"
#import "PBFireEventsResponse.h"
#import "PBFireHistory.h"
#import "PBFireRiskByAddressRequest.h"
#import "PBFireRiskByLocationRequest.h"
#import "PBFireRiskResponse.h"
#import "PBFireRiskResponseList.h"
#import "PBFireShed.h"
#import "PBFireStation.h"
#import "PBFireStations.h"
#import "PBFloodBoundary.h"
#import "PBFloodRiskByAddressRequest.h"
#import "PBFloodRiskByLocationRequest.h"
#import "PBFloodRiskResponse.h"
#import "PBFloodRiskResponseList.h"
#import "PBFloodZone.h"
#import "PBGenderTheme.h"
#import "PBGeoPos.h"
#import "PBGeoPropertyAddressRequest.h"
#import "PBGeoPropertyPBKeyRequest.h"
#import "PBGeoPropertyResponse.h"
#import "PBGeoPropertyResponses.h"
#import "PBGeoRiskBoundaries.h"
#import "PBGeoRiskCrimeTheme.h"
#import "PBGeoRiskGeometry.h"
#import "PBGeoRouteResponse.h"
#import "PBGeoTaxLocations.h"
#import "PBGeocodeAddress.h"
#import "PBGeocodeCapabilitiesResponse.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBGeometry.h"
#import "PBGeometryPolygon.h"
#import "PBGrid.h"
#import "PBHouseholdSizeTheme.h"
#import "PBIPDTaxByAddressBatchRequest.h"
#import "PBIPDTaxJurisdiction.h"
#import "PBIncomeTheme.h"
#import "PBIndexVariable.h"
#import "PBIndividualValueVariable.h"
#import "PBInputParameter.h"
#import "PBIpd.h"
#import "PBLatLongFields.h"
#import "PBLifeStyleTheme.h"
#import "PBLocation.h"
#import "PBLocations.h"
#import "PBMagnitude.h"
#import "PBMaritalStatusTheme.h"
#import "PBMatch.h"
#import "PBMcd.h"
#import "PBName.h"
#import "PBOperation.h"
#import "PBOutputParameter.h"
#import "PBPBKeyAddressRequest.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyResponseList.h"
#import "PBPSAPResponse.h"
#import "PBPbkey.h"
#import "PBPlace.h"
#import "PBPlaceByLocations.h"
#import "PBPlaceByLocationsLocation.h"
#import "PBPlaceLocation.h"
#import "PBPlaceLocationName.h"
#import "PBPoi.h"
#import "PBPoint.h"
#import "PBPoints.h"
#import "PBPolygon.h"
#import "PBPreferences.h"
#import "PBPrimaryZone.h"
#import "PBProperties.h"
#import "PBPurchasingBehaviorTheme.h"
#import "PBRaceTheme.h"
#import "PBRangeVariable.h"
#import "PBRate.h"
#import "PBRateCenterResponse.h"
#import "PBReturnFieldsDescriptor.h"
#import "PBReverseGeocodeRequest.h"
#import "PBRisk.h"
#import "PBRiskAddress.h"
#import "PBRiskPreferences.h"
#import "PBRouteDirection.h"
#import "PBRouteDirections.h"
#import "PBRouteGeometry.h"
#import "PBSalesTax.h"
#import "PBSegmentation.h"
#import "PBSegmentationThemes.h"
#import "PBShoreLineCounty.h"
#import "PBShoreLineDistance.h"
#import "PBSiteDetails.h"
#import "PBSpecialPurposeDistrict.h"
#import "PBSpecialPurposeDistrictTax.h"
#import "PBState.h"
#import "PBStatus.h"
#import "PBSupportLevel.h"
#import "PBTaxAddress.h"
#import "PBTaxAddressRequest.h"
#import "PBTaxDistrictResponse.h"
#import "PBTaxDistrictResponseList.h"
#import "PBTaxJurisdiction.h"
#import "PBTaxLocationRequest.h"
#import "PBTaxRateAddress.h"
#import "PBTaxRateAddressRequest.h"
#import "PBTaxRateLocationRequest.h"
#import "PBTaxResponse.h"
#import "PBTaxResponses.h"
#import "PBTime.h"
#import "PBTimezone.h"
#import "PBTravelBoundaries.h"
#import "PBTravelBoundary.h"
#import "PBTravelCostMatrixResponse.h"
#import "PBTravelCostMatrixResponseEndPoint.h"
#import "PBTravelCostMatrixResponseEndPointCrs.h"
#import "PBTravelCostMatrixResponseEndPointCrsProperties.h"
#import "PBTravelCostMatrixResponseMatrix.h"
#import "PBType.h"
#import "PBUseTax.h"
#import "PBWaterBody.h"
#import "PBWaterBodyResponse.h"



@class PBConfiguration;

/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const PBResponseObjectErrorKey;

@interface PBApiClient : AFHTTPSessionManager

@property(nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property(nonatomic, assign) NSTimeInterval timeoutInterval;
@property(nonatomic, readonly) NSOperationQueue* queue;

/// In order to ensure the HTTPResponseHeaders are correct, it is recommended to initialize one PBApiClient instance per thread.
@property(nonatomic, readonly) NSDictionary* HTTPResponseHeaders;

@property(nonatomic, strong) id<PBResponseDeserializer> responseDeserializer;

@property(nonatomic, strong) id<PBSanitizer> sanitizer;
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
 * PBConfiguration return sharedConfig
 *
 * @return PBConfiguration
 */
- (PBConfiguration*) configuration;


@end
