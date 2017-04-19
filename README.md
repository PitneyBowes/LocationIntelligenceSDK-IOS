![Pitney Bowes](/PitneyBowes_Logo.jpg)

# Pitney Bowes Location Intelligence API

### Description
[Location Intelligence APIs ](http://developer.pitneybowes.com/en/location-intelligence.html) help you to Incorporate Pitney Bowes extensive geodata into everyday applications, business processes, and workflows. Use our SDKs to get started quickly and easily integrate API calls in your applications.

### Location Intelligence APIs:
* [GeoEnhance](https://locate.pitneybowes.com/geoenhance ) : Returns addresses, place names, points-of-interest and timezones with the input of a location coordinate. Useful for enhancing & enriching your geo-tagged data.

* [GeoLife](https://locate.pitneybowes.com/geolife) : Returns household demographics and lifestyle characteristics with the input of an address or location coordinate. Useful for data analysts and commercial and corporate developers building mobile apps and services.

* [GeoSearch](https://locate.pitneybowes.com/geosearch): Returns an autocompleted list of addresses and places based on the input of a partial address. Useful for commercial developers and content providers, or anyone wanting to offer their own search.

* [GeoComm](https://locate.pitneybowes.com/geocomm): Identifies Local Exchange Carrier presence with a Rate Center area. The GeoComm API retrieves Incumbent Local Exchange Carrier (ILEC) doing-business-as names with the input of an address. Useful for local telecommunications competitive intelligence, partnerships, and provisioning subscribers.

* [Geo911](https://locate.pitneybowes.com/geo911): Integrates Public Safety Answering Point (PSAP) administrative call routing information plus Authority Having Jurisdiction (AHJ) phone numbers into your 911 products and services. The Geo911 API retrieves 10-digit phone numbers and local contact info with the input of a location coordinate. Useful for emergency services administrators, call handlers, and dispatchers.

* [GeoTax](https://locate.pitneybowes.com/geotax): Returns local tax rates with the input of a location coordinate or an address. Critical for any billing, commerce, payment, or payroll application or service.

* [GeoCode](https://locate.pitneybowes.com/geocode): Converts addresses to location coordinates and vice versa. The GeoCode API returns latitude & longitude coordinates with the input of an address and vice versa. Useful for enhancing & enriching your customer addresses.

* [GeoMap](https://locate.pitneybowes.com/geomap): Adds data and more atop Maps. Choose from three map styles - Iron, Bronze, and Steel.

* [GeoZone](https://locate.pitneybowes.com/geozone): Returns drive Distance and Drive Time Zones with the input of Location Coordinates or Addresses. Useful for anyone wanting to create smarter geofence zones for Local Engagement and Analysis.

* [GeoRoute](https://locate.pitneybowes.com/georoute): Returns Point-to-Point and Multi-Point Travel Directions by Various Travel Modes. Critical for any Simple or Complex Routing Requirement.

* [GeoRisk](https://locate.pitneybowes.com/georisk): Returns critical risk intelligence with the input of Location Coordinates or Addresses. Critical for any Risk Mitigation Analyses involving threats to lives or property.

The following platforms are supported by Location Intelligence SDKs:
*	[Android](https://github.com/PitneyBowes/LocationIntelligenceSDK-Android)
*	[JavaScript](https://github.com/PitneyBowes/LocationIntelligenceSDK-javascript) 
*	[iOS](https://github.com/PitneyBowes/LocationIntelligenceSDK-IOS)
*	[Java](https://github.com/PitneyBowes/LocationIntelligenceSDK-Java)
*	[C#](https://github.com/PitneyBowes/LocationIntelligenceSDK-CSharp)  

[Click here](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html) for detailed Documentation on Location Intelligence APIs 


# Location Intelligence iOS SDK
### Description
Location Intelligence iOS SDK facilitates you to build iOS applications using Location Intelligence APIs.
### Getting Started
To get started with iOS SDK, you must first register at [Location Intelligence API Home Page](http://developer.pitneybowes.com/en/location-intelligence.html) and obtain your API Key and Secret to get started with the iOS SDK and call Location Intelligence APIs.
For more information refer to [‘Getting Started with iOS SDK’](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#iOS%20SDK/ios_intro.html) section in documentation.

### LocationIntelligenceSDK-iOS uses the following software
* Afnetworking, version number 2.5.0 which is licensed under MIT license.  The license can be downloaded from http://opensource.org/licenses/mit-license.  The source code for this software is available from http://afnetworking.com/.

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SwaggerClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/LocationIntelligenceIOSSDK) and then add the following to the Podfile:

```ruby
pod 'LocationIntelligenceIOSSDK', :path => 'Vendor/LocationIntelligenceIOSSDK'
```

### Usage

Import the following:

```objc
#import  <LocationIntelligenceIOSSDK/PBApiClient.h>
#import  <LocationIntelligenceIOSSDK/PBConfiguration.h>
// load models
#import  <LocationIntelligenceIOSSDK/PBAHJ.h>
#import  <LocationIntelligenceIOSSDK/PBAHJList.h>
#import  <LocationIntelligenceIOSSDK/PBAHJPlusPSAPResponse.h>
#import  <LocationIntelligenceIOSSDK/PBAddress.h>
#import  <LocationIntelligenceIOSSDK/PBAgeTheme.h>
#import  <LocationIntelligenceIOSSDK/PBAreaCodeInfo.h>
#import  <LocationIntelligenceIOSSDK/PBAttitudesAndMotivationTheme.h>
#import  <LocationIntelligenceIOSSDK/PBAutomobileTheme.h>
#import  <LocationIntelligenceIOSSDK/PBBaseFloodElevation.h>
#import  <LocationIntelligenceIOSSDK/PBBoundaries.h>
#import  <LocationIntelligenceIOSSDK/PBBoundary.h>
#import  <LocationIntelligenceIOSSDK/PBCandidate.h>
#import  <LocationIntelligenceIOSSDK/PBCandidateRange.h>
#import  <LocationIntelligenceIOSSDK/PBCandidateRangeUnit.h>
#import  <LocationIntelligenceIOSSDK/PBCbsa.h>
#import  <LocationIntelligenceIOSSDK/PBCensus.h>
#import  <LocationIntelligenceIOSSDK/PBChannelPreferencesTheme.h>
#import  <LocationIntelligenceIOSSDK/PBCommunity.h>
#import  <LocationIntelligenceIOSSDK/PBCommuterPatternsTheme.h>
#import  <LocationIntelligenceIOSSDK/PBConfiguredDictionaryResponse.h>
#import  <LocationIntelligenceIOSSDK/PBContactDetails.h>
#import  <LocationIntelligenceIOSSDK/PBContactPerson.h>
#import  <LocationIntelligenceIOSSDK/PBCost.h>
#import  <LocationIntelligenceIOSSDK/PBCosts.h>
#import  <LocationIntelligenceIOSSDK/PBCountrySupport.h>
#import  <LocationIntelligenceIOSSDK/PBCounty.h>
#import  <LocationIntelligenceIOSSDK/PBCoverage.h>
#import  <LocationIntelligenceIOSSDK/PBCrimeBoundary.h>
#import  <LocationIntelligenceIOSSDK/PBCrimeIndexTheme.h>
#import  <LocationIntelligenceIOSSDK/PBCrimeRiskResponse.h>
#import  <LocationIntelligenceIOSSDK/PBCrs.h>
#import  <LocationIntelligenceIOSSDK/PBCustomObject.h>
#import  <LocationIntelligenceIOSSDK/PBCustomObjectMember.h>
#import  <LocationIntelligenceIOSSDK/PBDemographics.h>
#import  <LocationIntelligenceIOSSDK/PBDemographicsThemes.h>
#import  <LocationIntelligenceIOSSDK/PBDictionary.h>
#import  <LocationIntelligenceIOSSDK/PBDirectionGeometry.h>
#import  <LocationIntelligenceIOSSDK/PBDistance.h>
#import  <LocationIntelligenceIOSSDK/PBEarthquakeRiskResponse.h>
#import  <LocationIntelligenceIOSSDK/PBEducationalAttainmentTheme.h>
#import  <LocationIntelligenceIOSSDK/PBEthnicityTheme.h>
#import  <LocationIntelligenceIOSSDK/PBEventsCount.h>
#import  <LocationIntelligenceIOSSDK/PBField.h>
#import  <LocationIntelligenceIOSSDK/PBFieldsMatching.h>
#import  <LocationIntelligenceIOSSDK/PBFinancialProductsTheme.h>
#import  <LocationIntelligenceIOSSDK/PBFireDepartment.h>
#import  <LocationIntelligenceIOSSDK/PBFireRiskResponse.h>
#import  <LocationIntelligenceIOSSDK/PBFireShed.h>
#import  <LocationIntelligenceIOSSDK/PBFireStation.h>
#import  <LocationIntelligenceIOSSDK/PBFireStations.h>
#import  <LocationIntelligenceIOSSDK/PBFloodBoundary.h>
#import  <LocationIntelligenceIOSSDK/PBFloodRiskResponse.h>
#import  <LocationIntelligenceIOSSDK/PBFloodZone.h>
#import  <LocationIntelligenceIOSSDK/PBGenderTheme.h>
#import  <LocationIntelligenceIOSSDK/PBGeoPos.h>
#import  <LocationIntelligenceIOSSDK/PBGeoRiskBoundaries.h>
#import  <LocationIntelligenceIOSSDK/PBGeoRiskCrimeTheme.h>
#import  <LocationIntelligenceIOSSDK/PBGeoRouteResponse.h>
#import  <LocationIntelligenceIOSSDK/PBGeoTaxLocations.h>
#import  <LocationIntelligenceIOSSDK/PBGeocodeAddress.h>
#import  <LocationIntelligenceIOSSDK/PBGeocodeCapabilitiesResponse.h>
#import  <LocationIntelligenceIOSSDK/PBGeocodeRequest.h>
#import  <LocationIntelligenceIOSSDK/PBGeocodeServiceResponse.h>
#import  <LocationIntelligenceIOSSDK/PBGeocodeServiceResponseList.h>
#import  <LocationIntelligenceIOSSDK/PBGeometry.h>
#import  <LocationIntelligenceIOSSDK/PBGeometryPolygon.h>
#import  <LocationIntelligenceIOSSDK/PBGrid.h>
#import  <LocationIntelligenceIOSSDK/PBHouseholdSizeTheme.h>
#import  <LocationIntelligenceIOSSDK/PBIncomeTheme.h>
#import  <LocationIntelligenceIOSSDK/PBIndexVariable.h>
#import  <LocationIntelligenceIOSSDK/PBIndividualValueVariable.h>
#import  <LocationIntelligenceIOSSDK/PBInputParameter.h>
#import  <LocationIntelligenceIOSSDK/PBLatLongFields.h>
#import  <LocationIntelligenceIOSSDK/PBLifeStyleTheme.h>
#import  <LocationIntelligenceIOSSDK/PBLocation.h>
#import  <LocationIntelligenceIOSSDK/PBLocations.h>
#import  <LocationIntelligenceIOSSDK/PBMaritalStatusTheme.h>
#import  <LocationIntelligenceIOSSDK/PBMatch.h>
#import  <LocationIntelligenceIOSSDK/PBMcd.h>
#import  <LocationIntelligenceIOSSDK/PBName.h>
#import  <LocationIntelligenceIOSSDK/PBOperation.h>
#import  <LocationIntelligenceIOSSDK/PBOutputParameter.h>
#import  <LocationIntelligenceIOSSDK/PBPSAPResponse.h>
#import  <LocationIntelligenceIOSSDK/PBPlace.h>
#import  <LocationIntelligenceIOSSDK/PBPlaceByLocations.h>
#import  <LocationIntelligenceIOSSDK/PBPlaceByLocationsLocation.h>
#import  <LocationIntelligenceIOSSDK/PBPlaceLocation.h>
#import  <LocationIntelligenceIOSSDK/PBPlaceLocationName.h>
#import  <LocationIntelligenceIOSSDK/PBPoi.h>
#import  <LocationIntelligenceIOSSDK/PBPoint.h>
#import  <LocationIntelligenceIOSSDK/PBPoints.h>
#import  <LocationIntelligenceIOSSDK/PBPolygon.h>
#import  <LocationIntelligenceIOSSDK/PBPreferences.h>
#import  <LocationIntelligenceIOSSDK/PBPrimaryZone.h>
#import  <LocationIntelligenceIOSSDK/PBProperties.h>
#import  <LocationIntelligenceIOSSDK/PBPurchasingBehaviorTheme.h>
#import  <LocationIntelligenceIOSSDK/PBRaceTheme.h>
#import  <LocationIntelligenceIOSSDK/PBRangeVariable.h>
#import  <LocationIntelligenceIOSSDK/PBRateCenterResponse.h>
#import  <LocationIntelligenceIOSSDK/PBReturnFieldsDescriptor.h>
#import  <LocationIntelligenceIOSSDK/PBReverseGeocodeRequest.h>
#import  <LocationIntelligenceIOSSDK/PBRisk.h>
#import  <LocationIntelligenceIOSSDK/PBRouteDirection.h>
#import  <LocationIntelligenceIOSSDK/PBRouteDirections.h>
#import  <LocationIntelligenceIOSSDK/PBRouteGeometry.h>
#import  <LocationIntelligenceIOSSDK/PBSalesTax.h>
#import  <LocationIntelligenceIOSSDK/PBSegmentation.h>
#import  <LocationIntelligenceIOSSDK/PBSegmentationThemes.h>
#import  <LocationIntelligenceIOSSDK/PBSiteDetails.h>
#import  <LocationIntelligenceIOSSDK/PBSpecialPurposeDistrict.h>
#import  <LocationIntelligenceIOSSDK/PBSpecialPurposeDistrictTax.h>
#import  <LocationIntelligenceIOSSDK/PBState.h>
#import  <LocationIntelligenceIOSSDK/PBStatus.h>
#import  <LocationIntelligenceIOSSDK/PBSupportLevel.h>
#import  <LocationIntelligenceIOSSDK/PBTaxAddress.h>
#import  <LocationIntelligenceIOSSDK/PBTaxAddressRequest.h>
#import  <LocationIntelligenceIOSSDK/PBTaxJurisdiction.h>
#import  <LocationIntelligenceIOSSDK/PBTaxLocationRequest.h>
#import  <LocationIntelligenceIOSSDK/PBTaxRateAddress.h>
#import  <LocationIntelligenceIOSSDK/PBTaxRateAddressRequest.h>
#import  <LocationIntelligenceIOSSDK/PBTaxRateLocationRequest.h>
#import  <LocationIntelligenceIOSSDK/PBTaxResponse.h>
#import  <LocationIntelligenceIOSSDK/PBTaxResponses.h>
#import  <LocationIntelligenceIOSSDK/PBTime.h>
#import  <LocationIntelligenceIOSSDK/PBTimezone.h>
#import  <LocationIntelligenceIOSSDK/PBTravelBoundaries.h>
#import  <LocationIntelligenceIOSSDK/PBTravelBoundary.h>
#import  <LocationIntelligenceIOSSDK/PBTravelCostMatrixResponse.h>
#import  <LocationIntelligenceIOSSDK/PBTravelCostMatrixResponseEndPoint.h>
#import  <LocationIntelligenceIOSSDK/PBTravelCostMatrixResponseEndPointCrs.h>
#import  <LocationIntelligenceIOSSDK/PBTravelCostMatrixResponseEndPointCrsProperties.h>
#import  <LocationIntelligenceIOSSDK/PBTravelCostMatrixResponseMatrix.h>
#import  <LocationIntelligenceIOSSDK/PBUseTax.h>
// load API classes for accessing endpoints
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoCommServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoEnhanceServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoLifeServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoRiskServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoRouteServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoSearchServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoTaxServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeoZoneServiceApi.h>
#import  <LocationIntelligenceIOSSDK/PBLIAPIGeocodeServiceApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issue.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* *address = @"address_example"; // The address to be searched.
NSString* *country = @"USA"; // 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional) (default to USA)
NSString* *areaCodeInfo = @"False"; // Specifies whether area code information will be part of response.Allowed values True,False (optional) (default to False)
NSString* *level = @"basic"; // Level (basic/detail).Allowed values detail,basic. (optional) (default to basic)

PBLIAPIGeoCommServiceApi *apiInstance = [[PBLIAPIGeoCommServiceApi alloc] init];

// Rate Center By Address.
[apiInstance getRateCenterByAddressWithAddress:address
    country:country
    areaCodeInfo:areaCodeInfo
    level:level
              completionHandler: ^(PBRateCenterResponse* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PBLIAPIGeoCommServiceApi* | [**getRateCenterByAddress**](docs/SWGLIAPIGeoCommServiceApi.md#getratecenterbyaddress) | **GET** /geocomm/v1/ratecenter/byaddress | Rate Center By Address.
*PBLIAPIGeoCommServiceApi* | [**getRateCenterByLocation**](docs/SWGLIAPIGeoCommServiceApi.md#getratecenterbylocation) | **GET** /geocomm/v1/ratecenter/bylocation | Rate Center By Location.
*PBLIAPIGeoEnhanceServiceApi* | [**getAddress**](docs/SWGLIAPIGeoEnhanceServiceApi.md#getaddress) | **GET** /geoenhance/v1/address/bylocation | Address By Location.
*PBLIAPIGeoEnhanceServiceApi* | [**getEntityByLocation**](docs/SWGLIAPIGeoEnhanceServiceApi.md#getentitybylocation) | **GET** /geoenhance/v1/poi/bylocation | Points Of Interest By Location.
*PBLIAPIGeoEnhanceServiceApi* | [**getPlaceByLocation**](docs/SWGLIAPIGeoEnhanceServiceApi.md#getplacebylocation) | **GET** /geoenhance/v1/place/bylocation | Place By Location.
*PBLIAPIGeoEnhanceServiceApi* | [**getTimezoneByLocation**](docs/SWGLIAPIGeoEnhanceServiceApi.md#gettimezonebylocation) | **GET** /geoenhance/v1/timezone/bylocation | Timezone By Location.
*PBLIAPIGeoLifeServiceApi* | [**getDemographicsByAddress**](docs/SWGLIAPIGeoLifeServiceApi.md#getdemographicsbyaddress) | **GET** /geolife/v1/demographics/byaddress | Demographics By Address.
*PBLIAPIGeoLifeServiceApi* | [**getDemographicsByLocation**](docs/SWGLIAPIGeoLifeServiceApi.md#getdemographicsbylocation) | **GET** /geolife/v1/demographics/bylocation | Demographics By Location.
*PBLIAPIGeoLifeServiceApi* | [**getSegmentationByAddress**](docs/SWGLIAPIGeoLifeServiceApi.md#getsegmentationbyaddress) | **GET** /geolife/v1/segmentation/byaddress | Segmentation By Address.
*PBLIAPIGeoLifeServiceApi* | [**getSegmentationByLocation**](docs/SWGLIAPIGeoLifeServiceApi.md#getsegmentationbylocation) | **GET** /geolife/v1/segmentation/bylocation | Segmentation By Location.
*PBLIAPIGeoRiskServiceApi* | [**getCrimeRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddress) | **GET** /georisk/v1/crime/byaddress | Gets CrimeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getCrimeRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getcrimeriskbylocation) | **GET** /georisk/v1/crime/bylocation | Gets CrimeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddress) | **GET** /georisk/v1/earthquake/byaddress | Gets EarthquakeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocation) | **GET** /georisk/v1/earthquake/bylocation | Gets EarthquakeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getfireriskbyaddress) | **GET** /georisk/v1/fire/byaddress | Gets FireRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getfireriskbylocation) | **GET** /georisk/v1/fire/bylocation | Gets FireRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireStationByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getfirestationbyaddress) | **GET** /georisk/v1/firestation/byaddress | Gets FireStationResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireStationByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getfirestationbylocation) | **GET** /georisk/v1/firestation/bylocation | Gets FireStationResponse
*PBLIAPIGeoRiskServiceApi* | [**getFloodRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getfloodriskbyaddress) | **GET** /georisk/v1/flood/byaddress | Gets FloodRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFloodRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getfloodriskbylocation) | **GET** /georisk/v1/flood/bylocation | Gets FloodRiskResponse
*PBLIAPIGeoRouteServiceApi* | [**getRouteByAddress**](docs/SWGLIAPIGeoRouteServiceApi.md#getroutebyaddress) | **GET** /georoute/v1/route/byaddress | Gets Route by Address
*PBLIAPIGeoRouteServiceApi* | [**getRouteByLocation**](docs/SWGLIAPIGeoRouteServiceApi.md#getroutebylocation) | **GET** /georoute/v1/route/bylocation | Gets Route by Location
*PBLIAPIGeoRouteServiceApi* | [**getTravelCostMatrixByAddress**](docs/SWGLIAPIGeoRouteServiceApi.md#gettravelcostmatrixbyaddress) | **GET** /georoute/v1/travelcostmatrix/byaddress | Gets Cost Matrix by Address
*PBLIAPIGeoRouteServiceApi* | [**getTravelCostMatrixByLocation**](docs/SWGLIAPIGeoRouteServiceApi.md#gettravelcostmatrixbylocation) | **GET** /georoute/v1/travelcostmatrix/bylocation | Gets Cost Matrix by Location
*PBLIAPIGeoSearchServiceApi* | [**geoSearch**](docs/SWGLIAPIGeoSearchServiceApi.md#geosearch) | **GET** /geosearch/v1/locations | Gets LocationList
*PBLIAPIGeoServiceApi* | [**getAHJPlusPSASWGyAddress**](docs/PBLIAPIGeoServiceApi.md#getahjpluspsapbyaddress) | **GET** /geo911/v1/ahj-psap/byaddress | AHJ &amp; PSAP By Address.
*SWGLIAPIGeoServiceApi* | [**getAHJPlusPSAPByLocation**](docs/SWGLIAPIGeoServiceApi.md#getahjpluspsapbylocation) | **GET** /geo911/v1/ahj-psap/bylocation | AHJ &amp; PSAP By Location
*PBLIAPIGeoServiceApi* | [**getPSASWGyAddress**](docs/PBLIAPIGeoServiceApi.md#getpsapbyaddress) | **GET** /geo911/v1/psap/byaddress | PSAP By Address.
*SWGLIAPIGeoServiceApi* | [**getPSAPByLocation**](docs/SWGLIAPIGeoServiceApi.md#getpsapbylocation) | **GET** /geo911/v1/psap/bylocation | PSAP By Location.
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxbyaddress) | **POST** /geotax/v1/tax/{taxRateTypeId}/byaddress | Post Tax By Address
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxbylocation) | **POST** /geotax/v1/tax/{taxRateTypeId}/bylocation | Post Tax By Location
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxRateByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxratebyaddress) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Post Taxrate By Address
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxRateByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxratebylocation) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Post Taxrate By Location
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxbyaddress) | **GET** /geotax/v1/tax/{taxRateTypeId}/byaddress | Get Tax By Address
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxbylocation) | **GET** /geotax/v1/tax/{taxRateTypeId}/bylocation | Get Tax By Location
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxRateByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxratebyaddress) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Get Taxrate By Address
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxRateByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxratebylocation) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Get Taxrate By Location
*PBLIAPIGeoZoneServiceApi* | [**getTravelBoundaryByDistance**](docs/SWGLIAPIGeoZoneServiceApi.md#gettravelboundarybydistance) | **GET** /geozone/v1/travelboundary/bydistance | Gets travel Boundary by Distance
*PBLIAPIGeoZoneServiceApi* | [**getTravelBoundaryByTime**](docs/SWGLIAPIGeoZoneServiceApi.md#gettravelboundarybytime) | **GET** /geozone/v1/travelboundary/bytime | Gets travel Boundary by Time
*PBLIAPIGeocodeServiceApi* | [**geocode**](docs/SWGLIAPIGeocodeServiceApi.md#geocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
*PBLIAPIGeocodeServiceApi* | [**geocodeBatch**](docs/SWGLIAPIGeocodeServiceApi.md#geocodebatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
*PBLIAPIGeocodeServiceApi* | [**geocodeServiceV1TransientDatapackBundleReverseGeocodePost**](docs/SWGLIAPIGeocodeServiceApi.md#geocodeservicev1transientdatapackbundlereversegeocodepost) | **POST** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode
*PBLIAPIGeocodeServiceApi* | [**getCapabilities**](docs/SWGLIAPIGeocodeServiceApi.md#getcapabilities) | **GET** /geocode-service/v1/transient/{datapackBundle}/capabilities | Gets Capabilities
*PBLIAPIGeocodeServiceApi* | [**getDictionaries**](docs/SWGLIAPIGeocodeServiceApi.md#getdictionaries) | **GET** /geocode-service/v1/transient/{datapackBundle}/dictionaries | Gets installed Dictionaries
*PBLIAPIGeocodeServiceApi* | [**reverseGeocode**](docs/SWGLIAPIGeocodeServiceApi.md#reversegeocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode


## Documentation For Models

 - [PBAHJ](docs/SWGAHJ.md)
 - [PBAHJList](docs/SWGAHJList.md)
 - [PBAHJPlusPSAPResponse](docs/SWGAHJPlusPSAPResponse.md)
 - [PBAddress](docs/SWGAddress.md)
 - [PBAgeTheme](docs/SWGAgeTheme.md)
 - [PBAreaCodeInfo](docs/SWGAreaCodeInfo.md)
 - [PBAttitudesAndMotivationTheme](docs/SWGAttitudesAndMotivationTheme.md)
 - [PBAutomobileTheme](docs/SWGAutomobileTheme.md)
 - [PBBaseFloodElevation](docs/SWGBaseFloodElevation.md)
 - [PBBoundaries](docs/SWGBoundaries.md)
 - [PBBoundary](docs/SWGBoundary.md)
 - [PBCandidate](docs/SWGCandidate.md)
 - [PBCandidateRange](docs/SWGCandidateRange.md)
 - [PBCandidateRangeUnit](docs/SWGCandidateRangeUnit.md)
 - [PBCbsa](docs/SWGCbsa.md)
 - [PBCensus](docs/SWGCensus.md)
 - [PBChannelPreferencesTheme](docs/SWGChannelPreferencesTheme.md)
 - [PBCommunity](docs/SWGCommunity.md)
 - [PBCommuterPatternsTheme](docs/SWGCommuterPatternsTheme.md)
 - [PBConfiguredDictionaryResponse](docs/SWGConfiguredDictionaryResponse.md)
 - [PBContactDetails](docs/SWGContactDetails.md)
 - [PBContactPerson](docs/SWGContactPerson.md)
 - [PBCost](docs/SWGCost.md)
 - [PBCosts](docs/SWGCosts.md)
 - [PBCountrySupport](docs/SWGCountrySupport.md)
 - [PBCounty](docs/SWGCounty.md)
 - [PBCoverage](docs/SWGCoverage.md)
 - [PBCrimeBoundary](docs/SWGCrimeBoundary.md)
 - [PBCrimeIndexTheme](docs/SWGCrimeIndexTheme.md)
 - [PBCrimeRiskResponse](docs/SWGCrimeRiskResponse.md)
 - [PBCrs](docs/SWGCrs.md)
 - [PBCustomObject](docs/SWGCustomObject.md)
 - [PBCustomObjectMember](docs/SWGCustomObjectMember.md)
 - [PBDemographics](docs/SWGDemographics.md)
 - [PBDemographicsThemes](docs/SWGDemographicsThemes.md)
 - [PBDictionary](docs/SWGDictionary.md)
 - [PBDirectionGeometry](docs/SWGDirectionGeometry.md)
 - [PBDistance](docs/SWGDistance.md)
 - [PBEarthquakeRiskResponse](docs/SWGEarthquakeRiskResponse.md)
 - [PBEducationalAttainmentTheme](docs/SWGEducationalAttainmentTheme.md)
 - [PBEthnicityTheme](docs/SWGEthnicityTheme.md)
 - [PBEventsCount](docs/SWGEventsCount.md)
 - [PBField](docs/SWGField.md)
 - [PBFieldsMatching](docs/SWGFieldsMatching.md)
 - [PBFinancialProductsTheme](docs/SWGFinancialProductsTheme.md)
 - [PBFireDepartment](docs/SWGFireDepartment.md)
 - [PBFireRiskResponse](docs/SWGFireRiskResponse.md)
 - [PBFireShed](docs/SWGFireShed.md)
 - [PBFireStation](docs/SWGFireStation.md)
 - [PBFireStations](docs/SWGFireStations.md)
 - [PBFloodBoundary](docs/SWGFloodBoundary.md)
 - [PBFloodRiskResponse](docs/SWGFloodRiskResponse.md)
 - [PBFloodZone](docs/SWGFloodZone.md)
 - [PBGenderTheme](docs/SWGGenderTheme.md)
 - [PBGeoPos](docs/SWGGeoPos.md)
 - [PBGeoRiskBoundaries](docs/SWGGeoRiskBoundaries.md)
 - [PBGeoRiskCrimeTheme](docs/SWGGeoRiskCrimeTheme.md)
 - [PBGeoRouteResponse](docs/SWGGeoRouteResponse.md)
 - [PBGeoTaxLocations](docs/SWGGeoTaxLocations.md)
 - [PBGeocodeAddress](docs/SWGGeocodeAddress.md)
 - [PBGeocodeCapabilitiesResponse](docs/SWGGeocodeCapabilitiesResponse.md)
 - [PBGeocodeRequest](docs/SWGGeocodeRequest.md)
 - [PBGeocodeServiceResponse](docs/SWGGeocodeServiceResponse.md)
 - [PBGeocodeServiceResponseList](docs/SWGGeocodeServiceResponseList.md)
 - [PBGeometry](docs/SWGGeometry.md)
 - [PBGeometryPolygon](docs/SWGGeometryPolygon.md)
 - [PBGrid](docs/SWGGrid.md)
 - [PBHouseholdSizeTheme](docs/SWGHouseholdSizeTheme.md)
 - [PBIncomeTheme](docs/SWGIncomeTheme.md)
 - [PBIndexVariable](docs/SWGIndexVariable.md)
 - [PBIndividualValueVariable](docs/SWGIndividualValueVariable.md)
 - [PBInputParameter](docs/SWGInputParameter.md)
 - [PBLatLongFields](docs/SWGLatLongFields.md)
 - [PBLifeStyleTheme](docs/SWGLifeStyleTheme.md)
 - [PBLocation](docs/SWGLocation.md)
 - [PBLocations](docs/SWGLocations.md)
 - [PBMaritalStatusTheme](docs/SWGMaritalStatusTheme.md)
 - [PBMatch](docs/SWGMatch.md)
 - [PBMcd](docs/SWGMcd.md)
 - [PBName](docs/SWGName.md)
 - [PBOperation](docs/SWGOperation.md)
 - [PBOutputParameter](docs/SWGOutputParameter.md)
 - [PBPSAPResponse](docs/SWGPSAPResponse.md)
 - [PBPlace](docs/SWGPlace.md)
 - [PBPlaceByLocations](docs/SWGPlaceByLocations.md)
 - [PBPlaceByLocationsLocation](docs/SWGPlaceByLocationsLocation.md)
 - [PBPlaceLocation](docs/SWGPlaceLocation.md)
 - [PBPlaceLocationName](docs/SWGPlaceLocationName.md)
 - [PBPoi](docs/SWGPoi.md)
 - [PBPoint](docs/SWGPoint.md)
 - [PBPoints](docs/SWGPoints.md)
 - [PBPolygon](docs/SWGPolygon.md)
 - [PBPreferences](docs/SWGPreferences.md)
 - [PBPrimaryZone](docs/SWGPrimaryZone.md)
 - [PBProperties](docs/SWGProperties.md)
 - [PBPurchasingBehaviorTheme](docs/SWGPurchasingBehaviorTheme.md)
 - [PBRaceTheme](docs/SWGRaceTheme.md)
 - [PBRangeVariable](docs/SWGRangeVariable.md)
 - [PBRateCenterResponse](docs/SWGRateCenterResponse.md)
 - [PBReturnFieldsDescriptor](docs/SWGReturnFieldsDescriptor.md)
 - [PBReverseGeocodeRequest](docs/SWGReverseGeocodeRequest.md)
 - [PBRisk](docs/SWGRisk.md)
 - [PBRouteDirection](docs/SWGRouteDirection.md)
 - [PBRouteDirections](docs/SWGRouteDirections.md)
 - [PBRouteGeometry](docs/SWGRouteGeometry.md)
 - [PBSalesTax](docs/SWGSalesTax.md)
 - [PBSegmentation](docs/SWGSegmentation.md)
 - [PBSegmentationThemes](docs/SWGSegmentationThemes.md)
 - [PBSiteDetails](docs/SWGSiteDetails.md)
 - [PBSpecialPurposeDistrict](docs/SWGSpecialPurposeDistrict.md)
 - [PBSpecialPurposeDistrictTax](docs/SWGSpecialPurposeDistrictTax.md)
 - [PBState](docs/SWGState.md)
 - [PBStatus](docs/SWGStatus.md)
 - [PBSupportLevel](docs/SWGSupportLevel.md)
 - [PBTaxAddress](docs/SWGTaxAddress.md)
 - [PBTaxAddressRequest](docs/SWGTaxAddressRequest.md)
 - [PBTaxJurisdiction](docs/SWGTaxJurisdiction.md)
 - [PBTaxLocationRequest](docs/SWGTaxLocationRequest.md)
 - [PBTaxRateAddress](docs/SWGTaxRateAddress.md)
 - [PBTaxRateAddressRequest](docs/SWGTaxRateAddressRequest.md)
 - [PBTaxRateLocationRequest](docs/SWGTaxRateLocationRequest.md)
 - [PBTaxResponse](docs/SWGTaxResponse.md)
 - [PBTaxResponses](docs/SWGTaxResponses.md)
 - [PBTime](docs/SWGTime.md)
 - [PBTimezone](docs/SWGTimezone.md)
 - [PBTravelBoundaries](docs/SWGTravelBoundaries.md)
 - [PBTravelBoundary](docs/SWGTravelBoundary.md)
 - [PBTravelCostMatrixResponse](docs/SWGTravelCostMatrixResponse.md)
 - [PBTravelCostMatrixResponseEndPoint](docs/SWGTravelCostMatrixResponseEndPoint.md)
 - [PBTravelCostMatrixResponseEndPointCrs](docs/SWGTravelCostMatrixResponseEndPointCrs.md)
 - [PBTravelCostMatrixResponseEndPointCrsProperties](docs/SWGTravelCostMatrixResponseEndPointCrsProperties.md)
 - [PBTravelCostMatrixResponseMatrix](docs/SWGTravelCostMatrixResponseMatrix.md)
 - [PBUseTax](docs/SWGUseTax.md)


## Documentation For Authorization


## oAuth2Password

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: N/A


## Author
