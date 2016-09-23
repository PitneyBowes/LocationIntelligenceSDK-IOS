//
//  GeocodeService.h
//  LocationIntelligenceSDK
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
#import "GeocodeResponse.h"
#import "Preferences.h"
#import "ConfiguredDictionaryResponse.h"
#import <Foundation/Foundation.h>
#import "GeocodeCapabilitiesResponse.h"
#import "Points.h"
#import "ReverseGeocodeRequest.h"
#import "GeocodePreferenceBuilder.h"
#import "AddressGeocode.h"

@interface GeocodeService : OAuthService

typedef enum {AddressLevel=0,Geographic=1,Postal=2} GeocodeType;

typedef NS_ENUM(NSInteger, Countries) {
    AMERICAN_SAMOA=0,
    ANDORRA=1,
    ANGOLA=2,
    ARGENTINA=3,
    ARUBA=4,
    AUSTRALIA=5,
    AUSTRIA=6,
    BAHAMAS=7,
    BAHRAIN=8,
    BARBADOS=9,
    BELGIUM=10,
    BELIZE=11,
    BENIN=12,
    BERMUDA=13,
    BOLIVIA=14,
    BOTSWANA=15,
    BRAZIL=16,
    BURKINA_FASO=17,
    BURUNDI=18,
    CAMEROON=19,
    CANADA=20,
    CHILE=21,
    CHINA=22,
    CONGO=23,
    DEMOCRATIC_REPUBLIC_OF_CONGO=24,
    COSTA_RICA=25,
    CROATIA=26,
    CUBA=27,
    CZECH_REPUBLIC=28,
    DENMARK=29,
    DOMINICAN_REPUBLIC=30,
    ECUADOR=31,
    EGYPT=32,
    EL_SALVADOR=33,
    ESTONIA=34,
    FINLAND=35,
    FRANCE=36,
    FRENCH_GUYANA=37,
    GABON=38,
    GERMANY=39,
    GHANA=40,
    GREAT_BRITAIN=41,
    GREECE=42,
    GUADELOUPE=43,
    GUAM=44,
    GUATEMALA=45,
    GUYANA=46,
    HONDURAS=47,
    HONG_KONG=48,
    HUNGARY=49,
    ICELAND=50,
    INDIA=51,
    INDONESIA=52,
    IRELAND=53,
    ITALY=54,
    JAMAICA=55,
    JAPAN=56,
    KENYA=57,
    KUWAIT=58,
    LATVIA=59,
    LEBANON=60,
    LESOTHO=61,
    LIECHTENSTEIN=62,
    LITHUANIA=63,
    LUXEMBOURG=64,
    MACAO=65,
    MALAWI=66,
    MALAYSIA=67,
    MALI=68,
    MARTINIQUE=69,
    MAURITANIA=70,
    MAURITIUS=71,
    MAYOTTE=72,
    MEXICO=73,
    MONACO=74,
    MOROCCO=75,
    MOZAMBIQUE=76,
    NAMIBIA=77,
    NETHERLANDS=78,
    NEW_ZEALAND=79,
    NICARAGUA=80,
    NIGER=81,
    NIGERIA=82,
    NORTH_MARIANA_ISLANDS=83,
    NORWAY=84,
    OMAN=85,
    PALAU=86,
    PANAMA=87,
    PARAGUAY=88,
    PERU=89,
    PHILIPPINES=90,
    POLAND=91,
    PORTUGAL=92,
    PUERTO_RICO=93,
    QATAR=94,
    REUNION=95,
    ROMANIA=96,
    RUSSIAN_FEDERATION=97,
    RWANDA=98,
    SAINT_KITTS_AND_NEVIS=99,
    SAUDI_ARABIA=100,
    SENEGAL=101,
    SINGAPORE=102,
    SLOVAKIA=103,
    SLOVENIA=104,
    SOUTH_AFRICA=105,
    SPAIN=106,
    SURINAME=107,
    SWAZILAND=108,
    SWEDEN=109,
    SWITZERLAND=110,
    TAIWAN=111,
    UNITED_REPUBLIC_OF_TANZANIA=112,
    THAILAND=113,
    TOGO=114,
    TRINIDAD_AND_TOBAGO=115,
    TUNISIA=116,
    TURKEY=117,
    UGANDA=118,
    UKRAINE=119,
    UNITED_ARAB_EMIRATES=120,
    UNITED_KINGDOM=121,
    UNITED_STATES=122,
    URUGUAY=123,
    VENEZUELA=124,
    VIRGIN_ISLANDS=125,
    WORLD_GEOCODER=126,
    ZAMBIA=127,
    ZIMBABWE=128
};


//typedef enum: NSString {USA=0} Countries;
//extern NSString * const Countires_toString[];

typedef enum {Basic=0,Premium=1} BundleType;
typedef enum {Geocode=0,ReverseGeocode=1} OperationType;



/**
 *  <#Description#>
 *
 *  @param country    <#country description#>
 *  @param bundleType <#bundleType description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getConfiguredDictionary: (Countries)country
                        :(BundleType)bundleName
                        :(void (^)(ConfiguredDictionaryResponse *dictionaryResponse))success
                        failure : (void (^)( ErrorResponse *error))failure;



/**
 *  <#Description#>
 *
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getConfiguredDictionary:(BundleType)bundleName
                                :(void (^)(ConfiguredDictionaryResponse *configuredDictionaryResponse))success
                        failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getCapabilities:(BundleType)bundleName
                        :(void (^)(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse))success
                failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param bundleName <#bundleName description#>
 *  @param country    <#country description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */

- (void) getCapabilitiesCountry:(Countries) country
                               :(BundleType)bundleName
                               :(void (^)(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse))success
                       failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param operation  <#operation description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getCapabilitiesOperation :(OperationType) operation
                                 :(BundleType) bundleName
                                 :(void (^)(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse))success
                         failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param operation  <#operation description#>
 *  @param country    <#country description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getCapabilities  :(Countries) country
                         :(OperationType)operation
                         :(BundleType) bundleName
                         :(void (^)(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse))success
                failure : (void (^)( ErrorResponse *error))failure;



- (void)getGeocode : (AddressGeocode *) addressGeocode
                   :(BundleType) bundleName
                   :(GeocodeType) geocodeType
                   :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
           failure : (void (^)( ErrorResponse *error))failure;


/**
*  <#Description#>
*
*  @param addresses  <#addresses description#>
*  @param bundleName <#bundleName description#>
*  @param success    <#success description#>
*  @param failure    <#failure description#>
*/
- (void)getGeocodeBatch :(NSArray*) addressesGeocode
                        :(BundleType) bundleName
                        :(GeocodeType) geocodeType
                        :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                failure : (void (^)( ErrorResponse *error))failure;

/**
 *  <#Description#>
 *
 *  @param addresses         <#addresses description#>
 *  @param bundleName        <#bundleName description#>
 *  @param preferenceBuilder <#preferenceBuilder description#>
 *  @param success           <#success description#>
 *  @param failure           <#failure description#>
 */
- (void)getGeocodeAdvanceBatch :(NSArray*) addresses
                               :(BundleType) bundleName
                               :(GeocodeType) geocodeType
                               : (GeocodePreferenceBuilder *) preferenceBuilder
                               :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                       failure : (void (^)( ErrorResponse *error))failure;



/**
 *  <#Description#>
 *
 *  @param points     <#points description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getReverseGeocode :(Points *) points
                          :(BundleType) bundleName
                          :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                  failure : (void (^)( ErrorResponse *error))failure;

/**
 *
 *
 *  @param points     <#points description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getReverseGeocodeBatch :(NSArray *) points
                               :(BundleType) bundleName
                               :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                       failure : (void (^)( ErrorResponse *error))failure;


/**
 *  <#Description#>
 *
 *  @param points            <#points description#>
 *  @param bundleName        <#bundleName description#>
 *  @param preferenceBuilder <#preferenceBuilder description#>
 *  @param success           <#success description#>
 *  @param failure           <#failure description#>
 */
- (void)getReverseGeocodeAdvanceBatch :(NSArray *) points
                                      :(BundleType) bundleName
                                      : (GeocodePreferenceBuilder *) preferenceBuilder
                                      :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                              failure : (void (^)( ErrorResponse *error))failure;

@end

