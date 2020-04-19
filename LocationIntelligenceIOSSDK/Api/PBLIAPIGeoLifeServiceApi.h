#import <Foundation/Foundation.h>
#import "PBDemographicsV2.h"
#import "PBSegmentation.h"
#import "PBApi.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 8.5.0
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


@interface PBLIAPIGeoLifeServiceApi: NSObject <PBApi>

extern NSString* kPBLIAPIGeoLifeServiceApiErrorDomain;
extern NSInteger kPBLIAPIGeoLifeServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Demographics By Address.
/// Provides the demographic details around a specified address. GeoLife 'byaddress' service accepts address as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.
///
/// @param address The address to be searched.
/// @param country 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,AUS. (optional)
/// @param profile Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
/// @param filter The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. (optional)
/// @param valueFormat The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. (optional) (default to PercentAsAvailable)
/// @param variableLevel The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value (optional) (default to Key)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographicsV2*
-(NSNumber*) getDemographicsByAddressV2WithAddress: (NSString*) address
    country: (NSString*) country
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
    completionHandler: (void (^)(PBDemographicsV2* output, NSError* error)) handler;


/// Demographics By Location.
/// Provides the demographic details around a specified location. GeoLife 'bylocation' service accepts longitude and latitude as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param profile Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
/// @param filter The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. (optional)
/// @param valueFormat The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. (optional) (default to PercentAsAvailable)
/// @param variableLevel The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value (optional) (default to Key)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographicsV2*
-(NSNumber*) getDemographicsByLocationV2WithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
    completionHandler: (void (^)(PBDemographicsV2* output, NSError* error)) handler;


/// Segmentation By Address.
/// Provides the segmentation details around a specified address. GeoLife 'Segmentation by Address' service accepts address as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.
///
/// @param address The address to be searched.
/// @param country 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBSegmentation*
-(NSNumber*) getSegmentationByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;


/// Segmentation By Location.
/// Provides the segmentation details around a specified location. GeoLife 'segmentation bylocation' service accepts longitude and latitude as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// 
///  code:200 message:"successful operation"
///
/// @return PBSegmentation*
-(NSNumber*) getSegmentationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;



@end
