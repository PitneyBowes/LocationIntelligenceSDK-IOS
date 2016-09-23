//
//  LocationIntelligenceSDK.h
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

#import <UIKit/UIKit.h>

//! Project version number for LocationIntelligenceSDK.
FOUNDATION_EXPORT double LocationIntelligenceSDKVersionNumber;

//! Project version string for LocationIntelligenceSDK.
FOUNDATION_EXPORT const unsigned char LocationIntelligenceSDKVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <LocationIntelligenceSDK/PublicHeader.h>

//Authentication
#import <LocationIntelligenceSDK/AuthToken.h>
#import <LocationIntelligenceSDK/BaseAuthServiceInternal.h>
#import <LocationIntelligenceSDK/OAuthFactory.h>
#import <LocationIntelligenceSDK/OAuthService.h>

//Common Object
#import <LocationIntelligenceSDK/NeighbourhoodName.h>
#import <LocationIntelligenceSDK/ContactDetails.h>
#import <LocationIntelligenceSDK/Match.h>
#import <LocationIntelligenceSDK/Address.h>
#import <LocationIntelligenceSDK/Distance.h>
#import <LocationIntelligenceSDK/Poi.h>
#import <LocationIntelligenceSDK/Geometry.h>
#import <LocationIntelligenceSDK/Location.h>
#import <LocationIntelligenceSDK/PlaceByLocationResponse.h>

//Error Framework
#import <LocationIntelligenceSDK/Error.h>
#import <LocationIntelligenceSDK/ErrorResponse.h>
#import <LocationIntelligenceSDK/Errors.h>
#import <LocationIntelligenceSDK/LiErrorResponse.h>

//Geo911
#import <LocationIntelligenceSDK/ContactPerson.h>
#import <LocationIntelligenceSDK/County.h>
#import <LocationIntelligenceSDK/Coverage.h>
#import <LocationIntelligenceSDK/PsapResponse.h>
#import <LocationIntelligenceSDK/Geo911Service.h>
#import <LocationIntelligenceSDK/SiteDetails.h>
#import <LocationIntelligenceSDK/AHJPlusPSAPResponse.h>
#import <LocationIntelligenceSDK/Ahjs.h>

//GeoLife
#import <LocationIntelligenceSDK/AgeTheme.h>
#import <LocationIntelligenceSDK/AutomobileTheme.h>
#import <LocationIntelligenceSDK/GenderTheme.h>
#import <LocationIntelligenceSDK/AttitudesAndMotivationTheme.h>
#import <LocationIntelligenceSDK/ChannelPreferencesTheme.h>
#import <LocationIntelligenceSDK/CommuterPatternsTheme.h>
#import <LocationIntelligenceSDK/EducationalAttainmentTheme.h>
#import <LocationIntelligenceSDK/EthnicityTheme.h>
#import <LocationIntelligenceSDK/FinancialProductsTheme.h>
#import <LocationIntelligenceSDK/HouseholdSizeTheme.h>
#import <LocationIntelligenceSDK/IncomeTheme.h>
#import <LocationIntelligenceSDK/MaritalStatusTheme.h>
#import <LocationIntelligenceSDK/PurchasingBehaviorTheme.h>
#import <LocationIntelligenceSDK/RaceTheme.h>
#import <LocationIntelligenceSDK/Boundaries.h>
#import <LocationIntelligenceSDK/Boundary.h>
#import <LocationIntelligenceSDK/Field.h>
#import <LocationIntelligenceSDK/GeoLifeService.h>
#import <LocationIntelligenceSDK/IndividualValueVariable.h>
#import <LocationIntelligenceSDK/RangeVariable.h>
#import <LocationIntelligenceSDK/Themes.h>
#import <LocationIntelligenceSDK/Theme.h>

//GeoEnahce
#import <LocationIntelligenceSDK/Timezone.h>
#import <LocationIntelligenceSDK/ContactDetails.h>
#import <LocationIntelligenceSDK/GeoEnhance.h>
#import <LocationIntelligenceSDK/GeoEnhanceService.h>


//GeoSearch
#import <LocationIntelligenceSDK/GeoSearchLocation.h>
#import <LocationIntelligenceSDK/GeoSearch.h>
#import <LocationIntelligenceSDK/GeoSearchService.h>

//Geotax
#import <LocationIntelligenceSDK/Mcd.h>
#import <LocationIntelligenceSDK/Cbsa.h>
#import <LocationIntelligenceSDK/LatLongFields.h>
#import <LocationIntelligenceSDK/Census.h>
#import <LocationIntelligenceSDK/TaxResponses.h>
#import  <LocationIntelligenceSDK/TaxResponseList.h>
#import <LocationIntelligenceSDK/GeoTaxCounty.h>
#import <LocationIntelligenceSDK/GeoTax.h>
#import <LocationIntelligenceSDK/Jurisdiction.h>
#import <LocationIntelligenceSDK/GeoTaxPlace.h>
#import <LocationIntelligenceSDK/SalesTax.h>
#import <LocationIntelligenceSDK/Spds.h>
#import <LocationIntelligenceSDK/SpdsTax.h>
#import <LocationIntelligenceSDK/State.h>
#import <LocationIntelligenceSDK/UseTax.h>
#import  <LocationIntelligenceSDK/RateLocations.h>
#import  <LocationIntelligenceSDK/TaxLocation.h>
#import  <LocationIntelligenceSDK/TaxRateLocationRequest.h>
#import  <LocationIntelligenceSDK/TaxLocationRequest.h>
#import  <LocationIntelligenceSDK/TaxRateAddresses.h>
#import  <LocationIntelligenceSDK/TaxAddressRequest.h>
#import  <LocationIntelligenceSDK/TaxRateAddressRequest.h>
#import  <LocationIntelligenceSDK/TaxAddresses.h>
#import <LocationIntelligenceSDK/GeoTaxService.h>






//Segmentation
#import <LocationIntelligenceSDK/LifeStyleTheme.h>
#import <LocationIntelligenceSDK/Segmentation.h>
#import <LocationIntelligenceSDK/SegmentationThemes.h>
#import <LocationIntelligenceSDK/Variable.h>


//GeoCode
#import <LocationIntelligenceSDK/ICustomPreference.h>
#import <LocationIntelligenceSDK/CustomPreference.h>
#import <LocationIntelligenceSDK/CustomPreferenceUSA.h>
#import <LocationIntelligenceSDK/CustomPreferenceAUS.h>
#import <LocationIntelligenceSDK/CustomPreferencePRT.h>
#import <LocationIntelligenceSDK/CustomPreferenceCAN.h>
#import <LocationIntelligenceSDK/CustomPreferenceDUE.h>
#import <LocationIntelligenceSDK/CustomPreferenceFRA.h>
#import <LocationIntelligenceSDK/CustomPreferenceGBR.h>
#import <LocationIntelligenceSDK/CustomPreferenceNZL.h>
#import <LocationIntelligenceSDK/CustomPreferenceSGP.h>
#import <LocationIntelligenceSDK/CustomPreferenceSWE.h>
#import <LocationIntelligenceSDK/MatchFields.h>
#import <LocationIntelligenceSDK/GeocodePreference.h>
#import <LocationIntelligenceSDK/GeocodePreferenceBuilder.h>
#import <LocationIntelligenceSDK/GeocodeReturnFieldDescriptor.h>
#import <LocationIntelligenceSDK/SupportLevels.h>
#import <LocationIntelligenceSDK/Units.h>




//Capabilities
#import <LocationIntelligenceSDK/AddressGeocode.h>
#import <LocationIntelligenceSDK/GeocodeCapabilitiesResponse.h>
#import <LocationIntelligenceSDK/Points.h>
#import <LocationIntelligenceSDK/AllowedValuesWithDescriptions.h>
 #import <LocationIntelligenceSDK/CustomObjects.h>
 #import <LocationIntelligenceSDK/Input.h>
 #import <LocationIntelligenceSDK/OptionalInputs.h>
 #import <LocationIntelligenceSDK/CapabilityProperties.h>
 #import <LocationIntelligenceSDK/CustomValues.h>
#import <LocationIntelligenceSDK/Dictionaries.h>
//Dictionary
#import<LocationIntelligenceSDK/GeocodeService.h>
#import<LocationIntelligenceSDK/CountrySupportInfos.h>
#import<LocationIntelligenceSDK/ConfiguredDictionaryResponse.h>


//ForwardGeocode

    //Request
#import<LocationIntelligenceSDK/GeocodeRequest.h>
#import<LocationIntelligenceSDK/GeocodePreference.h>
#import<LocationIntelligenceSDK/CustomPreferences.h>
#import<LocationIntelligenceSDK/MustMatchFields.h>
#import<LocationIntelligenceSDK/Preferences.h>
#import<LocationIntelligenceSDK/ReturnFieldsDescriptor.h>
#import<LocationIntelligenceSDK/GeocodeGeometry.h>
#import<LocationIntelligenceSDK/Ranges.h>
#import<LocationIntelligenceSDK/Responses.h>
#import<LocationIntelligenceSDK/Outputs.h>
#import<LocationIntelligenceSDK/Output.h>
#import<LocationIntelligenceSDK/UpdatedOptionalOutputs.h>
#import<LocationIntelligenceSDK/SupportedOperations.h>
#import<LocationIntelligenceSDK/RequiredInputs.h>


//Response
#import<LocationIntelligenceSDK/Crs.h>
#import<LocationIntelligenceSDK/CustomFields.h>
#import<LocationIntelligenceSDK/GeocodeAddress.h>
#import<LocationIntelligenceSDK/GeocodeAddress.h>
#import<LocationIntelligenceSDK/GeocodeResponse.h>
#import<LocationIntelligenceSDK/GeocodeProperties.h>
#import<LocationIntelligenceSDK/Candidates.h>


//Reverse Geocode
#import<LocationIntelligenceSDK/ReverseGeocodeRequest.h>
#import<LocationIntelligenceSDK/Points.h>


//GeoComm Service

#import <LocationIntelligenceSDK/AreaCodeInfoList.h>
#import <LocationIntelligenceSDK/RateCenterResponse.h>
#import <LocationIntelligenceSDK/GeoCommService.h>


//LI
#import <LocationIntelligenceSDK/LIServiceManager.h>
