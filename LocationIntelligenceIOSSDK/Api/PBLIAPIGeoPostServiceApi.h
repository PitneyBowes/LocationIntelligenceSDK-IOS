#import <Foundation/Foundation.h>
#import "PBCarrierRouteResponse.h"
#import "PBCarrierRouteAddressRequest.h"
#import "PBCarrierRouteResponseList.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 6.0.0
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


@interface PBLIAPIGeoPostServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoPostServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoPostServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Carrier Route By Address.
/// Get United States Postal Service (USPS) carrier route data for the requested address
///
/// @param address free form address text
/// @param includeGeometry Y or N (default is Y) - if it is Y, then geometry will be part of response (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBCarrierRouteResponse*
-(NSNumber*) getCarrierRoutesByAddressWithAddress: (NSString*) address
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBCarrierRouteResponse* output, NSError* error)) handler;


/// Gets GeoPost Carrier Routes for Multiple Addresses
/// Gets GeoPost Carrier Routes for Multiple Addresses
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBCarrierRouteResponseList*
-(NSNumber*) getCarrierRoutesByAddressBatchWithBody: (PBCarrierRouteAddressRequest*) body
    completionHandler: (void (^)(PBCarrierRouteResponseList* output, NSError* error)) handler;



@end
