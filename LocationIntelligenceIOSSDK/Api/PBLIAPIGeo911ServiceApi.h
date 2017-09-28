#import <Foundation/Foundation.h>
#import "PBAHJPlusPSAPResponse.h"
#import "PBPSAPResponse.h"
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


@interface PBLIAPIGeo911ServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeo911ServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeo911ServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// AHJ & PSAP By Address.
/// Accepts addresses as input and Returns contact details for Authorities Having Jurisdiction (AHJ) on-behalf-of local Public Safety Answering Points (PSAP). Geo911 accepts an address and returns PSAP contact data plus contact data for an AHJ to communicate directly with a PSAP. Details include agency name, phone number, city name, coverage, contact person's details, site details and mailing addresses for EMS, Fire, and Police PSAP contacts.
///
/// @param address The address to be searched.
/// 
///  code:200 message:"successful operation"
///
/// @return PBAHJPlusPSAPResponse*
-(NSNumber*) getAHJPlusPSAPByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBAHJPlusPSAPResponse* output, NSError* error)) handler;


/// AHJ & PSAP By Location
/// Accepts latitude & longitude as input and Returns contact details for Authorities Having Jurisdiction (AHJ) on-behalf-of local Public Safety Answering Points (PSAP). Geo911 accepts a location coordinate and returns PSAP contact data plus contact data for an AHJ to communicate directly with a PSAP. Details include agency name, phone number, city name, coverage, contact person's details, site details and mailing addresses for EMS, Fire, and Police PSAP contacts.
///
/// @param longitude Latitude of the location.
/// @param latitude Longitude of the location.
/// 
///  code:200 message:"successful operation"
///
/// @return PBAHJPlusPSAPResponse*
-(NSNumber*) getAHJPlusPSAPByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBAHJPlusPSAPResponse* output, NSError* error)) handler;


/// PSAP By Address.
/// Accepts addresses as input and returns contact details for local Public Safety Answering Points (PSAP). Geo911 accepts an address as input and returns the relevant PSAP address and contact details including agency name, phone number, county name, coverage, contact person's details, site details and mailing address.
///
/// @param address The address to be searched.
/// 
///  code:200 message:"successful operation"
///
/// @return PBPSAPResponse*
-(NSNumber*) getPSAPByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBPSAPResponse* output, NSError* error)) handler;


/// PSAP By Location.
/// Accepts latitude & longitude as input and Returns contact details for local Public Safety Answering Points (PSAP). Geo911 accepts a location coordinate and returns the relevant PSAP address and contact details including dispatch name, phone number, county name, coverage, contact person's details, site details and mailing address.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// 
///  code:200 message:"successful operation"
///
/// @return PBPSAPResponse*
-(NSNumber*) getPSAPByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBPSAPResponse* output, NSError* error)) handler;



@end
