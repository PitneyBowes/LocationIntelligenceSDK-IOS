#import <Foundation/Foundation.h>
#import "PBGeoIdentityResponse.h"
#import "PBIdentity.h"
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


@interface PBLIAPIGeoIdentityServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoIdentityServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoIdentityServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Gets GeoIdentityResponse
/// Gets GeoIdentityResponse
///
/// @param address free form address text
/// @param givenName This filters all the associated identities of address by given Name (optional)
/// @param familyName This filters all the associated identities of address by family Name (optional)
/// @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
/// @param maxCandidates Number of identities returned in response (optional)
/// @param includeNeighborhoodDetails Whether to include neighborhood details in the response or not. Default is Y (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoIdentityResponse*
-(NSNumber*) getIdentityByAddressWithAddress: (NSString*) address
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    includeNeighborhoodDetails: (NSString*) includeNeighborhoodDetails
    completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler;


/// Gets Identity
/// Gets Identity
///
/// @param email This specifies the email address
/// @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBIdentity*
-(NSNumber*) getIdentityByEmailWithEmail: (NSString*) email
    confidence: (NSString*) confidence
    completionHandler: (void (^)(PBIdentity* output, NSError* error)) handler;


/// Gets GeoIdentityResponse
/// Gets GeoIdentityResponse
///
/// @param pbKey PB specific unique key for each address
/// @param givenName This filters all the associated identities of address by given Name (optional)
/// @param familyName This filters all the associated identities of address by family Name (optional)
/// @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
/// @param maxCandidates Number of identities returned in response (optional)
/// @param includeNeighborhoodDetails Whether to include neighborhood details in the response or not. Default is Y (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeoIdentityResponse*
-(NSNumber*) getIdentityByPBKeyWithPbKey: (NSString*) pbKey
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    includeNeighborhoodDetails: (NSString*) includeNeighborhoodDetails
    completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler;



@end
