#import <Foundation/Foundation.h>
#import "PBTaxAddressRequest.h"
#import "PBTaxResponses.h"
#import "PBTaxLocationRequest.h"
#import "PBTaxRateAddressRequest.h"
#import "PBTaxRateLocationRequest.h"
#import "PBTaxResponse.h"
#import "PBApi.h"

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


@interface PBLIAPIGeoTaxServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoTaxServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoTaxServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Post Tax By Address
/// This is a Batch offering for 'Tax By Address' service. It accepts a single address, purchase amount or a list of addresses, purchase amounts and retrieve applicable taxes.
///
/// @param taxRateTypeId The tax rate id.
/// @param body TaxAddressRequest Class Object having tax request.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponses*
-(NSNumber*) getBatchTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxAddressRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;


/// Post Tax By Location
/// This is a Batch offering for 'Tax By Location' service. It accepts a single location coordinate, purchase amount or a list of location coordinates, purchase amounts and retrieve applicable tax.
///
/// @param taxRateTypeId The tax rate id.
/// @param body TaxAddressRequest Class Object having tax request.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponses*
-(NSNumber*) getBatchTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxLocationRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;


/// Post Taxrate By Address
/// This is a Batch offering for 'Taxrate By Address' service. It accepts a single address or a list of addresses and retrieve applicable tax rates.
///
/// @param taxRateTypeId The tax rate id.
/// @param body TaxRateAddressRequest Class Object having tax rate request.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponses*
-(NSNumber*) getBatchTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxRateAddressRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;


/// Post Taxrate By Location
/// This is a Batch offering for 'Taxrate By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve applicable tax rates.
///
/// @param taxRateTypeId The tax rate id.
/// @param body TaxRateLocationRequest Class Object having tax rate request.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponses*
-(NSNumber*) getBatchTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxRateLocationRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;


/// Get Tax By Address
/// This service calculates and returns taxes applicable at a specific address. Address, purchase amount and supported tax rate type are inputs to the service.
///
/// @param taxRateTypeId The tax rate id.
/// @param address The address to be searched.
/// @param purchaseAmount The amount on which tax to be calculated.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponse*
-(NSNumber*) getSpecificTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    purchaseAmount: (NSString*) purchaseAmount
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;


/// Get Tax By Location
/// This service calculates and returns tax applicable at a specific location. Longitude, latitude, purchase amount and supported tax rate type are inputs to the service.
///
/// @param taxRateTypeId The tax rate id.
/// @param latitude Latitude of the location.
/// @param longitude Longitude of the location.
/// @param purchaseAmount The amount on which tax to be calculated.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponse*
-(NSNumber*) getSpecificTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    purchaseAmount: (NSString*) purchaseAmount
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;


/// Get Taxrate By Address
/// Retrieves tax rates applicable to a specific address. This service accepts address and supported tax rate type as inputs to retrieve applicable tax rates.
///
/// @param taxRateTypeId The tax rate id.
/// @param address The address to be searched.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponse*
-(NSNumber*) getSpecificTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;


/// Get Taxrate By Location
/// Retrieves tax rates applicable to a specific location. This service accepts longitude, latitude and supported tax rate type as inputs to retrieve applicable tax rates.
///
/// @param taxRateTypeId The tax rate id.
/// @param latitude Latitude of the location.
/// @param longitude Longitude of the location.
/// 
///  code:200 message:"successful operation"
///
/// @return PBTaxResponse*
-(NSNumber*) getSpecificTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;



@end
