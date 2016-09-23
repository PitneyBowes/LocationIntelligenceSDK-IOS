//
//  GeocodeService.m
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

#import "GeocodeService.h"
#import "GeocodeResponse.h"
#import "GeocodeRequest.h"
#import "Preferences.h"
#import "MustMatchFields.h"
#import "CustomPreferences.h"
#import "ReturnFieldsDescriptor.h"
#import "AddressGeocode.h"
#import "GeocodeCapabilitiesResponse.h"
#import "ReverseGeocodeRequest.h"
#import "CustomPreference.h"
#import "CustomPreferenceUSA.h"
#import "CustomPreferenceAUS.h"
#import "CustomPreferencePRT.h"
#import "CustomPreferenceCAN.h"
#import "CustomPreferenceDUE.h"
#import "CustomPreferenceFRA.h"
#import "CustomPreferenceGBR.h"
#import "CustomPreferenceNZL.h"
#import "CustomPreferenceSGP.h"
#import "CustomPreferenceSWE.h"
#import <objc/runtime.h>

@implementation GeocodeService


NSString *dictionryURL = @"/geocode-service/v1/transient/";
NSString *capabilityURL = @"/geocode-service/v1/transient/";




/**
 *  <#Description#>
 *
 *  @param country    <#country description#>
 *  @param bundleType <#bundleType description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getConfiguredDictionary: (Countries) country
                                :(BundleType)bundleName
                                :(void (^)(ConfiguredDictionaryResponse *dictionaryResponse))success
                        failure : (void (^)( ErrorResponse *error))failure;
        {
    
    
            [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
                
                NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
                
        
                    //Bundle Typ
                    NSString *bundleNameString= [self enumBundelTypeToString:bundleName];
                    dictionryURL = [dictionryURL stringByAppendingFormat:@"%@/dictionaries?",bundleNameString];

                
                    //Adding Country
                    NSString *countryString= [self enumCountryToString:country];
                    dictionryURL = [dictionryURL stringByAppendingString:@"country="];
                    dictionryURL = [dictionryURL stringByAppendingFormat:@"%@",countryString];
                
                
                
        [self getDictionaryResponse:dictionryURL :success failure:failure];
               
        } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


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
{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        
        
        //Bundle Typ
        NSString *bundleNameString= [self enumBundelTypeToString:bundleName];
        dictionryURL = [dictionryURL stringByAppendingFormat:@"%@/dictionaries",bundleNameString];

        
        [self getDictionaryResponse:dictionryURL :success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


/**
 *  <#Description#>
 *
 *  @param url
 *  @param methodName <#methodName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getDictionaryResponse:(NSString *)url
                              :(void (^)(ConfiguredDictionaryResponse *dictionary))success
                      failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        ConfiguredDictionaryResponse *dictionary = [ConfiguredDictionaryResponse modelObjectWithDictionary:id];
        success(dictionary);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
}


// In a source file
// initialize arrays with explicit indices to make sure
// the string match the enums properly
- (NSString *) enumCountryToString:(Countries) enumName {
    NSString *result = nil;
    
    switch(enumName) {
        case  AMERICAN_SAMOA:
            result=@"USA" ;
            break;
        case  ANDORRA:
            result=@"AND" ;
            break;
        case  ANGOLA:
            result=@"AGO" ;
            break;
        case  ARGENTINA:
            result=@"ARG" ;
            break;
        case  ARUBA:
            result=@"ABW" ;
            break;
        case  AUSTRALIA:
            result=@"AUS" ;
            break;
        case  AUSTRIA:
            result=@"AUT" ;
            break;
        case  BAHAMAS:
            result=@"BHS" ;
            break;
        case  BAHRAIN:
            result=@"BHR" ;
            break;
        case  BARBADOS:
            result=@"BRB" ;
            break;
        case  BELGIUM:
            result=@"BEL" ;
            break;
        case  BELIZE:
            result=@"BLZ" ;
            break;
        case  BENIN:
            result=@"BEN" ;
            break;
        case  BERMUDA:
            result=@"BMU" ;
            break;
        case  BOLIVIA:
            result=@"BOL" ;
            break;
        case  BOTSWANA:
            result=@"BWA" ;
            break;
        case  BRAZIL:
            result=@"BRA" ;
            break;
        case  BURKINA_FASO:
            result=@"BFA" ;
            break;
        case  BURUNDI:
            result=@"BDI" ;
            break;
        case  CAMEROON:
            result=@"CMR" ;
            break;
        case  CANADA:
            result=@"CAN" ;
            break;
        case  CHILE:
            result=@"CHL" ;
            break;
        case  CHINA:
            result=@"CHN" ;
            break;
        case  CONGO:
            result=@"COG" ;
            break;
        case  DEMOCRATIC_REPUBLIC_OF_CONGO:
            result=@"COD" ;
            break;
        case  COSTA_RICA:
            result=@"CRI" ;
            break;
        case  CROATIA:
            result=@"HRV" ;
            break;
        case  CUBA:
            result=@"CUB" ;
            break;
        case  CZECH_REPUBLIC:
            result=@"CZE" ;
            break;
        case  DENMARK:
            result=@"DNK" ;
            break;
        case  DOMINICAN_REPUBLIC:
            result=@"DOM" ;
            break;
        case  ECUADOR:
            result=@"ECU" ;
            break;
        case  EGYPT:
            result=@"EGY" ;
            break;
        case  EL_SALVADOR:
            result=@"SLV" ;
            break;
        case  ESTONIA:
            result=@"EST" ;
            break;
        case  FINLAND:
            result=@"FIN" ;
            break;
        case  FRANCE:
            result=@"FRA" ;
            break;
        case  FRENCH_GUYANA:
            result=@"GUF" ;
            break;
        case  GABON:
            result=@"GAB" ;
            break;
        case  GERMANY:
            result=@"DEU" ;
            break;
        case  GHANA:
            result=@"GHA" ;
            break;
        case  GREAT_BRITAIN:
            result=@"GBR" ;
            break;
        case  GREECE:
            result=@"GRC" ;
            break;
        case  GUADELOUPE:
            result=@"GLP" ;
            break;
        case  GUAM:
            result=@"USA" ;
            break;
        case  GUATEMALA:
            result=@"GTM" ;
            break;
        case  GUYANA:
            result=@"GUY" ;
            break;
        case  HONDURAS:
            result=@"HND" ;
            break;
        case  HONG_KONG:
            result=@"HKG" ;
            break;
        case  HUNGARY:
            result=@"HUN" ;
            break;
        case  ICELAND:
            result=@"ISL" ;
            break;
        case  INDIA:
            result=@"IND" ;
            break;
        case  INDONESIA:
            result=@"IDN" ;
            break;
        case  IRELAND:
            result=@"IRL" ;
            break;
        case  ITALY:
            result=@"ITA" ;
            break;
        case  JAMAICA:
            result=@"JAM" ;
            break;
        case  JAPAN:
            result=@"JPN" ;
            break;
        case  KENYA:
            result=@"KEN" ;
            break;
        case  KUWAIT:
            result=@"KWT" ;
            break;
        case  LATVIA:
            result=@"LVA" ;
            break;
        case  LEBANON:
            result=@"LBN" ;
            break;
        case  LESOTHO:
            result=@"LSO" ;
            break;
        case  LIECHTENSTEIN:
            result=@"LIE" ;
            break;
        case  LITHUANIA:
            result=@"LTU" ;
            break;
        case  LUXEMBOURG:
            result=@"LUX" ;
            break;
        case  MACAO:
            result=@"MAC" ;
            break;
        case  MALAWI:
            result=@"MWI" ;
            break;
        case  MALAYSIA:
            result=@"MYS" ;
            break;
        case  MALI:
            result=@"MLI" ;
            break;
        case  MARTINIQUE:
            result=@"MTQ" ;
            break;
        case  MAURITANIA:
            result=@"MRT" ;
            break;
        case  MAURITIUS:
            result=@"MUS" ;
            break;
        case  MAYOTTE:
            result=@"MYT" ;
            break;
        case  MEXICO:
            result=@"MEX" ;
            break;
        case  MONACO:
            result=@"MCO" ;
            break;
        case  MOROCCO:
            result=@"MAR" ;
            break;
        case  MOZAMBIQUE:
            result=@"MOZ" ;
            break;
        case  NAMIBIA:
            result=@"NAM" ;
            break;
        case  NETHERLANDS:
            result=@"NLD" ;
            break;
        case  NEW_ZEALAND:
            result=@"NZL" ;
            break;
        case  NICARAGUA:
            result=@"NIC" ;
            break;
        case  NIGER:
            result=@"NER" ;
            break;
        case  NIGERIA:
            result=@"NGA" ;
            break;
        case  NORTH_MARIANA_ISLANDS:
            result=@"USA" ;
            break;
        case  NORWAY:
            result=@"NOR" ;
            break;
        case  OMAN:
            result=@"OMN" ;
            break;
        case  PALAU:
            result=@"USA" ;
            break;
        case  PANAMA:
            result=@"PAN" ;
            break;
        case  PARAGUAY:
            result=@"PRY" ;
            break;
        case  PERU:
            result=@"PER" ;
            break;
        case  PHILIPPINES:
            result=@"PHL" ;
            break;
        case  POLAND:
            result=@"POL" ;
            break;
        case  PORTUGAL:
            result=@"PRT" ;
            break;
        case  PUERTO_RICO:
            result=@"USA" ;
            break;
        case  QATAR:
            result=@"QAT" ;
            break;
        case  REUNION:
            result=@"REU" ;
            break;
        case  ROMANIA:
            result=@"ROU" ;
            break;
        case  RUSSIAN_FEDERATION:
            result=@"RUS" ;
            break;
        case  RWANDA:
            result=@"RWA" ;
            break;
        case  SAINT_KITTS_AND_NEVIS:
            result=@"KNA" ;
            break;
        case  SAUDI_ARABIA:
            result=@"SAU" ;
            break;
        case  SENEGAL:
            result=@"SEN" ;
            break;
        case  SINGAPORE:
            result=@"SGP" ;
            break;
        case  SLOVAKIA:
            result=@"SVK" ;
            break;
        case  SLOVENIA:
            result=@"SVN" ;
            break;
        case  SOUTH_AFRICA:
            result=@"ZAF" ;
            break;
        case  SPAIN:
            result=@"ESP" ;
            break;
        case  SURINAME:
            result=@"SUR" ;
            break;
        case  SWAZILAND:
            result=@"SWZ" ;
            break;
        case  SWEDEN:
            result=@"SWE" ;
            break;
        case  SWITZERLAND:
            result=@"CHE" ;
            break;
        case  TAIWAN:
            result=@"TWN" ;
            break;
        case  UNITED_REPUBLIC_OF_TANZANIA:
            result=@"TZA" ;
            break;
        case  THAILAND:
            result=@"THA" ;
            break;
        case  TOGO:
            result=@"TGO" ;
            break;
        case  TRINIDAD_AND_TOBAGO:
            result=@"TTO" ;
            break;
        case  TUNISIA:
            result=@"TUN" ;
            break;
        case  TURKEY:
            result=@"TUR" ;
            break;
        case  UGANDA:
            result=@"UGA" ;
            break;
        case  UKRAINE:
            result=@"UKR" ;
            break;
        case  UNITED_ARAB_EMIRATES:
            result=@"ARE" ;
            break;
        case  UNITED_KINGDOM:
            result=@"GBR" ;
            break;
        case  UNITED_STATES:
            result=@"USA" ;
            break;
        case  URUGUAY:
            result=@"URY" ;
            break;
        case  VENEZUELA:
            result=@"VEN" ;
            break;
        case  VIRGIN_ISLANDS:
            result=@"USA" ;
            break;
        case  WORLD_GEOCODER:
            result=@"XWG" ;
            break;
        case  ZAMBIA:
            result=@"ZMB" ;
            break;
        case  ZIMBABWE:
            result=@"ZWE" ;
            break;
        default:
            result = @"unknown";
    }
    
    return result;
}


// In a source file
// initialize arrays with explicit indices to make sure
// the string match the enums properly
- (NSString *) enumBundelTypeToString:(BundleType) enumName {
    NSString *result = nil;
    
    switch(enumName) {
        case Premium:
            result = @"premium";
            break;
        case Basic:
            result = @"basic";
            break;
        default:
            result = @"unknown";
    }
    
    return result;
}



// In a source file
// initialize arrays with explicit indices to make sure
// the string match the enums properly
- (NSString *) enumOperationTypeToString:(OperationType) enumName {
    NSString *result = nil;
    
    switch(enumName) {
        case Geocode:
            result = @"Geocode";
            break;
        case ReverseGeocode:
            result = @"ReverseGeocode";
            break;
        default:
            result = @"unknown";
    }
    
    return result;
}


- (NSString *) enumGeocodeTypeToString:(GeocodeType) enumName {
    NSString *result = nil;
    
    switch(enumName) {
        case AddressLevel:
             result= @"ADDRESS";
            break;
        case Geographic:
             result= @"GEOGRAPHIC";
            break;
        case Postal:
             result= @"POSTAL";
            break;
        default:
            result = @"unknown";
    }
    
    return result;
}

- (NSString *) enumMatchModeToString:(MatchMode) enumName {
    NSString *result = nil;
    
    switch(enumName) {
        case Exact:
            result= @"Exact";
            break;
        case Standard:
            result= @"Standard";
            break;
        case Relaxed:
            result= @"Relaxed";
            break;
        case Custom:
            result= @"Custom";
            break;
        case Interactive:
            result= @"Interactive";
            break;
        case CASS:
            result= @"CASS";
            break;
        default:
            result = @"unknown";
    }
    
    return result;
}

- (NSString *) enumDistanceUnitsToString:(DistanceUnits) enumDistanceUnit {
    NSString *result = nil;
    
    switch(enumDistanceUnit) {
        case METERS:
            result= @"METERS";
            break;
        case FEET:
            result= @"FEET";
            break;
            default:
            result = @"unknown";
    }
    
    return result;
}


/**
 *  <#Description#>
 *
 *  @param country    <#country description#>
 *  @param bundleType <#bundleType description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getCapabilities:(BundleType)bundleName
                        :(void (^)(GeocodeCapabilitiesResponse *))success
                 failure:(void (^)(ErrorResponse *))failure
{
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/capabilities",bundleString];
        
        [self getCapabilityResponse:capabilityURL :success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}
/**
 *  <#Description#>
 *
 *  @param url
 *  @param methodName <#methodName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getCapabilityResponse:(NSString *)url :
(void (^)(GeocodeCapabilitiesResponse *dictionary))success failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        GeocodeCapabilitiesResponse *capabiities = [GeocodeCapabilitiesResponse modelObjectWithDictionary:id];
        success(capabiities);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
}



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
{

[self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
    
    NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
    
    NSString *bundleString= [self enumBundelTypeToString:bundleName];
    capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/capabilities?",bundleString];
    
    //Adding Country
    NSString *countryString= [self enumCountryToString:country];
    capabilityURL = [capabilityURL stringByAppendingString:@"country="];
    capabilityURL = [capabilityURL stringByAppendingFormat:@"%@",countryString];

    
    
    [self getCapabilityResponse:capabilityURL :success failure:failure];
    
} failure:^(ErrorResponse *error) {
    //Failure case
    NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
    failure(error);
    
}];

}


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
{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/capabilities?",bundleString];
        
        
        //Adding Country
        NSString *operationTypeString= [self enumOperationTypeToString:operation];
        capabilityURL = [capabilityURL stringByAppendingString:@"operation="];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@",operationTypeString];
        
       
        
        [self getCapabilityResponse:capabilityURL :success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


/**
 *  <#Description#>
 *
 *  @param operation  <#operation description#>
 *  @param country    <#country description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getCapabilities :(Countries) country
                        :(OperationType)operation
                        :(BundleType) bundleName
                        :(void (^)(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse))success
                failure : (void (^)( ErrorResponse *error))failure;
{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/capabilities?",bundleString];
        
        
        //Adding Country
        NSString *operationTypeString= [self enumOperationTypeToString:operation];
        capabilityURL = [capabilityURL stringByAppendingString:@"operation="];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@",operationTypeString];
        
        //Adding Country
        NSString *countryString= [self enumCountryToString:country];
        capabilityURL = [capabilityURL stringByAppendingString:@"&country="];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@",countryString];
        
        [self getCapabilityResponse:capabilityURL :success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

- (void)getGeocode:(AddressGeocode *) addressGeocode
                  :(BundleType) bundleName
                  : (GeocodeType) geocodeType
                  :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
           failure : (void (^)( ErrorResponse *error))failure

{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/geocode?",bundleString];
        
        GeocodeRequest *geocodeRequest=[[GeocodeRequest alloc] init];
        
        geocodeRequest.addressGeocode=[[NSArray arrayWithObject:addressGeocode] init];
        
        [self postGeocodingResponse:capabilityURL : [geocodeRequest dictionaryRepresentation] :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

/**
 *
 *
 *  @param points     <#points description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getGeocodeBatch :(NSArray*) addressesGeocode
                        :(BundleType) bundleName
                        :(GeocodeType) geocodeType
                        :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                failure : (void (^)( ErrorResponse *error))failure
{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/geocode?",bundleString];
        
        GeocodeRequest *geocodeRequest=[[GeocodeRequest alloc] init];
        
        geocodeRequest.addressGeocode=addressesGeocode;
        // Setting Geocode Type Name
        geocodeRequest.type= [self enumGeocodeTypeToString:geocodeType];
        
        [self postGeocodingResponse:capabilityURL : [geocodeRequest dictionaryRepresentation] :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

}

- (NSString *)boolValueToString:(BOOL)theBool {
    if (theBool == 0)
        return @"false";
    else
        return @"true";
}


/**
 *  <#Description#>
 *
 *  @param addresses         <#addresses description#>
 *  @param bundleName        <#bundleName description#>
 *  @param preferenceBuilder <#preferenceBuilder description#>
 *  @param success           <#success description#>
 *  @param failure           <#failure description#>
 */
- (void)getGeocodeAdvanceBatch :(NSArray*) addressesGeocode
                               :(BundleType) bundleName
                               :(GeocodeType) geocodeType
                               :(GeocodePreferenceBuilder *) preferenceBuilder
                               :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                       failure :(void (^)( ErrorResponse *error))failure
{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoCode  APIs");
        
        //Setting Bundle Name
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/geocode?",bundleString];
        
        
        
        // Setting Address List
        GeocodeRequest *geocodeRequest=[[GeocodeRequest alloc] init];
        geocodeRequest.addressGeocode=addressesGeocode;
        
        // Setting Geocode Type Name
        geocodeRequest.type= [self enumGeocodeTypeToString:geocodeType];
        
        if(preferenceBuilder!=nil)
        {
            
            //Assigning prefernce to Geocode Request
            geocodeRequest.preferences=[self getPreferenceFromGeocodePrefBuilder: preferenceBuilder];
        
        }
        
        
      
        
        
        [self postGeocodingResponse:capabilityURL : [geocodeRequest dictionaryRepresentation] :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode  and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

-(NSMutableDictionary *) autoDescribe:(id)instance :(NSString *)countryCode classType:(Class)classType
{
    unsigned int count;
    objc_property_t *propList = class_copyPropertyList(classType, &count);
    NSMutableDictionary *propPrint = [[NSMutableDictionary alloc] init];
   
    for ( int i = 0; i < count; i++ )
    {
        objc_property_t property = propList[i];
        
        const char *propName = property_getName(property);
        NSString *propNameString =[NSString stringWithCString:propName encoding:NSASCIIStringEncoding];
        
        if(propName && (![propNameString isEqualToString:@"description"] && ![propNameString isEqualToString:@"debugDescription"] && ![propNameString isEqualToString:@"superclass"] && ![propNameString isEqualToString:@"hash"] ))
        {
           
            @try {
                NSString * countryCodeWithProperty = [[NSString alloc]init];
                
                if (countryCode == nil) {
                    countryCodeWithProperty=[NSString stringWithFormat:@"%@",propNameString];
                }
                else
                {
                    countryCodeWithProperty=[NSString stringWithFormat:@"%@.%@",countryCode,propNameString];
                }
                
                
                id originalvalue = [instance valueForKey:propNameString];
                NSString *value=[[NSString alloc]init];

                
                if ([originalvalue isKindOfClass:[NSString class]]) {
                    value=(NSString *) originalvalue;
                    [ propPrint setValue:value forKey:countryCodeWithProperty];
                    
                }
                else if ([originalvalue isKindOfClass:[NSNumber class]])
                {
                 // value=(NSNumber *) valueType;
                    value=[self boolValueToString:[originalvalue boolValue]];
                    [ propPrint setValue:value forKey:countryCodeWithProperty];
                    
                }
                else
                {
                    NSNumber *numaricVal= [[NSNumber alloc]init];
                    numaricVal=originalvalue;
                    [propPrint setValue:numaricVal forKey:countryCodeWithProperty];
                    
                }
                    
             
              
               
            }
            @catch (NSException *exception) {
               ErrorResponse *erRes = [[ErrorResponse alloc] init];
                erRes.rootCauseErrorMessage=exception.description;
                @throw erRes;
       }
            
        }
    }
    free(propList);
    
    
    // Now see if we need to map any superclasses as well.
    Class superClass = class_getSuperclass( classType );
    if ( superClass != nil && ! [superClass isEqual:[NSObject class]] )
    {
        NSMutableDictionary *superString = [self autoDescribe:instance :countryCode classType:superClass];
        [propPrint addEntriesFromDictionary:superString];
        
       
    }
    
    return propPrint;
}

- (Preferences *) getPreferenceFromGeocodePrefBuilder :(GeocodePreferenceBuilder *)preferenceBuilder;
{
    NSMutableDictionary *property;
    //Setting objects to
    Preferences *preference = [[Preferences alloc]init];
    if (preferenceBuilder.geocodePreference!=nil) {
        preference.returnAllCandidateInfo =[self boolValueToString:preferenceBuilder.geocodePreference.returnAllCandidateInfo];
        preference.fallbackToGeographic = [self boolValueToString:preferenceBuilder.geocodePreference.fallbackToGeographic];
        preference.fallbackToPostal = [self boolValueToString:preferenceBuilder.geocodePreference.fallbackToPostal];
        preference.maxReturnedCandidates = preferenceBuilder.geocodePreference.maxReturnedCandidates;
        preference.distance = preferenceBuilder.geocodePreference.distance;
        preference.streetOffset = preferenceBuilder.geocodePreference.streetOffset;
        preference.cornerOffset = preferenceBuilder.geocodePreference.cornerOffset;
        preference.matchMode = [self enumMatchModeToString :preferenceBuilder.geocodePreference.matchMode ];
        preference.clientLocale = preferenceBuilder.geocodePreference.clientLocale;
        preference.clientCoordSysName = preferenceBuilder.geocodePreference.clientCoordSysName;
        preference.distanceUnits = [self enumDistanceUnitsToString: preferenceBuilder.geocodePreference.distanceUnits];
        preference.streetOffsetUnits = [self enumDistanceUnitsToString : preferenceBuilder.geocodePreference.streetOffsetUnits];
        preference.cornerOffsetUnits = [self enumDistanceUnitsToString :preferenceBuilder.geocodePreference.cornerOffsetUnits ];
        
    }
    
    
    if (preferenceBuilder.geocodePreference.mustMatchFields!=nil) {
        //Setting up Match Fields
        MustMatchFields *mustMatchFields = [[MustMatchFields alloc]init];
        mustMatchFields.matchOnInputFields= [ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnInputFields];
        mustMatchFields.matchOnPlaceName=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnPlaceName];
        mustMatchFields.matchOnPostCode1=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnPostCode1];
        mustMatchFields.matchOnStreetName=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnStreetName];
        mustMatchFields.matchOnAreaName3=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnAreaName3];
        mustMatchFields.matchOnAllStreetFields=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnAllStreetFields];
        mustMatchFields.matchOnStreetType=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnStreetType];
        mustMatchFields.matchOnAreaName1=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnAreaName1];
        mustMatchFields.matchOnPostCode2=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnPostCode2];
        mustMatchFields.matchOnAddressNumber=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnAddressNumber];
        mustMatchFields.matchOnAreaName4=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnAreaName4];
        mustMatchFields.matchOnStreetDirectional=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnStreetDirectional];
        mustMatchFields.matchOnAreaName2=[ self boolValueToString:preferenceBuilder.geocodePreference.mustMatchFields.matchOnAreaName2];
        preference.mustMatchFields=mustMatchFields;
    }
    
    if (preferenceBuilder.geocodeReturnFieldDescriptor!=nil) {
        ReturnFieldsDescriptor *returnFieldDescriptor= [[ReturnFieldsDescriptor alloc]init];
        returnFieldDescriptor.returnAllCustomFields= [self boolValueToString:preferenceBuilder.geocodeReturnFieldDescriptor.ReturnAllCustomFields];
        returnFieldDescriptor.returnMatchDescriptor= [self boolValueToString:preferenceBuilder.geocodeReturnFieldDescriptor.ReturnAllCustomFields];
        returnFieldDescriptor.returnStreetAddressFields= [self boolValueToString:preferenceBuilder.geocodeReturnFieldDescriptor.ReturnAllCustomFields];
        returnFieldDescriptor.returnUnitInformation= [self boolValueToString:preferenceBuilder.geocodeReturnFieldDescriptor.ReturnAllCustomFields];
        returnFieldDescriptor.returnedCustomFieldKeys=  preferenceBuilder.geocodeReturnFieldDescriptor.ReturnedCustomFieldKeys;
    }
    
    
    if (preferenceBuilder.customPreferences !=nil) {
        
        
        for(CustomPreference *customPreference in preferenceBuilder.customPreferences) {
            NSString *key=@"";
           
                   key=[customPreference valueForKey:@"country"];
                   property =[self autoDescribe :customPreference :key classType:[customPreference class]];
                
               
            }
        }
        
    preference.customPreferences =property;
    return preference;
}


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
                  failure : (void (^)( ErrorResponse *error))failure
{
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode  APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/reverseGeocode?",bundleString];
        
        ReverseGeocodeRequest *reverseGeocodeRequest=[[ReverseGeocodeRequest alloc] init];
        reverseGeocodeRequest.points=[[NSArray arrayWithObject:points] init];
        
        
        [self postGeocodingResponse:capabilityURL : [reverseGeocodeRequest dictionaryRepresentation] :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode  and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

}

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
{
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/reverseGeocode?",bundleString];
        
        ReverseGeocodeRequest *reverseGeocodeRequest=[[ReverseGeocodeRequest alloc] init];
        
        reverseGeocodeRequest.points=points;
        
        [self postGeocodingResponse:capabilityURL : [reverseGeocodeRequest dictionaryRepresentation] :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

}

/**
 *
 *
 *  @param points     <#points description#>
 *  @param bundleName <#bundleName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void)getReverseGeocodeAdvanceBatch :(NSArray *) points
                               :(BundleType) bundleName
                               :(GeocodePreferenceBuilder *) preferenceBuilder
                               :(void (^)(GeocodeResponse *geocodeCapabilitiesResponse))success
                       failure : (void (^)( ErrorResponse *error))failure;
{
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geocode method call APIs");
        
        NSString *bundleString= [self enumBundelTypeToString:bundleName];
        capabilityURL = [capabilityURL stringByAppendingFormat:@"%@/reverseGeocode?",bundleString];
        
        ReverseGeocodeRequest *reverseGeocodeRequest=[[ReverseGeocodeRequest alloc] init];
        
        reverseGeocodeRequest.points=points;
        
        [self postGeocodingResponse:capabilityURL : [reverseGeocodeRequest dictionaryRepresentation] :success failure:failure];
        
        if(preferenceBuilder!=nil)
        {
            
            //Assigning prefernce to Geocode Request
          reverseGeocodeRequest.preferences=[self getPreferenceFromGeocodePrefBuilder: preferenceBuilder];
            
        }
        
        
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        NSLog(@"It failure in Geocode method call and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

- (void) postGeocodingResponse:(NSString *)url
                              :(id) newparams
                              :(void (^)(GeocodeResponse  *geocodingResponse))success
                      failure :(void (^)( ErrorResponse *error))failure{
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    [ ns PostRestServiceWithPayLoad: urlString: newparams:self:^(id id) {
        
        GeocodeResponse *geocodeResponse = [GeocodeResponse modelObjectWithDictionary:id];
        success(geocodeResponse);
        
    } failure:^(ErrorResponse *error) {
        NSLog(@"getAuthenticationToken - its failure %@",error.rootCauseErrorMessage);
        failure(error);
    }];
    
}



@end
