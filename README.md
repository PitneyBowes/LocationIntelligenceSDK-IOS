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
*	[Android](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#Android%20SDK/android_intro.html)
*	[JavaScript](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#Java%20Script%20SDK/js_intro.html) 
*	[iOS](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#iOS%20SDK/ios_intro.html)
*	[Java](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#Java%20SDK/java_intro.html)
*	[C#](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#C_sdk/java_intro.html)  

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

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SwaggerClient) and then add the following to the Podfile:

```ruby
pod 'SwaggerClient', :path => 'Vendor/SwaggerClient'
```

### Usage

Import the following:

```objc
#import <SwaggerClient/SWGApiClient.h>
#import <SwaggerClient/SWGConfiguration.h>
// load models
#import <SwaggerClient/SWGAHJ.h>
#import <SwaggerClient/SWGAHJList.h>
#import <SwaggerClient/SWGAHJPlusPSAPResponse.h>
#import <SwaggerClient/SWGAddress.h>
#import <SwaggerClient/SWGAgeTheme.h>
#import <SwaggerClient/SWGAreaCodeInfo.h>
#import <SwaggerClient/SWGAttitudesAndMotivationTheme.h>
#import <SwaggerClient/SWGAutomobileTheme.h>
#import <SwaggerClient/SWGBaseFloodElevation.h>
#import <SwaggerClient/SWGBoundaries.h>
#import <SwaggerClient/SWGBoundary.h>
#import <SwaggerClient/SWGCandidate.h>
#import <SwaggerClient/SWGCandidateRange.h>
#import <SwaggerClient/SWGCandidateRangeUnit.h>
#import <SwaggerClient/SWGCbsa.h>
#import <SwaggerClient/SWGCensus.h>
#import <SwaggerClient/SWGChannelPreferencesTheme.h>
#import <SwaggerClient/SWGCommunity.h>
#import <SwaggerClient/SWGCommuterPatternsTheme.h>
#import <SwaggerClient/SWGConfiguredDictionaryResponse.h>
#import <SwaggerClient/SWGContactDetails.h>
#import <SwaggerClient/SWGContactPerson.h>
#import <SwaggerClient/SWGCost.h>
#import <SwaggerClient/SWGCosts.h>
#import <SwaggerClient/SWGCountrySupport.h>
#import <SwaggerClient/SWGCounty.h>
#import <SwaggerClient/SWGCoverage.h>
#import <SwaggerClient/SWGCrimeBoundary.h>
#import <SwaggerClient/SWGCrimeIndexTheme.h>
#import <SwaggerClient/SWGCrimeRiskResponse.h>
#import <SwaggerClient/SWGCrs.h>
#import <SwaggerClient/SWGCustomObject.h>
#import <SwaggerClient/SWGCustomObjectMember.h>
#import <SwaggerClient/SWGDemographics.h>
#import <SwaggerClient/SWGDemographicsThemes.h>
#import <SwaggerClient/SWGDictionary.h>
#import <SwaggerClient/SWGDirectionGeometry.h>
#import <SwaggerClient/SWGDistance.h>
#import <SwaggerClient/SWGEarthquakeRiskResponse.h>
#import <SwaggerClient/SWGEducationalAttainmentTheme.h>
#import <SwaggerClient/SWGEthnicityTheme.h>
#import <SwaggerClient/SWGEventsCount.h>
#import <SwaggerClient/SWGField.h>
#import <SwaggerClient/SWGFieldsMatching.h>
#import <SwaggerClient/SWGFinancialProductsTheme.h>
#import <SwaggerClient/SWGFireDepartment.h>
#import <SwaggerClient/SWGFireRiskResponse.h>
#import <SwaggerClient/SWGFireShed.h>
#import <SwaggerClient/SWGFireStation.h>
#import <SwaggerClient/SWGFireStations.h>
#import <SwaggerClient/SWGFloodBoundary.h>
#import <SwaggerClient/SWGFloodRiskResponse.h>
#import <SwaggerClient/SWGFloodZone.h>
#import <SwaggerClient/SWGGenderTheme.h>
#import <SwaggerClient/SWGGeoPos.h>
#import <SwaggerClient/SWGGeoRiskBoundaries.h>
#import <SwaggerClient/SWGGeoRiskCrimeTheme.h>
#import <SwaggerClient/SWGGeoRouteResponse.h>
#import <SwaggerClient/SWGGeoTaxLocations.h>
#import <SwaggerClient/SWGGeocodeAddress.h>
#import <SwaggerClient/SWGGeocodeCapabilitiesResponse.h>
#import <SwaggerClient/SWGGeocodeRequest.h>
#import <SwaggerClient/SWGGeocodeServiceResponse.h>
#import <SwaggerClient/SWGGeocodeServiceResponseList.h>
#import <SwaggerClient/SWGGeometry.h>
#import <SwaggerClient/SWGGeometryPolygon.h>
#import <SwaggerClient/SWGGrid.h>
#import <SwaggerClient/SWGHouseholdSizeTheme.h>
#import <SwaggerClient/SWGIncomeTheme.h>
#import <SwaggerClient/SWGIndexVariable.h>
#import <SwaggerClient/SWGIndividualValueVariable.h>
#import <SwaggerClient/SWGInputParameter.h>
#import <SwaggerClient/SWGLatLongFields.h>
#import <SwaggerClient/SWGLifeStyleTheme.h>
#import <SwaggerClient/SWGLocation.h>
#import <SwaggerClient/SWGLocations.h>
#import <SwaggerClient/SWGMaritalStatusTheme.h>
#import <SwaggerClient/SWGMatch.h>
#import <SwaggerClient/SWGMcd.h>
#import <SwaggerClient/SWGName.h>
#import <SwaggerClient/SWGOperation.h>
#import <SwaggerClient/SWGOutputParameter.h>
#import <SwaggerClient/SWGPSAPResponse.h>
#import <SwaggerClient/SWGPlace.h>
#import <SwaggerClient/SWGPlaceByLocations.h>
#import <SwaggerClient/SWGPlaceByLocationsLocation.h>
#import <SwaggerClient/SWGPlaceLocation.h>
#import <SwaggerClient/SWGPlaceLocationName.h>
#import <SwaggerClient/SWGPoi.h>
#import <SwaggerClient/SWGPoint.h>
#import <SwaggerClient/SWGPoints.h>
#import <SwaggerClient/SWGPolygon.h>
#import <SwaggerClient/SWGPreferences.h>
#import <SwaggerClient/SWGPrimaryZone.h>
#import <SwaggerClient/SWGProperties.h>
#import <SwaggerClient/SWGPurchasingBehaviorTheme.h>
#import <SwaggerClient/SWGRaceTheme.h>
#import <SwaggerClient/SWGRangeVariable.h>
#import <SwaggerClient/SWGRateCenterResponse.h>
#import <SwaggerClient/SWGReturnFieldsDescriptor.h>
#import <SwaggerClient/SWGReverseGeocodeRequest.h>
#import <SwaggerClient/SWGRisk.h>
#import <SwaggerClient/SWGRouteDirection.h>
#import <SwaggerClient/SWGRouteDirections.h>
#import <SwaggerClient/SWGRouteGeometry.h>
#import <SwaggerClient/SWGSalesTax.h>
#import <SwaggerClient/SWGSegmentation.h>
#import <SwaggerClient/SWGSegmentationThemes.h>
#import <SwaggerClient/SWGSiteDetails.h>
#import <SwaggerClient/SWGSpecialPurposeDistrict.h>
#import <SwaggerClient/SWGSpecialPurposeDistrictTax.h>
#import <SwaggerClient/SWGState.h>
#import <SwaggerClient/SWGStatus.h>
#import <SwaggerClient/SWGSupportLevel.h>
#import <SwaggerClient/SWGTaxAddress.h>
#import <SwaggerClient/SWGTaxAddressRequest.h>
#import <SwaggerClient/SWGTaxJurisdiction.h>
#import <SwaggerClient/SWGTaxLocationRequest.h>
#import <SwaggerClient/SWGTaxRateAddress.h>
#import <SwaggerClient/SWGTaxRateAddressRequest.h>
#import <SwaggerClient/SWGTaxRateLocationRequest.h>
#import <SwaggerClient/SWGTaxResponse.h>
#import <SwaggerClient/SWGTaxResponses.h>
#import <SwaggerClient/SWGTime.h>
#import <SwaggerClient/SWGTimezone.h>
#import <SwaggerClient/SWGTravelBoundaries.h>
#import <SwaggerClient/SWGTravelBoundary.h>
#import <SwaggerClient/SWGTravelCostMatrixResponse.h>
#import <SwaggerClient/SWGTravelCostMatrixResponseEndPoint.h>
#import <SwaggerClient/SWGTravelCostMatrixResponseEndPointCrs.h>
#import <SwaggerClient/SWGTravelCostMatrixResponseEndPointCrsProperties.h>
#import <SwaggerClient/SWGTravelCostMatrixResponseMatrix.h>
#import <SwaggerClient/SWGUseTax.h>
// load API classes for accessing endpoints
#import <SwaggerClient/SWGLIAPIGeoCommServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoEnhanceServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoLifeServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoRiskServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoRouteServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoSearchServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoTaxServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeoZoneServiceApi.h>
#import <SwaggerClient/SWGLIAPIGeocodeServiceApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issue.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* *address = @"address_example"; // The address to be searched.
NSString* *country = @"USA"; // 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional) (default to USA)
NSString* *areaCodeInfo = @"False"; // Specifies whether area code information will be part of response.Allowed values True,False (optional) (default to False)
NSString* *level = @"basic"; // Level (basic/detail).Allowed values detail,basic. (optional) (default to basic)

SWGLIAPIGeoCommServiceApi *apiInstance = [[SWGLIAPIGeoCommServiceApi alloc] init];

// Rate Center By Address.
[apiInstance getRateCenterByAddressWithAddress:address
    country:country
    areaCodeInfo:areaCodeInfo
    level:level
              completionHandler: ^(SWGRateCenterResponse* output, NSError* error) {
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
*SWGLIAPIGeoCommServiceApi* | [**getRateCenterByAddress**](docs/SWGLIAPIGeoCommServiceApi.md#getratecenterbyaddress) | **GET** /geocomm/v1/ratecenter/byaddress | Rate Center By Address.
*SWGLIAPIGeoCommServiceApi* | [**getRateCenterByLocation**](docs/SWGLIAPIGeoCommServiceApi.md#getratecenterbylocation) | **GET** /geocomm/v1/ratecenter/bylocation | Rate Center By Location.
*SWGLIAPIGeoEnhanceServiceApi* | [**getAddress**](docs/SWGLIAPIGeoEnhanceServiceApi.md#getaddress) | **GET** /geoenhance/v1/address/bylocation | Address By Location.
*SWGLIAPIGeoEnhanceServiceApi* | [**getEntityByLocation**](docs/SWGLIAPIGeoEnhanceServiceApi.md#getentitybylocation) | **GET** /geoenhance/v1/poi/bylocation | Points Of Interest By Location.
*SWGLIAPIGeoEnhanceServiceApi* | [**getPlaceByLocation**](docs/SWGLIAPIGeoEnhanceServiceApi.md#getplacebylocation) | **GET** /geoenhance/v1/place/bylocation | Place By Location.
*SWGLIAPIGeoEnhanceServiceApi* | [**getTimezoneByLocation**](docs/SWGLIAPIGeoEnhanceServiceApi.md#gettimezonebylocation) | **GET** /geoenhance/v1/timezone/bylocation | Timezone By Location.
*SWGLIAPIGeoLifeServiceApi* | [**getDemographicsByAddress**](docs/SWGLIAPIGeoLifeServiceApi.md#getdemographicsbyaddress) | **GET** /geolife/v1/demographics/byaddress | Demographics By Address.
*SWGLIAPIGeoLifeServiceApi* | [**getDemographicsByLocation**](docs/SWGLIAPIGeoLifeServiceApi.md#getdemographicsbylocation) | **GET** /geolife/v1/demographics/bylocation | Demographics By Location.
*SWGLIAPIGeoLifeServiceApi* | [**getSegmentationByAddress**](docs/SWGLIAPIGeoLifeServiceApi.md#getsegmentationbyaddress) | **GET** /geolife/v1/segmentation/byaddress | Segmentation By Address.
*SWGLIAPIGeoLifeServiceApi* | [**getSegmentationByLocation**](docs/SWGLIAPIGeoLifeServiceApi.md#getsegmentationbylocation) | **GET** /geolife/v1/segmentation/bylocation | Segmentation By Location.
*SWGLIAPIGeoRiskServiceApi* | [**getCrimeRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddress) | **GET** /georisk/v1/crime/byaddress | Gets CrimeRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getCrimeRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getcrimeriskbylocation) | **GET** /georisk/v1/crime/bylocation | Gets CrimeRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddress) | **GET** /georisk/v1/earthquake/byaddress | Gets EarthquakeRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocation) | **GET** /georisk/v1/earthquake/bylocation | Gets EarthquakeRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getFireRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getfireriskbyaddress) | **GET** /georisk/v1/fire/byaddress | Gets FireRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getFireRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getfireriskbylocation) | **GET** /georisk/v1/fire/bylocation | Gets FireRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getFireStationByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getfirestationbyaddress) | **GET** /georisk/v1/firestation/byaddress | Gets FireStationResponse
*SWGLIAPIGeoRiskServiceApi* | [**getFireStationByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getfirestationbylocation) | **GET** /georisk/v1/firestation/bylocation | Gets FireStationResponse
*SWGLIAPIGeoRiskServiceApi* | [**getFloodRiskByAddress**](docs/SWGLIAPIGeoRiskServiceApi.md#getfloodriskbyaddress) | **GET** /georisk/v1/flood/byaddress | Gets FloodRiskResponse
*SWGLIAPIGeoRiskServiceApi* | [**getFloodRiskByLocation**](docs/SWGLIAPIGeoRiskServiceApi.md#getfloodriskbylocation) | **GET** /georisk/v1/flood/bylocation | Gets FloodRiskResponse
*SWGLIAPIGeoRouteServiceApi* | [**getRouteByAddress**](docs/SWGLIAPIGeoRouteServiceApi.md#getroutebyaddress) | **GET** /georoute/v1/route/byaddress | Gets Route by Address
*SWGLIAPIGeoRouteServiceApi* | [**getRouteByLocation**](docs/SWGLIAPIGeoRouteServiceApi.md#getroutebylocation) | **GET** /georoute/v1/route/bylocation | Gets Route by Location
*SWGLIAPIGeoRouteServiceApi* | [**getTravelCostMatrixByAddress**](docs/SWGLIAPIGeoRouteServiceApi.md#gettravelcostmatrixbyaddress) | **GET** /georoute/v1/travelcostmatrix/byaddress | Gets Cost Matrix by Address
*SWGLIAPIGeoRouteServiceApi* | [**getTravelCostMatrixByLocation**](docs/SWGLIAPIGeoRouteServiceApi.md#gettravelcostmatrixbylocation) | **GET** /georoute/v1/travelcostmatrix/bylocation | Gets Cost Matrix by Location
*SWGLIAPIGeoSearchServiceApi* | [**geoSearch**](docs/SWGLIAPIGeoSearchServiceApi.md#geosearch) | **GET** /geosearch/v1/locations | Gets LocationList
*SWGLIAPIGeoServiceApi* | [**getAHJPlusPSAPByAddress**](docs/SWGLIAPIGeoServiceApi.md#getahjpluspsapbyaddress) | **GET** /geo911/v1/ahj-psap/byaddress | AHJ &amp; PSAP By Address.
*SWGLIAPIGeoServiceApi* | [**getAHJPlusPSAPByLocation**](docs/SWGLIAPIGeoServiceApi.md#getahjpluspsapbylocation) | **GET** /geo911/v1/ahj-psap/bylocation | AHJ &amp; PSAP By Location
*SWGLIAPIGeoServiceApi* | [**getPSAPByAddress**](docs/SWGLIAPIGeoServiceApi.md#getpsapbyaddress) | **GET** /geo911/v1/psap/byaddress | PSAP By Address.
*SWGLIAPIGeoServiceApi* | [**getPSAPByLocation**](docs/SWGLIAPIGeoServiceApi.md#getpsapbylocation) | **GET** /geo911/v1/psap/bylocation | PSAP By Location.
*SWGLIAPIGeoTaxServiceApi* | [**getBatchTaxByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxbyaddress) | **POST** /geotax/v1/tax/{taxRateTypeId}/byaddress | Post Tax By Address
*SWGLIAPIGeoTaxServiceApi* | [**getBatchTaxByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxbylocation) | **POST** /geotax/v1/tax/{taxRateTypeId}/bylocation | Post Tax By Location
*SWGLIAPIGeoTaxServiceApi* | [**getBatchTaxRateByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxratebyaddress) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Post Taxrate By Address
*SWGLIAPIGeoTaxServiceApi* | [**getBatchTaxRateByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getbatchtaxratebylocation) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Post Taxrate By Location
*SWGLIAPIGeoTaxServiceApi* | [**getSpecificTaxByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxbyaddress) | **GET** /geotax/v1/tax/{taxRateTypeId}/byaddress | Get Tax By Address
*SWGLIAPIGeoTaxServiceApi* | [**getSpecificTaxByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxbylocation) | **GET** /geotax/v1/tax/{taxRateTypeId}/bylocation | Get Tax By Location
*SWGLIAPIGeoTaxServiceApi* | [**getSpecificTaxRateByAddress**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxratebyaddress) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Get Taxrate By Address
*SWGLIAPIGeoTaxServiceApi* | [**getSpecificTaxRateByLocation**](docs/SWGLIAPIGeoTaxServiceApi.md#getspecifictaxratebylocation) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Get Taxrate By Location
*SWGLIAPIGeoZoneServiceApi* | [**getTravelBoundaryByDistance**](docs/SWGLIAPIGeoZoneServiceApi.md#gettravelboundarybydistance) | **GET** /geozone/v1/travelboundary/bydistance | Gets travel Boundary by Distance
*SWGLIAPIGeoZoneServiceApi* | [**getTravelBoundaryByTime**](docs/SWGLIAPIGeoZoneServiceApi.md#gettravelboundarybytime) | **GET** /geozone/v1/travelboundary/bytime | Gets travel Boundary by Time
*SWGLIAPIGeocodeServiceApi* | [**geocode**](docs/SWGLIAPIGeocodeServiceApi.md#geocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
*SWGLIAPIGeocodeServiceApi* | [**geocodeBatch**](docs/SWGLIAPIGeocodeServiceApi.md#geocodebatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
*SWGLIAPIGeocodeServiceApi* | [**geocodeServiceV1TransientDatapackBundleReverseGeocodePost**](docs/SWGLIAPIGeocodeServiceApi.md#geocodeservicev1transientdatapackbundlereversegeocodepost) | **POST** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode
*SWGLIAPIGeocodeServiceApi* | [**getCapabilities**](docs/SWGLIAPIGeocodeServiceApi.md#getcapabilities) | **GET** /geocode-service/v1/transient/{datapackBundle}/capabilities | Gets Capabilities
*SWGLIAPIGeocodeServiceApi* | [**getDictionaries**](docs/SWGLIAPIGeocodeServiceApi.md#getdictionaries) | **GET** /geocode-service/v1/transient/{datapackBundle}/dictionaries | Gets installed Dictionaries
*SWGLIAPIGeocodeServiceApi* | [**reverseGeocode**](docs/SWGLIAPIGeocodeServiceApi.md#reversegeocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode


## Documentation For Models

 - [SWGAHJ](docs/SWGAHJ.md)
 - [SWGAHJList](docs/SWGAHJList.md)
 - [SWGAHJPlusPSAPResponse](docs/SWGAHJPlusPSAPResponse.md)
 - [SWGAddress](docs/SWGAddress.md)
 - [SWGAgeTheme](docs/SWGAgeTheme.md)
 - [SWGAreaCodeInfo](docs/SWGAreaCodeInfo.md)
 - [SWGAttitudesAndMotivationTheme](docs/SWGAttitudesAndMotivationTheme.md)
 - [SWGAutomobileTheme](docs/SWGAutomobileTheme.md)
 - [SWGBaseFloodElevation](docs/SWGBaseFloodElevation.md)
 - [SWGBoundaries](docs/SWGBoundaries.md)
 - [SWGBoundary](docs/SWGBoundary.md)
 - [SWGCandidate](docs/SWGCandidate.md)
 - [SWGCandidateRange](docs/SWGCandidateRange.md)
 - [SWGCandidateRangeUnit](docs/SWGCandidateRangeUnit.md)
 - [SWGCbsa](docs/SWGCbsa.md)
 - [SWGCensus](docs/SWGCensus.md)
 - [SWGChannelPreferencesTheme](docs/SWGChannelPreferencesTheme.md)
 - [SWGCommunity](docs/SWGCommunity.md)
 - [SWGCommuterPatternsTheme](docs/SWGCommuterPatternsTheme.md)
 - [SWGConfiguredDictionaryResponse](docs/SWGConfiguredDictionaryResponse.md)
 - [SWGContactDetails](docs/SWGContactDetails.md)
 - [SWGContactPerson](docs/SWGContactPerson.md)
 - [SWGCost](docs/SWGCost.md)
 - [SWGCosts](docs/SWGCosts.md)
 - [SWGCountrySupport](docs/SWGCountrySupport.md)
 - [SWGCounty](docs/SWGCounty.md)
 - [SWGCoverage](docs/SWGCoverage.md)
 - [SWGCrimeBoundary](docs/SWGCrimeBoundary.md)
 - [SWGCrimeIndexTheme](docs/SWGCrimeIndexTheme.md)
 - [SWGCrimeRiskResponse](docs/SWGCrimeRiskResponse.md)
 - [SWGCrs](docs/SWGCrs.md)
 - [SWGCustomObject](docs/SWGCustomObject.md)
 - [SWGCustomObjectMember](docs/SWGCustomObjectMember.md)
 - [SWGDemographics](docs/SWGDemographics.md)
 - [SWGDemographicsThemes](docs/SWGDemographicsThemes.md)
 - [SWGDictionary](docs/SWGDictionary.md)
 - [SWGDirectionGeometry](docs/SWGDirectionGeometry.md)
 - [SWGDistance](docs/SWGDistance.md)
 - [SWGEarthquakeRiskResponse](docs/SWGEarthquakeRiskResponse.md)
 - [SWGEducationalAttainmentTheme](docs/SWGEducationalAttainmentTheme.md)
 - [SWGEthnicityTheme](docs/SWGEthnicityTheme.md)
 - [SWGEventsCount](docs/SWGEventsCount.md)
 - [SWGField](docs/SWGField.md)
 - [SWGFieldsMatching](docs/SWGFieldsMatching.md)
 - [SWGFinancialProductsTheme](docs/SWGFinancialProductsTheme.md)
 - [SWGFireDepartment](docs/SWGFireDepartment.md)
 - [SWGFireRiskResponse](docs/SWGFireRiskResponse.md)
 - [SWGFireShed](docs/SWGFireShed.md)
 - [SWGFireStation](docs/SWGFireStation.md)
 - [SWGFireStations](docs/SWGFireStations.md)
 - [SWGFloodBoundary](docs/SWGFloodBoundary.md)
 - [SWGFloodRiskResponse](docs/SWGFloodRiskResponse.md)
 - [SWGFloodZone](docs/SWGFloodZone.md)
 - [SWGGenderTheme](docs/SWGGenderTheme.md)
 - [SWGGeoPos](docs/SWGGeoPos.md)
 - [SWGGeoRiskBoundaries](docs/SWGGeoRiskBoundaries.md)
 - [SWGGeoRiskCrimeTheme](docs/SWGGeoRiskCrimeTheme.md)
 - [SWGGeoRouteResponse](docs/SWGGeoRouteResponse.md)
 - [SWGGeoTaxLocations](docs/SWGGeoTaxLocations.md)
 - [SWGGeocodeAddress](docs/SWGGeocodeAddress.md)
 - [SWGGeocodeCapabilitiesResponse](docs/SWGGeocodeCapabilitiesResponse.md)
 - [SWGGeocodeRequest](docs/SWGGeocodeRequest.md)
 - [SWGGeocodeServiceResponse](docs/SWGGeocodeServiceResponse.md)
 - [SWGGeocodeServiceResponseList](docs/SWGGeocodeServiceResponseList.md)
 - [SWGGeometry](docs/SWGGeometry.md)
 - [SWGGeometryPolygon](docs/SWGGeometryPolygon.md)
 - [SWGGrid](docs/SWGGrid.md)
 - [SWGHouseholdSizeTheme](docs/SWGHouseholdSizeTheme.md)
 - [SWGIncomeTheme](docs/SWGIncomeTheme.md)
 - [SWGIndexVariable](docs/SWGIndexVariable.md)
 - [SWGIndividualValueVariable](docs/SWGIndividualValueVariable.md)
 - [SWGInputParameter](docs/SWGInputParameter.md)
 - [SWGLatLongFields](docs/SWGLatLongFields.md)
 - [SWGLifeStyleTheme](docs/SWGLifeStyleTheme.md)
 - [SWGLocation](docs/SWGLocation.md)
 - [SWGLocations](docs/SWGLocations.md)
 - [SWGMaritalStatusTheme](docs/SWGMaritalStatusTheme.md)
 - [SWGMatch](docs/SWGMatch.md)
 - [SWGMcd](docs/SWGMcd.md)
 - [SWGName](docs/SWGName.md)
 - [SWGOperation](docs/SWGOperation.md)
 - [SWGOutputParameter](docs/SWGOutputParameter.md)
 - [SWGPSAPResponse](docs/SWGPSAPResponse.md)
 - [SWGPlace](docs/SWGPlace.md)
 - [SWGPlaceByLocations](docs/SWGPlaceByLocations.md)
 - [SWGPlaceByLocationsLocation](docs/SWGPlaceByLocationsLocation.md)
 - [SWGPlaceLocation](docs/SWGPlaceLocation.md)
 - [SWGPlaceLocationName](docs/SWGPlaceLocationName.md)
 - [SWGPoi](docs/SWGPoi.md)
 - [SWGPoint](docs/SWGPoint.md)
 - [SWGPoints](docs/SWGPoints.md)
 - [SWGPolygon](docs/SWGPolygon.md)
 - [SWGPreferences](docs/SWGPreferences.md)
 - [SWGPrimaryZone](docs/SWGPrimaryZone.md)
 - [SWGProperties](docs/SWGProperties.md)
 - [SWGPurchasingBehaviorTheme](docs/SWGPurchasingBehaviorTheme.md)
 - [SWGRaceTheme](docs/SWGRaceTheme.md)
 - [SWGRangeVariable](docs/SWGRangeVariable.md)
 - [SWGRateCenterResponse](docs/SWGRateCenterResponse.md)
 - [SWGReturnFieldsDescriptor](docs/SWGReturnFieldsDescriptor.md)
 - [SWGReverseGeocodeRequest](docs/SWGReverseGeocodeRequest.md)
 - [SWGRisk](docs/SWGRisk.md)
 - [SWGRouteDirection](docs/SWGRouteDirection.md)
 - [SWGRouteDirections](docs/SWGRouteDirections.md)
 - [SWGRouteGeometry](docs/SWGRouteGeometry.md)
 - [SWGSalesTax](docs/SWGSalesTax.md)
 - [SWGSegmentation](docs/SWGSegmentation.md)
 - [SWGSegmentationThemes](docs/SWGSegmentationThemes.md)
 - [SWGSiteDetails](docs/SWGSiteDetails.md)
 - [SWGSpecialPurposeDistrict](docs/SWGSpecialPurposeDistrict.md)
 - [SWGSpecialPurposeDistrictTax](docs/SWGSpecialPurposeDistrictTax.md)
 - [SWGState](docs/SWGState.md)
 - [SWGStatus](docs/SWGStatus.md)
 - [SWGSupportLevel](docs/SWGSupportLevel.md)
 - [SWGTaxAddress](docs/SWGTaxAddress.md)
 - [SWGTaxAddressRequest](docs/SWGTaxAddressRequest.md)
 - [SWGTaxJurisdiction](docs/SWGTaxJurisdiction.md)
 - [SWGTaxLocationRequest](docs/SWGTaxLocationRequest.md)
 - [SWGTaxRateAddress](docs/SWGTaxRateAddress.md)
 - [SWGTaxRateAddressRequest](docs/SWGTaxRateAddressRequest.md)
 - [SWGTaxRateLocationRequest](docs/SWGTaxRateLocationRequest.md)
 - [SWGTaxResponse](docs/SWGTaxResponse.md)
 - [SWGTaxResponses](docs/SWGTaxResponses.md)
 - [SWGTime](docs/SWGTime.md)
 - [SWGTimezone](docs/SWGTimezone.md)
 - [SWGTravelBoundaries](docs/SWGTravelBoundaries.md)
 - [SWGTravelBoundary](docs/SWGTravelBoundary.md)
 - [SWGTravelCostMatrixResponse](docs/SWGTravelCostMatrixResponse.md)
 - [SWGTravelCostMatrixResponseEndPoint](docs/SWGTravelCostMatrixResponseEndPoint.md)
 - [SWGTravelCostMatrixResponseEndPointCrs](docs/SWGTravelCostMatrixResponseEndPointCrs.md)
 - [SWGTravelCostMatrixResponseEndPointCrsProperties](docs/SWGTravelCostMatrixResponseEndPointCrsProperties.md)
 - [SWGTravelCostMatrixResponseMatrix](docs/SWGTravelCostMatrixResponseMatrix.md)
 - [SWGUseTax](docs/SWGUseTax.md)


## Documentation For Authorization


## oAuth2Password

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: N/A


## Author