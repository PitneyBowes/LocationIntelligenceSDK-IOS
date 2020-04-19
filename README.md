![Pitney Bowes](/PitneyBowes_Logo.jpg)

# Pitney Bowes Location Intelligence API

### Description
[Location Intelligence APIs ](http://developer.pitneybowes.com/en/location-intelligence.html) help you to Incorporate Pitney Bowes extensive geodata into everyday applications, business processes, and workflows. Use our SDKs to get started quickly and easily integrate API calls in your applications.

### Location Intelligence APIs:

* [GeoEnrich](https://locate.pitneybowes.com/geoenrich ) : Returns addresses, place names, points-of-interest and timezones with the input of a location coordinate. Useful for enhancing & enriching your geo-tagged data.

* [GeoLife](https://locate.pitneybowes.com/geolife) : Add local demographics and lifestyle segmentation to your people profiles. GeoLife returns household demographics and lifestyle characteristics with the input of Location Coordinates or Addresses. Know more about Who with Where!

* [GeoSearch](https://locate.pitneybowes.com/geosearch): Returns an autocompleted list of addresses and places based on the input of a partial address. Useful for commercial developers and content providers, or anyone wanting to offer their own search.

* [GeoComm](https://locate.pitneybowes.com/geocomm): Identifies Local Exchange Carrier presence with a Rate Center area. The GeoComm API retrieves Incumbent Local Exchange Carrier (ILEC) doing-business-as names with the input of an address. Useful for local telecommunications competitive intelligence, partnerships, and provisioning subscribers.

* [Geo911](https://locate.pitneybowes.com/geo911): Integrates Public Safety Answering Point (PSAP) administrative call routing information plus Authority Having Jurisdiction (AHJ) phone numbers into your 911 products and services. The Geo911 API retrieves 10-digit phone numbers and local contact info with the input of a location coordinate. Useful for emergency services administrators, call handlers, and dispatchers.

* [GeoTax](https://locate.pitneybowes.com/geotax): Returns local tax rates with the input of a location coordinate or an address. Critical for any billing, commerce, payment, or payroll application or service.

* [GeoCode](https://locate.pitneybowes.com/geocode): Converts addresses to location coordinates and vice versa. The GeoCode API returns latitude & longitude coordinates with the input of an address and vice versa. Useful for enhancing & enriching your customer addresses.

* [GeoMap](https://locate.pitneybowes.com/geomap): Adds data and more atop Maps. Choose from three map styles - Iron, Bronze, and Steel.

* [GeoZone](https://locate.pitneybowes.com/geozone): The GeoZone API returns geographic zones by Radius, Drive Distance, Drive Time, and highly localized geofence zones with the input of Location Coordinates or Addresses. Useful for anyone wanting to create smarter geofence zones for Local Engagement and Analysis.

* [GeoRoute](https://locate.pitneybowes.com/georoute): Returns Point-to-Point and Multi-Point Travel Directions by Various Travel Modes. Critical for any Simple or Complex Routing Requirement.

* [GeoRisk](https://locate.pitneybowes.com/georisk): Returns critical risk intelligence with the input of Location Coordinates or Addresses. Critical for any Risk Mitigation Analyses involving threats to lives or property.

* [GeoProperty](https://locate.pitneybowes.com/geoproperty)::  Integrate extensive residential & commercial property and school information into your applications. The GeoProperty API returns property parcel boundaries and hundreds of property attributes for millions of US properties with the input of Location Coordinates or Addresses. It also includes methods for retrieving school data, including education levels, types, and more. Useful for Real Estate use cases or those involving risk assessments.

* [GeoComm](https://locate.pitneybowes.com/geocomm): Identifies Local Exchange Carrier presence with a Rate Center area. The GeoComm API retrieves Incumbent Local Exchange Carrier (ILEC) doing-business-as names with the input of an address. Useful for local telecommunications competitive intelligence, partnerships, and provisioning subscribers.

* [GeoTime](https://locate.pitneybowes.com/geotime): Local time. The GeoTime API returns timezones and UTC offsets with the input of a location coordinate or address. Useful for do-not-call, logistics, and customer engagement applications, business processes and workflows.

* [GeoLocation](http://locate.pitneybowes.com/geolocation): Device Location. The GeoLocation API returns location coordinates based on the input of an IP Address, WiFi Access point MAC address, Fixed line phone number and/or Wireless phone number. Useful for a variety of applications, business processes and workflows in eCommerce, Fraud Detection, Physical-Digital interactions, Field Service and more.

* [GeoPost](http://locate.pitneybowes.com/geopost): Accurate Postal Routing. The GeoPost API accepts an address or multiple addresses as inputs and returns US postal routing information including residential, commercial or PO Box delivery destinations. Critical for any direct mail marketing campaign.

* [GeoIdentity](http://locate.pitneybowes.com/geoidentity): Powerful, local socio-economic & affinity insights about your customer. Enrich shipping addresses with rich, localized Identity profiles, demographics, lifestyle segmentations, neighborhood names, property ownership & values, and social affinity insights. The GeoIdentity API returns all these data with the input of a Physical Address, Email Address, or Twitter handle. Useful for enhancing & enriching a wide variety of applications, business processes, or workflows.

* [GeoStreets](https://locate.pitneybowes.com/geostreets): Enrich your applications, business processes, and workflows with global street information including nearest intersections and more. GeoStreets accepts an address or location and returns nearest intersection information. Useful for enriching your data and/or analytics processes with footfall potential.



The following platforms are supported by Location Intelligence SDKs:
*	[Android](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#Android%20SDK/android_intro.html)
*	[NodeJS]() 
*	[iOS](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#iOS%20SDK/ios_intro.html)
*	[Java](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#Java%20SDK/java_intro.html)
*	[C#](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html#C_sdk/java_intro.html)  

[Click here](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html) for detailed Documentation on Location Intelligence APIs 
[Click here](https://locate.pitneybowes.com/docs/location-intelligence/v1/en/index.html) for detailed Documentation on Location Intelligence APIs 
# LocationIntelligenceIOSSDK

Incorporate our extensive geodata into everyday applications, business processes and workflows.

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 8.5.0
- Package version: 8.5.0
- Build date: 2020-04-16T15:55:41.879+05:30
- Build package: class io.swagger.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'LocationIntelligenceIOSSDK', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
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
#import <LocationIntelligenceIOSSDK/PBApiClient.h>
#import <LocationIntelligenceIOSSDK/PBConfiguration.h>
// load models
#import <LocationIntelligenceIOSSDK/PBAHJ.h>
#import <LocationIntelligenceIOSSDK/PBAHJList.h>
#import <LocationIntelligenceIOSSDK/PBAHJPlusPSAPResponse.h>
#import <LocationIntelligenceIOSSDK/PBAHJmailingAddress.h>
#import <LocationIntelligenceIOSSDK/PBAccuracy.h>
#import <LocationIntelligenceIOSSDK/PBAddress.h>
#import <LocationIntelligenceIOSSDK/PBAddressTime.h>
#import <LocationIntelligenceIOSSDK/PBAge.h>
#import <LocationIntelligenceIOSSDK/PBAgeTheme.h>
#import <LocationIntelligenceIOSSDK/PBArea.h>
#import <LocationIntelligenceIOSSDK/PBAreaCodeInfo.h>
#import <LocationIntelligenceIOSSDK/PBAssetsAndWealthTheme.h>
#import <LocationIntelligenceIOSSDK/PBAttitudesAndMotivationTheme.h>
#import <LocationIntelligenceIOSSDK/PBAutomobileTheme.h>
#import <LocationIntelligenceIOSSDK/PBBaseFloodElevation.h>
#import <LocationIntelligenceIOSSDK/PBBasicBoundary.h>
#import <LocationIntelligenceIOSSDK/PBBasicBoundaryAddress.h>
#import <LocationIntelligenceIOSSDK/PBBirthday.h>
#import <LocationIntelligenceIOSSDK/PBBoundaries.h>
#import <LocationIntelligenceIOSSDK/PBBoundary.h>
#import <LocationIntelligenceIOSSDK/PBBoundaryBuffer.h>
#import <LocationIntelligenceIOSSDK/PBBoundaryPoint.h>
#import <LocationIntelligenceIOSSDK/PBBufferRelation.h>
#import <LocationIntelligenceIOSSDK/PBCandidate.h>
#import <LocationIntelligenceIOSSDK/PBCandidateRange.h>
#import <LocationIntelligenceIOSSDK/PBCandidateRangeUnit.h>
#import <LocationIntelligenceIOSSDK/PBCarrier.h>
#import <LocationIntelligenceIOSSDK/PBCarrierRouteAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBCarrierRouteBoundaries.h>
#import <LocationIntelligenceIOSSDK/PBCarrierRoutePreference.h>
#import <LocationIntelligenceIOSSDK/PBCarrierRouteResponse.h>
#import <LocationIntelligenceIOSSDK/PBCarrierRouteResponseList.h>
#import <LocationIntelligenceIOSSDK/PBCategory.h>
#import <LocationIntelligenceIOSSDK/PBCategoryMetadata.h>
#import <LocationIntelligenceIOSSDK/PBCbsa.h>
#import <LocationIntelligenceIOSSDK/PBCensus.h>
#import <LocationIntelligenceIOSSDK/PBCenter.h>
#import <LocationIntelligenceIOSSDK/PBChannelPreferencesTheme.h>
#import <LocationIntelligenceIOSSDK/PBCity.h>
#import <LocationIntelligenceIOSSDK/PBCommonAddress.h>
#import <LocationIntelligenceIOSSDK/PBCommonGeometry.h>
#import <LocationIntelligenceIOSSDK/PBCommonState.h>
#import <LocationIntelligenceIOSSDK/PBCommunity.h>
#import <LocationIntelligenceIOSSDK/PBCommuterPatternsTheme.h>
#import <LocationIntelligenceIOSSDK/PBConfiguredDictionaryResponse.h>
#import <LocationIntelligenceIOSSDK/PBContactDetails.h>
#import <LocationIntelligenceIOSSDK/PBContactPerson.h>
#import <LocationIntelligenceIOSSDK/PBCost.h>
#import <LocationIntelligenceIOSSDK/PBCosts.h>
#import <LocationIntelligenceIOSSDK/PBCountrySupport.h>
#import <LocationIntelligenceIOSSDK/PBCounty.h>
#import <LocationIntelligenceIOSSDK/PBCoverage.h>
#import <LocationIntelligenceIOSSDK/PBCrimeBoundary.h>
#import <LocationIntelligenceIOSSDK/PBCrimeIndexTheme.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskByAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskByLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskLocationResponseList.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskPreferences.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskResponse.h>
#import <LocationIntelligenceIOSSDK/PBCrimeRiskResponseList.h>
#import <LocationIntelligenceIOSSDK/PBCrs.h>
#import <LocationIntelligenceIOSSDK/PBCustomObject.h>
#import <LocationIntelligenceIOSSDK/PBCustomObjectMember.h>
#import <LocationIntelligenceIOSSDK/PBCustomPreferences.h>
#import <LocationIntelligenceIOSSDK/PBDateTimeEarthQuake.h>
#import <LocationIntelligenceIOSSDK/PBDemographicsThemes.h>
#import <LocationIntelligenceIOSSDK/PBDemographicsThemesV2.h>
#import <LocationIntelligenceIOSSDK/PBDemographicsV2.h>
#import <LocationIntelligenceIOSSDK/PBDepth.h>
#import <LocationIntelligenceIOSSDK/PBDeviceStatusNetwork.h>
#import <LocationIntelligenceIOSSDK/PBDictionary.h>
#import <LocationIntelligenceIOSSDK/PBDirectionGeometry.h>
#import <LocationIntelligenceIOSSDK/PBDistance.h>
#import <LocationIntelligenceIOSSDK/PBDistanceToBorder.h>
#import <LocationIntelligenceIOSSDK/PBDistanceToFloodHazardAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBDistanceToFloodHazardLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBDistanceToFloodHazardLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBDistanceToFloodHazardResponse.h>
#import <LocationIntelligenceIOSSDK/PBDistrictType.h>
#import <LocationIntelligenceIOSSDK/PBDomesticUltimateBusiness.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeEvent.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeEventsResponse.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeHistory.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeLocation.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskByAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskByLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskLocationResponseList.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskPreferences.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskResponse.h>
#import <LocationIntelligenceIOSSDK/PBEarthquakeRiskResponseList.h>
#import <LocationIntelligenceIOSSDK/PBEducation.h>
#import <LocationIntelligenceIOSSDK/PBEducationTheme.h>
#import <LocationIntelligenceIOSSDK/PBEducationalAttainmentTheme.h>
#import <LocationIntelligenceIOSSDK/PBEmail.h>
#import <LocationIntelligenceIOSSDK/PBEmployeeCount.h>
#import <LocationIntelligenceIOSSDK/PBEmployment.h>
#import <LocationIntelligenceIOSSDK/PBEmploymentTheme.h>
#import <LocationIntelligenceIOSSDK/PBEnd.h>
#import <LocationIntelligenceIOSSDK/PBEthnicityTheme.h>
#import <LocationIntelligenceIOSSDK/PBEventsCount.h>
#import <LocationIntelligenceIOSSDK/PBExpenditureTheme.h>
#import <LocationIntelligenceIOSSDK/PBField.h>
#import <LocationIntelligenceIOSSDK/PBFieldV2.h>
#import <LocationIntelligenceIOSSDK/PBFieldsMatching.h>
#import <LocationIntelligenceIOSSDK/PBFinancialProductsTheme.h>
#import <LocationIntelligenceIOSSDK/PBFireDepartment.h>
#import <LocationIntelligenceIOSSDK/PBFireDepartmentContactDetails.h>
#import <LocationIntelligenceIOSSDK/PBFireEvent.h>
#import <LocationIntelligenceIOSSDK/PBFireEventsResponse.h>
#import <LocationIntelligenceIOSSDK/PBFireHistory.h>
#import <LocationIntelligenceIOSSDK/PBFireRiskByAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBFireRiskByLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBFireRiskLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBFireRiskLocationResponseList.h>
#import <LocationIntelligenceIOSSDK/PBFireRiskResponse.h>
#import <LocationIntelligenceIOSSDK/PBFireRiskResponseList.h>
#import <LocationIntelligenceIOSSDK/PBFireShed.h>
#import <LocationIntelligenceIOSSDK/PBFireStation.h>
#import <LocationIntelligenceIOSSDK/PBFireStationContactDetails.h>
#import <LocationIntelligenceIOSSDK/PBFireStations.h>
#import <LocationIntelligenceIOSSDK/PBFireStationsLocation.h>
#import <LocationIntelligenceIOSSDK/PBFloodBoundary.h>
#import <LocationIntelligenceIOSSDK/PBFloodHazardPreferences.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskByAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskByLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskLocationResponseList.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskPreferences.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskResponse.h>
#import <LocationIntelligenceIOSSDK/PBFloodRiskResponseList.h>
#import <LocationIntelligenceIOSSDK/PBFloodZone.h>
#import <LocationIntelligenceIOSSDK/PBFreeOrReducedPriceLunches.h>
#import <LocationIntelligenceIOSSDK/PBGenderTheme.h>
#import <LocationIntelligenceIOSSDK/PBGeoEnrichMetadataResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeoEnrichResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeoIdentityName.h>
#import <LocationIntelligenceIOSSDK/PBGeoIdentityPlace.h>
#import <LocationIntelligenceIOSSDK/PBGeoIdentityResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationAccessPoint.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationCountry.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationDeviceSatus.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationFixedLine.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationFixedLineCountry.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationIpAddr.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationPlace.h>
#import <LocationIntelligenceIOSSDK/PBGeoLocationState.h>
#import <LocationIntelligenceIOSSDK/PBGeoPos.h>
#import <LocationIntelligenceIOSSDK/PBGeoPostGeometry.h>
#import <LocationIntelligenceIOSSDK/PBGeoPropertyAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBGeoPropertyResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeoPropertyResponses.h>
#import <LocationIntelligenceIOSSDK/PBGeoRiskBoundaries.h>
#import <LocationIntelligenceIOSSDK/PBGeoRiskCrimeTheme.h>
#import <LocationIntelligenceIOSSDK/PBGeoRiskGeometry.h>
#import <LocationIntelligenceIOSSDK/PBGeoRiskLocations.h>
#import <LocationIntelligenceIOSSDK/PBGeoRouteResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeoTaxLocations.h>
#import <LocationIntelligenceIOSSDK/PBGeoTaxRateLocations.h>
#import <LocationIntelligenceIOSSDK/PBGeoZoneGeometry.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeAddress.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeCapabilitiesResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeCustomPreferences.h>
#import <LocationIntelligenceIOSSDK/PBGeocodePreferences.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeRequest.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeRequestAddress.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeServiceResponse.h>
#import <LocationIntelligenceIOSSDK/PBGeocodeServiceResponseList.h>
#import <LocationIntelligenceIOSSDK/PBGeometry.h>
#import <LocationIntelligenceIOSSDK/PBGeosearchLocation.h>
#import <LocationIntelligenceIOSSDK/PBGeosearchLocations.h>
#import <LocationIntelligenceIOSSDK/PBGlobalUltimateBusiness.h>
#import <LocationIntelligenceIOSSDK/PBGradeLevelsTaught.h>
#import <LocationIntelligenceIOSSDK/PBGreatschools.h>
#import <LocationIntelligenceIOSSDK/PBGrid.h>
#import <LocationIntelligenceIOSSDK/PBHealthTheme.h>
#import <LocationIntelligenceIOSSDK/PBHouseholdFinance.h>
#import <LocationIntelligenceIOSSDK/PBHouseholdSizeTheme.h>
#import <LocationIntelligenceIOSSDK/PBHouseholdsTheme.h>
#import <LocationIntelligenceIOSSDK/PBHousingTheme.h>
#import <LocationIntelligenceIOSSDK/PBIPDTaxByAddressBatchRequest.h>
#import <LocationIntelligenceIOSSDK/PBIPDTaxJurisdiction.h>
#import <LocationIntelligenceIOSSDK/PBIdentity.h>
#import <LocationIntelligenceIOSSDK/PBIdentityDetail.h>
#import <LocationIntelligenceIOSSDK/PBIncomeTheme.h>
#import <LocationIntelligenceIOSSDK/PBIncomeThemeV2.h>
#import <LocationIntelligenceIOSSDK/PBIndexVariable.h>
#import <LocationIntelligenceIOSSDK/PBIndividualValueVariable.h>
#import <LocationIntelligenceIOSSDK/PBIndividualValueVariableV2.h>
#import <LocationIntelligenceIOSSDK/PBInputParameter.h>
#import <LocationIntelligenceIOSSDK/PBInterest.h>
#import <LocationIntelligenceIOSSDK/PBIntersection.h>
#import <LocationIntelligenceIOSSDK/PBIntersectionResponse.h>
#import <LocationIntelligenceIOSSDK/PBIpInfo.h>
#import <LocationIntelligenceIOSSDK/PBIpd.h>
#import <LocationIntelligenceIOSSDK/PBKeyLookupRequest.h>
#import <LocationIntelligenceIOSSDK/PBKeys.h>
#import <LocationIntelligenceIOSSDK/PBLatLongFields.h>
#import <LocationIntelligenceIOSSDK/PBLifeStyleTheme.h>
#import <LocationIntelligenceIOSSDK/PBLifestyle.h>
#import <LocationIntelligenceIOSSDK/PBLocation.h>
#import <LocationIntelligenceIOSSDK/PBLocationTime.h>
#import <LocationIntelligenceIOSSDK/PBMagnitude.h>
#import <LocationIntelligenceIOSSDK/PBMaritalStatusTheme.h>
#import <LocationIntelligenceIOSSDK/PBMatch.h>
#import <LocationIntelligenceIOSSDK/PBMatchedAddress.h>
#import <LocationIntelligenceIOSSDK/PBMatrix.h>
#import <LocationIntelligenceIOSSDK/PBMcd.h>
#import <LocationIntelligenceIOSSDK/PBNeighborhood.h>
#import <LocationIntelligenceIOSSDK/PBNetwork.h>
#import <LocationIntelligenceIOSSDK/PBOperation.h>
#import <LocationIntelligenceIOSSDK/PBOrganizationType.h>
#import <LocationIntelligenceIOSSDK/PBOutputParameter.h>
#import <LocationIntelligenceIOSSDK/PBPBKeyAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBPBKeyResponse.h>
#import <LocationIntelligenceIOSSDK/PBPBKeyResponseList.h>
#import <LocationIntelligenceIOSSDK/PBPOIBoundaryAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBPOIBoundaryLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBPOIBoundaryLocations.h>
#import <LocationIntelligenceIOSSDK/PBPOIBoundaryResponse.h>
#import <LocationIntelligenceIOSSDK/PBPOIByGeometryRequest.h>
#import <LocationIntelligenceIOSSDK/PBPOIPlaces.h>
#import <LocationIntelligenceIOSSDK/PBPSAPResponse.h>
#import <LocationIntelligenceIOSSDK/PBParcel.h>
#import <LocationIntelligenceIOSSDK/PBParcelBoundary.h>
#import <LocationIntelligenceIOSSDK/PBParentBusiness.h>
#import <LocationIntelligenceIOSSDK/PBPbKey.h>
#import <LocationIntelligenceIOSSDK/PBPhoto.h>
#import <LocationIntelligenceIOSSDK/PBPlaceByLocations.h>
#import <LocationIntelligenceIOSSDK/PBPlaceByLocationsLocation.h>
#import <LocationIntelligenceIOSSDK/PBPlaceLocation.h>
#import <LocationIntelligenceIOSSDK/PBPlaceLocationName.h>
#import <LocationIntelligenceIOSSDK/PBPoi.h>
#import <LocationIntelligenceIOSSDK/PBPoiBoundary.h>
#import <LocationIntelligenceIOSSDK/PBPoiBoundaryPreferences.h>
#import <LocationIntelligenceIOSSDK/PBPoiClassification.h>
#import <LocationIntelligenceIOSSDK/PBPoiContactDetails.h>
#import <LocationIntelligenceIOSSDK/PBPoiCount.h>
#import <LocationIntelligenceIOSSDK/PBPoiCountRequest.h>
#import <LocationIntelligenceIOSSDK/PBPoints.h>
#import <LocationIntelligenceIOSSDK/PBPois.h>
#import <LocationIntelligenceIOSSDK/PBPolygonGeometry.h>
#import <LocationIntelligenceIOSSDK/PBPopulationTheme.h>
#import <LocationIntelligenceIOSSDK/PBPreferencTimeZone.h>
#import <LocationIntelligenceIOSSDK/PBPreferences.h>
#import <LocationIntelligenceIOSSDK/PBPrimaryZone.h>
#import <LocationIntelligenceIOSSDK/PBProfile.h>
#import <LocationIntelligenceIOSSDK/PBProperties.h>
#import <LocationIntelligenceIOSSDK/PBProperty.h>
#import <LocationIntelligenceIOSSDK/PBProxy.h>
#import <LocationIntelligenceIOSSDK/PBPurchasingBehaviorTheme.h>
#import <LocationIntelligenceIOSSDK/PBRaceAndEthnicityTheme.h>
#import <LocationIntelligenceIOSSDK/PBRaceTheme.h>
#import <LocationIntelligenceIOSSDK/PBRangeVariable.h>
#import <LocationIntelligenceIOSSDK/PBRangeVariableV2.h>
#import <LocationIntelligenceIOSSDK/PBRate.h>
#import <LocationIntelligenceIOSSDK/PBRateCenterResponse.h>
#import <LocationIntelligenceIOSSDK/PBReturnFieldsDescriptor.h>
#import <LocationIntelligenceIOSSDK/PBReverseGeocodeRequest.h>
#import <LocationIntelligenceIOSSDK/PBRisk.h>
#import <LocationIntelligenceIOSSDK/PBRiskAddress.h>
#import <LocationIntelligenceIOSSDK/PBRoad.h>
#import <LocationIntelligenceIOSSDK/PBRouteBoundary.h>
#import <LocationIntelligenceIOSSDK/PBRouteDelivery.h>
#import <LocationIntelligenceIOSSDK/PBRouteDirection.h>
#import <LocationIntelligenceIOSSDK/PBRouteDirections.h>
#import <LocationIntelligenceIOSSDK/PBRouteGeometry.h>
#import <LocationIntelligenceIOSSDK/PBSalesTax.h>
#import <LocationIntelligenceIOSSDK/PBSalesTaxRate.h>
#import <LocationIntelligenceIOSSDK/PBSalesVolume.h>
#import <LocationIntelligenceIOSSDK/PBSchool.h>
#import <LocationIntelligenceIOSSDK/PBSchoolDistrict.h>
#import <LocationIntelligenceIOSSDK/PBSchoolProfile.h>
#import <LocationIntelligenceIOSSDK/PBSchoolRanking.h>
#import <LocationIntelligenceIOSSDK/PBSchoolsNearByResponse.h>
#import <LocationIntelligenceIOSSDK/PBSegmentation.h>
#import <LocationIntelligenceIOSSDK/PBSegmentationThemes.h>
#import <LocationIntelligenceIOSSDK/PBShoreLineDistance.h>
#import <LocationIntelligenceIOSSDK/PBSic.h>
#import <LocationIntelligenceIOSSDK/PBSicMetadata.h>
#import <LocationIntelligenceIOSSDK/PBSiteDetails.h>
#import <LocationIntelligenceIOSSDK/PBSpecialPurposeDistrict.h>
#import <LocationIntelligenceIOSSDK/PBSpecialPurposeDistrictTax.h>
#import <LocationIntelligenceIOSSDK/PBSpecialPurposeDistrictTaxRate.h>
#import <LocationIntelligenceIOSSDK/PBSpeedLimit.h>
#import <LocationIntelligenceIOSSDK/PBSpeedRoad.h>
#import <LocationIntelligenceIOSSDK/PBStart.h>
#import <LocationIntelligenceIOSSDK/PBStartEndPoint.h>
#import <LocationIntelligenceIOSSDK/PBStatus.h>
#import <LocationIntelligenceIOSSDK/PBStudentEthnicity.h>
#import <LocationIntelligenceIOSSDK/PBSupplyAndDemandTheme.h>
#import <LocationIntelligenceIOSSDK/PBSupportLevel.h>
#import <LocationIntelligenceIOSSDK/PBTaxAddress.h>
#import <LocationIntelligenceIOSSDK/PBTaxAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBTaxBatchLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxBatchResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxCounty.h>
#import <LocationIntelligenceIOSSDK/PBTaxDistrictResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxDistrictResponseList.h>
#import <LocationIntelligenceIOSSDK/PBTaxJurisdiction.h>
#import <LocationIntelligenceIOSSDK/PBTaxLocationPreferences.h>
#import <LocationIntelligenceIOSSDK/PBTaxLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBTaxLocationResponses.h>
#import <LocationIntelligenceIOSSDK/PBTaxPlace.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateAddress.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateBatchLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateBatchResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateLocationResponses.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxRateResponses.h>
#import <LocationIntelligenceIOSSDK/PBTaxResponse.h>
#import <LocationIntelligenceIOSSDK/PBTaxResponses.h>
#import <LocationIntelligenceIOSSDK/PBTaxState.h>
#import <LocationIntelligenceIOSSDK/PBTime.h>
#import <LocationIntelligenceIOSSDK/PBTimezone.h>
#import <LocationIntelligenceIOSSDK/PBTimezoneAddressRequest.h>
#import <LocationIntelligenceIOSSDK/PBTimezoneLocation.h>
#import <LocationIntelligenceIOSSDK/PBTimezoneLocationRequest.h>
#import <LocationIntelligenceIOSSDK/PBTimezoneLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBTimezoneResponse.h>
#import <LocationIntelligenceIOSSDK/PBTopic.h>
#import <LocationIntelligenceIOSSDK/PBTravelBoundaries.h>
#import <LocationIntelligenceIOSSDK/PBTravelBoundary.h>
#import <LocationIntelligenceIOSSDK/PBTravelCostMatrixResponse.h>
#import <LocationIntelligenceIOSSDK/PBType.h>
#import <LocationIntelligenceIOSSDK/PBUnit.h>
#import <LocationIntelligenceIOSSDK/PBUrl.h>
#import <LocationIntelligenceIOSSDK/PBUseTax.h>
#import <LocationIntelligenceIOSSDK/PBUseTaxRate.h>
#import <LocationIntelligenceIOSSDK/PBWaterBody.h>
#import <LocationIntelligenceIOSSDK/PBWaterBodyLocationResponse.h>
#import <LocationIntelligenceIOSSDK/PBWaterBodyResponse.h>
// load API classes for accessing endpoints
#import <LocationIntelligenceIOSSDK/PBLIAPIGeo911ServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoCommServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoEnrichServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoIdentityServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoLifeServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoLocationServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoPostServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoPropertyServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoRiskServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoRouteServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoSearchServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoStreetsServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoTaxServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoTimeServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeoZoneServiceApi.h>
#import <LocationIntelligenceIOSSDK/PBLIAPIGeocodeServiceApi.h>

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

PBLIAPIGeo911ServiceApi *apiInstance = [[PBLIAPIGeo911ServiceApi alloc] init];

// AHJ & PSAP By Address.
[apiInstance getAHJPlusPSAPByAddressWithAddress:address
              completionHandler: ^(PBAHJPlusPSAPResponse* output, NSError* error) {
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
*PBLIAPIGeo911ServiceApi* | [**getAHJPlusPSAPByAddress**](docs/PBLIAPIGeo911ServiceApi.md#getahjpluspsapbyaddress) | **GET** /geo911/v1/ahj-psap/byaddress | AHJ &amp; PSAP By Address.
*PBLIAPIGeo911ServiceApi* | [**getAHJPlusPSAPByLocation**](docs/PBLIAPIGeo911ServiceApi.md#getahjpluspsapbylocation) | **GET** /geo911/v1/ahj-psap/bylocation | AHJ &amp; PSAP By Location
*PBLIAPIGeo911ServiceApi* | [**getPSAPByAddress**](docs/PBLIAPIGeo911ServiceApi.md#getpsapbyaddress) | **GET** /geo911/v1/psap/byaddress | PSAP By Address.
*PBLIAPIGeo911ServiceApi* | [**getPSAPByLocation**](docs/PBLIAPIGeo911ServiceApi.md#getpsapbylocation) | **GET** /geo911/v1/psap/bylocation | PSAP By Location.
*PBLIAPIGeoCommServiceApi* | [**getRateCenterByAddress**](docs/PBLIAPIGeoCommServiceApi.md#getratecenterbyaddress) | **GET** /geocomm/v1/ratecenter/byaddress | Rate Center By Address.
*PBLIAPIGeoCommServiceApi* | [**getRateCenterByLocation**](docs/PBLIAPIGeoCommServiceApi.md#getratecenterbylocation) | **GET** /geocomm/v1/ratecenter/bylocation | Rate Center By Location.
*PBLIAPIGeoEnrichServiceApi* | [**getCategoryCodeMetadata**](docs/PBLIAPIGeoEnrichServiceApi.md#getcategorycodemetadata) | **GET** /geoenrich/v1/metadata/category | Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
*PBLIAPIGeoEnrichServiceApi* | [**getPOIById**](docs/PBLIAPIGeoEnrichServiceApi.md#getpoibyid) | **GET** /geoenrich/v1/poi/{id} | Point of Interest By Id.
*PBLIAPIGeoEnrichServiceApi* | [**getPOIsByAddress**](docs/PBLIAPIGeoEnrichServiceApi.md#getpoisbyaddress) | **GET** /geoenrich/v1/poi/byaddress | Points of Interest By Address.
*PBLIAPIGeoEnrichServiceApi* | [**getPOIsByArea**](docs/PBLIAPIGeoEnrichServiceApi.md#getpoisbyarea) | **GET** /geoenrich/v1/poi/byarea | Points of Interest By Area.
*PBLIAPIGeoEnrichServiceApi* | [**getPOIsByGeometry**](docs/PBLIAPIGeoEnrichServiceApi.md#getpoisbygeometry) | **POST** /geoenrich/v1/poi/byboundary | Point of Interests By Geometry.
*PBLIAPIGeoEnrichServiceApi* | [**getPOIsByLocation**](docs/PBLIAPIGeoEnrichServiceApi.md#getpoisbylocation) | **GET** /geoenrich/v1/poi/bylocation | Points of Interest By Location.
*PBLIAPIGeoEnrichServiceApi* | [**getPOIsCount**](docs/PBLIAPIGeoEnrichServiceApi.md#getpoiscount) | **POST** /geoenrich/v1/poicount | Point of Interests count By Geometry.
*PBLIAPIGeoEnrichServiceApi* | [**getPlaceByLocation**](docs/PBLIAPIGeoEnrichServiceApi.md#getplacebylocation) | **GET** /geoenrich/v1/place/bylocation | Place By Location.
*PBLIAPIGeoEnrichServiceApi* | [**getSICMetadata**](docs/PBLIAPIGeoEnrichServiceApi.md#getsicmetadata) | **GET** /geoenrich/v1/metadata/sic | Returns SIC Codes with their Industry Titles and Category Codes mapping
*PBLIAPIGeoEnrichServiceApi* | [**poisAutocomplete**](docs/PBLIAPIGeoEnrichServiceApi.md#poisautocomplete) | **GET** /geoenrich/v1/poi/autocomplete | Points of Interest Autocomplete.
*PBLIAPIGeoIdentityServiceApi* | [**getIdentityByAddress**](docs/PBLIAPIGeoIdentityServiceApi.md#getidentitybyaddress) | **GET** /geoidentity/v1/identity/byaddress | Gets GeoIdentityResponse
*PBLIAPIGeoIdentityServiceApi* | [**getIdentityByEmail**](docs/PBLIAPIGeoIdentityServiceApi.md#getidentitybyemail) | **GET** /geoidentity/v1/identity/byemail | Gets Identity
*PBLIAPIGeoIdentityServiceApi* | [**getIdentityByTwitter**](docs/PBLIAPIGeoIdentityServiceApi.md#getidentitybytwitter) | **GET** /geoidentity/v1/identity/bytwitter | Gets Identity
*PBLIAPIGeoLifeServiceApi* | [**getDemographicsByAddressV2**](docs/PBLIAPIGeoLifeServiceApi.md#getdemographicsbyaddressv2) | **GET** /geolife/v2/demographics/byaddress | Demographics By Address.
*PBLIAPIGeoLifeServiceApi* | [**getDemographicsByLocationV2**](docs/PBLIAPIGeoLifeServiceApi.md#getdemographicsbylocationv2) | **GET** /geolife/v2/demographics/bylocation | Demographics By Location.
*PBLIAPIGeoLifeServiceApi* | [**getSegmentationByAddress**](docs/PBLIAPIGeoLifeServiceApi.md#getsegmentationbyaddress) | **GET** /geolife/v1/segmentation/byaddress | Segmentation By Address.
*PBLIAPIGeoLifeServiceApi* | [**getSegmentationByLocation**](docs/PBLIAPIGeoLifeServiceApi.md#getsegmentationbylocation) | **GET** /geolife/v1/segmentation/bylocation | Segmentation By Location.
*PBLIAPIGeoLocationServiceApi* | [**getDeviceStatus**](docs/PBLIAPIGeoLocationServiceApi.md#getdevicestatus) | **GET** /geolocation/v1/devicestatus | Location By Device Status.
*PBLIAPIGeoLocationServiceApi* | [**getLocationByIPAddress**](docs/PBLIAPIGeoLocationServiceApi.md#getlocationbyipaddress) | **GET** /geolocation/v1/location/byipaddress | Location By IP Address.
*PBLIAPIGeoLocationServiceApi* | [**getLocationByWiFiAccessPoint**](docs/PBLIAPIGeoLocationServiceApi.md#getlocationbywifiaccesspoint) | **GET** /geolocation/v1/location/byaccesspoint | Location by WiFi Access Point.
*PBLIAPIGeoPostServiceApi* | [**getCarrierRoutesByAddress**](docs/PBLIAPIGeoPostServiceApi.md#getcarrierroutesbyaddress) | **GET** /geopost/v1/carrierroute/byaddress | Carrier Route By Address.
*PBLIAPIGeoPostServiceApi* | [**getCarrierRoutesByAddressBatch**](docs/PBLIAPIGeoPostServiceApi.md#getcarrierroutesbyaddressbatch) | **POST** /geopost/v1/carrierroute/byaddress | Gets GeoPost Carrier Routes for Multiple Addresses
*PBLIAPIGeoPropertyServiceApi* | [**getGeoPropertyByAddress**](docs/PBLIAPIGeoPropertyServiceApi.md#getgeopropertybyaddress) | **GET** /geoproperty/v1/all/attributes/byaddress | Gets GeoPropertyResponse
*PBLIAPIGeoPropertyServiceApi* | [**getGeoPropertyByAddressBatch**](docs/PBLIAPIGeoPropertyServiceApi.md#getgeopropertybyaddressbatch) | **POST** /geoproperty/v1/all/attributes/byaddress | Gets GeoPropertyResponses
*PBLIAPIGeoPropertyServiceApi* | [**getParcelBoundaryByAddress**](docs/PBLIAPIGeoPropertyServiceApi.md#getparcelboundarybyaddress) | **GET** /geoproperty/v1/parcelboundary/byaddress | Gets ParcelBoundary
*PBLIAPIGeoPropertyServiceApi* | [**getParcelBoundaryByLocation**](docs/PBLIAPIGeoPropertyServiceApi.md#getparcelboundarybylocation) | **GET** /geoproperty/v1/parcelboundary/bylocation | Gets ParcelBoundary
*PBLIAPIGeoPropertyServiceApi* | [**getSchoolsByAddress**](docs/PBLIAPIGeoPropertyServiceApi.md#getschoolsbyaddress) | **GET** /geoproperty/v1/school/byaddress | Search Nearby Schools by Address
*PBLIAPIGeoRiskServiceApi* | [**getCrimeRiskByAddress**](docs/PBLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddress) | **GET** /georisk/v1/crime/byaddress | Gets CrimeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getCrimeRiskByAddressBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddressbatch) | **POST** /georisk/v1/crime/byaddress | Batch method for getting crime risk by address
*PBLIAPIGeoRiskServiceApi* | [**getCrimeRiskByLocation**](docs/PBLIAPIGeoRiskServiceApi.md#getcrimeriskbylocation) | **GET** /georisk/v1/crime/bylocation | Gets CrimeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getCrimeRiskByLocationBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getcrimeriskbylocationbatch) | **POST** /georisk/v1/crime/bylocation | Batch method for getting crime risk by location
*PBLIAPIGeoRiskServiceApi* | [**getDistanceToFloodHazardByAddress**](docs/PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbyaddress) | **GET** /georisk/v1/shoreline/distancetofloodhazard/byaddress | Gets WaterBodyResponse
*PBLIAPIGeoRiskServiceApi* | [**getDistanceToFloodHazardByAddressBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbyaddressbatch) | **POST** /georisk/v1/shoreline/distancetofloodhazard/byaddress | Batch method for getting Water Bodies by address
*PBLIAPIGeoRiskServiceApi* | [**getDistanceToFloodHazardByLocation**](docs/PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbylocation) | **GET** /georisk/v1/shoreline/distancetofloodhazard/bylocation | Gets WaterBodyResponse
*PBLIAPIGeoRiskServiceApi* | [**getDistanceToFloodHazardByLocationBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbylocationbatch) | **POST** /georisk/v1/shoreline/distancetofloodhazard/bylocation | Batch method for getting Water Bodies by location
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeHistory**](docs/PBLIAPIGeoRiskServiceApi.md#getearthquakehistory) | **GET** /georisk/v1/earthquakehistory | Gets EarthquakeHistory
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByAddress**](docs/PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddress) | **GET** /georisk/v1/earthquake/byaddress | Gets EarthquakeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByAddressBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddressbatch) | **POST** /georisk/v1/earthquake/byaddress | Batch method for getting earthquake risk by address
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByLocation**](docs/PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocation) | **GET** /georisk/v1/earthquake/bylocation | Gets EarthquakeRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getEarthquakeRiskByLocationBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocationbatch) | **POST** /georisk/v1/earthquake/bylocation | Batch method for getting earthquake risk by location
*PBLIAPIGeoRiskServiceApi* | [**getFireHistory**](docs/PBLIAPIGeoRiskServiceApi.md#getfirehistory) | **GET** /georisk/v1/firehistory | Gets FireHistory
*PBLIAPIGeoRiskServiceApi* | [**getFireRiskByAddress**](docs/PBLIAPIGeoRiskServiceApi.md#getfireriskbyaddress) | **GET** /georisk/v1/fire/byaddress | Gets FireRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireRiskByAddressBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getfireriskbyaddressbatch) | **POST** /georisk/v1/fire/byaddress | Batch method for getting fire risk by address
*PBLIAPIGeoRiskServiceApi* | [**getFireRiskByLocation**](docs/PBLIAPIGeoRiskServiceApi.md#getfireriskbylocation) | **GET** /georisk/v1/fire/bylocation | Gets FireRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireRiskByLocationBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getfireriskbylocationbatch) | **POST** /georisk/v1/fire/bylocation | Batch method for getting fire risk by location
*PBLIAPIGeoRiskServiceApi* | [**getFireStationByAddress**](docs/PBLIAPIGeoRiskServiceApi.md#getfirestationbyaddress) | **GET** /georisk/v1/firestation/byaddress | Gets FireStationResponse
*PBLIAPIGeoRiskServiceApi* | [**getFireStationByLocation**](docs/PBLIAPIGeoRiskServiceApi.md#getfirestationbylocation) | **GET** /georisk/v1/firestation/bylocation | Gets FireStationResponse
*PBLIAPIGeoRiskServiceApi* | [**getFloodRiskByAddress**](docs/PBLIAPIGeoRiskServiceApi.md#getfloodriskbyaddress) | **GET** /georisk/v1/flood/byaddress | Gets FloodRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFloodRiskByAddressBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getfloodriskbyaddressbatch) | **POST** /georisk/v1/flood/byaddress | Batch method for getting flood risk by address
*PBLIAPIGeoRiskServiceApi* | [**getFloodRiskByLocation**](docs/PBLIAPIGeoRiskServiceApi.md#getfloodriskbylocation) | **GET** /georisk/v1/flood/bylocation | Gets FloodRiskResponse
*PBLIAPIGeoRiskServiceApi* | [**getFloodRiskByLocationBatch**](docs/PBLIAPIGeoRiskServiceApi.md#getfloodriskbylocationbatch) | **POST** /georisk/v1/flood/bylocation | Batch method for getting flood risk by location
*PBLIAPIGeoRouteServiceApi* | [**getRouteByAddress**](docs/PBLIAPIGeoRouteServiceApi.md#getroutebyaddress) | **GET** /georoute/v1/route/byaddress | Gets Route by Address
*PBLIAPIGeoRouteServiceApi* | [**getRouteByLocation**](docs/PBLIAPIGeoRouteServiceApi.md#getroutebylocation) | **GET** /georoute/v1/route/bylocation | Gets Route by Location
*PBLIAPIGeoRouteServiceApi* | [**getTravelCostMatrixByAddress**](docs/PBLIAPIGeoRouteServiceApi.md#gettravelcostmatrixbyaddress) | **GET** /georoute/v1/travelcostmatrix/byaddress | Gets Cost Matrix by Address
*PBLIAPIGeoRouteServiceApi* | [**getTravelCostMatrixByLocation**](docs/PBLIAPIGeoRouteServiceApi.md#gettravelcostmatrixbylocation) | **GET** /georoute/v1/travelcostmatrix/bylocation | Gets Cost Matrix by Location
*PBLIAPIGeoSearchServiceApi* | [**geoSearch**](docs/PBLIAPIGeoSearchServiceApi.md#geosearch) | **GET** /geosearch/v2/locations | Gets LocationList
*PBLIAPIGeoStreetsServiceApi* | [**getIntersectionByAddress**](docs/PBLIAPIGeoStreetsServiceApi.md#getintersectionbyaddress) | **GET** /geostreets/v1/intersection/byaddress | Gets NearestIntersection of major roads
*PBLIAPIGeoStreetsServiceApi* | [**getIntersectionByLocation**](docs/PBLIAPIGeoStreetsServiceApi.md#getintersectionbylocation) | **GET** /geostreets/v1/intersection/bylocation | Gets NearestIntersection of major roads
*PBLIAPIGeoStreetsServiceApi* | [**getNearestSpeedLimit**](docs/PBLIAPIGeoStreetsServiceApi.md#getnearestspeedlimit) | **GET** /geostreets/v1/speedlimit | Gets NearestSpeedLimit
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxByAddress**](docs/PBLIAPIGeoTaxServiceApi.md#getbatchtaxbyaddress) | **POST** /geotax/v1/tax/{taxRateTypeId}/byaddress | Post Tax By Address
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxByLocation**](docs/PBLIAPIGeoTaxServiceApi.md#getbatchtaxbylocation) | **POST** /geotax/v1/tax/{taxRateTypeId}/bylocation | Post Tax By Location
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxRateByAddress**](docs/PBLIAPIGeoTaxServiceApi.md#getbatchtaxratebyaddress) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Post Taxrate By Address
*PBLIAPIGeoTaxServiceApi* | [**getBatchTaxRateByLocation**](docs/PBLIAPIGeoTaxServiceApi.md#getbatchtaxratebylocation) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Post Taxrate By Location
*PBLIAPIGeoTaxServiceApi* | [**getIPDTaxByAddress**](docs/PBLIAPIGeoTaxServiceApi.md#getipdtaxbyaddress) | **GET** /geotax/v1/taxdistrict/ipd/byaddress | Get IPD Tax by Address
*PBLIAPIGeoTaxServiceApi* | [**getIPDTaxByAddressBatch**](docs/PBLIAPIGeoTaxServiceApi.md#getipdtaxbyaddressbatch) | **POST** /geotax/v1/taxdistrict/ipd/byaddress | Get IPD Tax for batch requests
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxByAddress**](docs/PBLIAPIGeoTaxServiceApi.md#getspecifictaxbyaddress) | **GET** /geotax/v1/tax/{taxRateTypeId}/byaddress | Get Tax By Address
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxByLocation**](docs/PBLIAPIGeoTaxServiceApi.md#getspecifictaxbylocation) | **GET** /geotax/v1/tax/{taxRateTypeId}/bylocation | Get Tax By Location
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxRateByAddress**](docs/PBLIAPIGeoTaxServiceApi.md#getspecifictaxratebyaddress) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Get Taxrate By Address
*PBLIAPIGeoTaxServiceApi* | [**getSpecificTaxRateByLocation**](docs/PBLIAPIGeoTaxServiceApi.md#getspecifictaxratebylocation) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Get Taxrate By Location
*PBLIAPIGeoTimeServiceApi* | [**getBatchTimezoneByAddress**](docs/PBLIAPIGeoTimeServiceApi.md#getbatchtimezonebyaddress) | **POST** /geotime/v1/timezone/byaddress | Timezone Batch by Address
*PBLIAPIGeoTimeServiceApi* | [**getBatchTimezoneByLocation**](docs/PBLIAPIGeoTimeServiceApi.md#getbatchtimezonebylocation) | **POST** /geotime/v1/timezone/bylocation | Timezone Batch by Location
*PBLIAPIGeoTimeServiceApi* | [**getTimezoneByAddress**](docs/PBLIAPIGeoTimeServiceApi.md#gettimezonebyaddress) | **GET** /geotime/v1/timezone/byaddress | Timezone By Address.
*PBLIAPIGeoTimeServiceApi* | [**getTimezoneByLocation**](docs/PBLIAPIGeoTimeServiceApi.md#gettimezonebylocation) | **GET** /geotime/v1/timezone/bylocation | Timezone By Location.
*PBLIAPIGeoZoneServiceApi* | [**getBasicBoundaryByAddress**](docs/PBLIAPIGeoZoneServiceApi.md#getbasicboundarybyaddress) | **GET** /geozone/v1/basicboundary/byaddress | Gets Basic Boundary by Address
*PBLIAPIGeoZoneServiceApi* | [**getBasicBoundaryByLocation**](docs/PBLIAPIGeoZoneServiceApi.md#getbasicboundarybylocation) | **GET** /geozone/v1/basicboundary/bylocation | Gets Basic Boundary by Location
*PBLIAPIGeoZoneServiceApi* | [**getPOIBoundaryByAddress**](docs/PBLIAPIGeoZoneServiceApi.md#getpoiboundarybyaddress) | **GET** /geozone/v1/poiboundary/byaddress | Get Point of Interests Boundary by Address
*PBLIAPIGeoZoneServiceApi* | [**getPOIBoundaryByAddressBatch**](docs/PBLIAPIGeoZoneServiceApi.md#getpoiboundarybyaddressbatch) | **POST** /geozone/v1/poiboundary/byaddress | Batch method for getting Point of Interests Boundary by Address
*PBLIAPIGeoZoneServiceApi* | [**getPOIBoundaryByLocation**](docs/PBLIAPIGeoZoneServiceApi.md#getpoiboundarybylocation) | **GET** /geozone/v1/poiboundary/bylocation | Get Point of Interests Boundary by Location
*PBLIAPIGeoZoneServiceApi* | [**getPOIBoundaryByLocationBatch**](docs/PBLIAPIGeoZoneServiceApi.md#getpoiboundarybylocationbatch) | **POST** /geozone/v1/poiboundary/bylocation | Batch method for getting Point of Interests Boundary by Location
*PBLIAPIGeoZoneServiceApi* | [**getTravelBoundaryByDistance**](docs/PBLIAPIGeoZoneServiceApi.md#gettravelboundarybydistance) | **GET** /geozone/v1/travelboundary/bydistance | Gets travel Boundary by Distance
*PBLIAPIGeoZoneServiceApi* | [**getTravelBoundaryByTime**](docs/PBLIAPIGeoZoneServiceApi.md#gettravelboundarybytime) | **GET** /geozone/v1/travelboundary/bytime | Gets travel Boundary by Time
*PBLIAPIGeocodeServiceApi* | [**geocode**](docs/PBLIAPIGeocodeServiceApi.md#geocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
*PBLIAPIGeocodeServiceApi* | [**geocodeBatch**](docs/PBLIAPIGeocodeServiceApi.md#geocodebatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
*PBLIAPIGeocodeServiceApi* | [**getCapabilities**](docs/PBLIAPIGeocodeServiceApi.md#getcapabilities) | **GET** /geocode-service/v1/transient/{datapackBundle}/capabilities | Gets Capabilities
*PBLIAPIGeocodeServiceApi* | [**getDictionaries**](docs/PBLIAPIGeocodeServiceApi.md#getdictionaries) | **GET** /geocode-service/v1/transient/{datapackBundle}/dictionaries | Gets installed Dictionaries
*PBLIAPIGeocodeServiceApi* | [**getPBKey**](docs/PBLIAPIGeocodeServiceApi.md#getpbkey) | **GET** /geocode-service/v1/key/byaddress | Gets PBKey
*PBLIAPIGeocodeServiceApi* | [**getPBKeys**](docs/PBLIAPIGeocodeServiceApi.md#getpbkeys) | **POST** /geocode-service/v1/key/byaddress | Gets PBKeys
*PBLIAPIGeocodeServiceApi* | [**keyLookup**](docs/PBLIAPIGeocodeServiceApi.md#keylookup) | **GET** /geocode-service/v1/keylookup | Get Address
*PBLIAPIGeocodeServiceApi* | [**keyLookupBatch**](docs/PBLIAPIGeocodeServiceApi.md#keylookupbatch) | **POST** /geocode-service/v1/keylookup | Get List of Address
*PBLIAPIGeocodeServiceApi* | [**reverseGeocodBatch**](docs/PBLIAPIGeocodeServiceApi.md#reversegeocodbatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode
*PBLIAPIGeocodeServiceApi* | [**reverseGeocode**](docs/PBLIAPIGeocodeServiceApi.md#reversegeocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode


## Documentation For Models

 - [PBAHJ](docs/PBAHJ.md)
 - [PBAHJList](docs/PBAHJList.md)
 - [PBAHJPlusPSAPResponse](docs/PBAHJPlusPSAPResponse.md)
 - [PBAHJmailingAddress](docs/PBAHJmailingAddress.md)
 - [PBAccuracy](docs/PBAccuracy.md)
 - [PBAddress](docs/PBAddress.md)
 - [PBAddressTime](docs/PBAddressTime.md)
 - [PBAge](docs/PBAge.md)
 - [PBAgeTheme](docs/PBAgeTheme.md)
 - [PBArea](docs/PBArea.md)
 - [PBAreaCodeInfo](docs/PBAreaCodeInfo.md)
 - [PBAssetsAndWealthTheme](docs/PBAssetsAndWealthTheme.md)
 - [PBAttitudesAndMotivationTheme](docs/PBAttitudesAndMotivationTheme.md)
 - [PBAutomobileTheme](docs/PBAutomobileTheme.md)
 - [PBBaseFloodElevation](docs/PBBaseFloodElevation.md)
 - [PBBasicBoundary](docs/PBBasicBoundary.md)
 - [PBBasicBoundaryAddress](docs/PBBasicBoundaryAddress.md)
 - [PBBirthday](docs/PBBirthday.md)
 - [PBBoundaries](docs/PBBoundaries.md)
 - [PBBoundary](docs/PBBoundary.md)
 - [PBBoundaryBuffer](docs/PBBoundaryBuffer.md)
 - [PBBoundaryPoint](docs/PBBoundaryPoint.md)
 - [PBBufferRelation](docs/PBBufferRelation.md)
 - [PBCandidate](docs/PBCandidate.md)
 - [PBCandidateRange](docs/PBCandidateRange.md)
 - [PBCandidateRangeUnit](docs/PBCandidateRangeUnit.md)
 - [PBCarrier](docs/PBCarrier.md)
 - [PBCarrierRouteAddressRequest](docs/PBCarrierRouteAddressRequest.md)
 - [PBCarrierRouteBoundaries](docs/PBCarrierRouteBoundaries.md)
 - [PBCarrierRoutePreference](docs/PBCarrierRoutePreference.md)
 - [PBCarrierRouteResponse](docs/PBCarrierRouteResponse.md)
 - [PBCarrierRouteResponseList](docs/PBCarrierRouteResponseList.md)
 - [PBCategory](docs/PBCategory.md)
 - [PBCategoryMetadata](docs/PBCategoryMetadata.md)
 - [PBCbsa](docs/PBCbsa.md)
 - [PBCensus](docs/PBCensus.md)
 - [PBCenter](docs/PBCenter.md)
 - [PBChannelPreferencesTheme](docs/PBChannelPreferencesTheme.md)
 - [PBCity](docs/PBCity.md)
 - [PBCommonAddress](docs/PBCommonAddress.md)
 - [PBCommonGeometry](docs/PBCommonGeometry.md)
 - [PBCommonState](docs/PBCommonState.md)
 - [PBCommunity](docs/PBCommunity.md)
 - [PBCommuterPatternsTheme](docs/PBCommuterPatternsTheme.md)
 - [PBConfiguredDictionaryResponse](docs/PBConfiguredDictionaryResponse.md)
 - [PBContactDetails](docs/PBContactDetails.md)
 - [PBContactPerson](docs/PBContactPerson.md)
 - [PBCost](docs/PBCost.md)
 - [PBCosts](docs/PBCosts.md)
 - [PBCountrySupport](docs/PBCountrySupport.md)
 - [PBCounty](docs/PBCounty.md)
 - [PBCoverage](docs/PBCoverage.md)
 - [PBCrimeBoundary](docs/PBCrimeBoundary.md)
 - [PBCrimeIndexTheme](docs/PBCrimeIndexTheme.md)
 - [PBCrimeRiskByAddressRequest](docs/PBCrimeRiskByAddressRequest.md)
 - [PBCrimeRiskByLocationRequest](docs/PBCrimeRiskByLocationRequest.md)
 - [PBCrimeRiskLocationResponse](docs/PBCrimeRiskLocationResponse.md)
 - [PBCrimeRiskLocationResponseList](docs/PBCrimeRiskLocationResponseList.md)
 - [PBCrimeRiskPreferences](docs/PBCrimeRiskPreferences.md)
 - [PBCrimeRiskResponse](docs/PBCrimeRiskResponse.md)
 - [PBCrimeRiskResponseList](docs/PBCrimeRiskResponseList.md)
 - [PBCrs](docs/PBCrs.md)
 - [PBCustomObject](docs/PBCustomObject.md)
 - [PBCustomObjectMember](docs/PBCustomObjectMember.md)
 - [PBCustomPreferences](docs/PBCustomPreferences.md)
 - [PBDateTimeEarthQuake](docs/PBDateTimeEarthQuake.md)
 - [PBDemographicsThemes](docs/PBDemographicsThemes.md)
 - [PBDemographicsThemesV2](docs/PBDemographicsThemesV2.md)
 - [PBDemographicsV2](docs/PBDemographicsV2.md)
 - [PBDepth](docs/PBDepth.md)
 - [PBDeviceStatusNetwork](docs/PBDeviceStatusNetwork.md)
 - [PBDictionary](docs/PBDictionary.md)
 - [PBDirectionGeometry](docs/PBDirectionGeometry.md)
 - [PBDistance](docs/PBDistance.md)
 - [PBDistanceToBorder](docs/PBDistanceToBorder.md)
 - [PBDistanceToFloodHazardAddressRequest](docs/PBDistanceToFloodHazardAddressRequest.md)
 - [PBDistanceToFloodHazardLocationRequest](docs/PBDistanceToFloodHazardLocationRequest.md)
 - [PBDistanceToFloodHazardLocationResponse](docs/PBDistanceToFloodHazardLocationResponse.md)
 - [PBDistanceToFloodHazardResponse](docs/PBDistanceToFloodHazardResponse.md)
 - [PBDistrictType](docs/PBDistrictType.md)
 - [PBDomesticUltimateBusiness](docs/PBDomesticUltimateBusiness.md)
 - [PBEarthquakeEvent](docs/PBEarthquakeEvent.md)
 - [PBEarthquakeEventsResponse](docs/PBEarthquakeEventsResponse.md)
 - [PBEarthquakeHistory](docs/PBEarthquakeHistory.md)
 - [PBEarthquakeLocation](docs/PBEarthquakeLocation.md)
 - [PBEarthquakeRiskByAddressRequest](docs/PBEarthquakeRiskByAddressRequest.md)
 - [PBEarthquakeRiskByLocationRequest](docs/PBEarthquakeRiskByLocationRequest.md)
 - [PBEarthquakeRiskLocationResponse](docs/PBEarthquakeRiskLocationResponse.md)
 - [PBEarthquakeRiskLocationResponseList](docs/PBEarthquakeRiskLocationResponseList.md)
 - [PBEarthquakeRiskPreferences](docs/PBEarthquakeRiskPreferences.md)
 - [PBEarthquakeRiskResponse](docs/PBEarthquakeRiskResponse.md)
 - [PBEarthquakeRiskResponseList](docs/PBEarthquakeRiskResponseList.md)
 - [PBEducation](docs/PBEducation.md)
 - [PBEducationTheme](docs/PBEducationTheme.md)
 - [PBEducationalAttainmentTheme](docs/PBEducationalAttainmentTheme.md)
 - [PBEmail](docs/PBEmail.md)
 - [PBEmployeeCount](docs/PBEmployeeCount.md)
 - [PBEmployment](docs/PBEmployment.md)
 - [PBEmploymentTheme](docs/PBEmploymentTheme.md)
 - [PBEnd](docs/PBEnd.md)
 - [PBEthnicityTheme](docs/PBEthnicityTheme.md)
 - [PBEventsCount](docs/PBEventsCount.md)
 - [PBExpenditureTheme](docs/PBExpenditureTheme.md)
 - [PBField](docs/PBField.md)
 - [PBFieldV2](docs/PBFieldV2.md)
 - [PBFieldsMatching](docs/PBFieldsMatching.md)
 - [PBFinancialProductsTheme](docs/PBFinancialProductsTheme.md)
 - [PBFireDepartment](docs/PBFireDepartment.md)
 - [PBFireDepartmentContactDetails](docs/PBFireDepartmentContactDetails.md)
 - [PBFireEvent](docs/PBFireEvent.md)
 - [PBFireEventsResponse](docs/PBFireEventsResponse.md)
 - [PBFireHistory](docs/PBFireHistory.md)
 - [PBFireRiskByAddressRequest](docs/PBFireRiskByAddressRequest.md)
 - [PBFireRiskByLocationRequest](docs/PBFireRiskByLocationRequest.md)
 - [PBFireRiskLocationResponse](docs/PBFireRiskLocationResponse.md)
 - [PBFireRiskLocationResponseList](docs/PBFireRiskLocationResponseList.md)
 - [PBFireRiskResponse](docs/PBFireRiskResponse.md)
 - [PBFireRiskResponseList](docs/PBFireRiskResponseList.md)
 - [PBFireShed](docs/PBFireShed.md)
 - [PBFireStation](docs/PBFireStation.md)
 - [PBFireStationContactDetails](docs/PBFireStationContactDetails.md)
 - [PBFireStations](docs/PBFireStations.md)
 - [PBFireStationsLocation](docs/PBFireStationsLocation.md)
 - [PBFloodBoundary](docs/PBFloodBoundary.md)
 - [PBFloodHazardPreferences](docs/PBFloodHazardPreferences.md)
 - [PBFloodRiskByAddressRequest](docs/PBFloodRiskByAddressRequest.md)
 - [PBFloodRiskByLocationRequest](docs/PBFloodRiskByLocationRequest.md)
 - [PBFloodRiskLocationResponse](docs/PBFloodRiskLocationResponse.md)
 - [PBFloodRiskLocationResponseList](docs/PBFloodRiskLocationResponseList.md)
 - [PBFloodRiskPreferences](docs/PBFloodRiskPreferences.md)
 - [PBFloodRiskResponse](docs/PBFloodRiskResponse.md)
 - [PBFloodRiskResponseList](docs/PBFloodRiskResponseList.md)
 - [PBFloodZone](docs/PBFloodZone.md)
 - [PBFreeOrReducedPriceLunches](docs/PBFreeOrReducedPriceLunches.md)
 - [PBGenderTheme](docs/PBGenderTheme.md)
 - [PBGeoEnrichMetadataResponse](docs/PBGeoEnrichMetadataResponse.md)
 - [PBGeoEnrichResponse](docs/PBGeoEnrichResponse.md)
 - [PBGeoIdentityName](docs/PBGeoIdentityName.md)
 - [PBGeoIdentityPlace](docs/PBGeoIdentityPlace.md)
 - [PBGeoIdentityResponse](docs/PBGeoIdentityResponse.md)
 - [PBGeoLocationAccessPoint](docs/PBGeoLocationAccessPoint.md)
 - [PBGeoLocationCountry](docs/PBGeoLocationCountry.md)
 - [PBGeoLocationDeviceSatus](docs/PBGeoLocationDeviceSatus.md)
 - [PBGeoLocationFixedLine](docs/PBGeoLocationFixedLine.md)
 - [PBGeoLocationFixedLineCountry](docs/PBGeoLocationFixedLineCountry.md)
 - [PBGeoLocationIpAddr](docs/PBGeoLocationIpAddr.md)
 - [PBGeoLocationPlace](docs/PBGeoLocationPlace.md)
 - [PBGeoLocationState](docs/PBGeoLocationState.md)
 - [PBGeoPos](docs/PBGeoPos.md)
 - [PBGeoPostGeometry](docs/PBGeoPostGeometry.md)
 - [PBGeoPropertyAddressRequest](docs/PBGeoPropertyAddressRequest.md)
 - [PBGeoPropertyResponse](docs/PBGeoPropertyResponse.md)
 - [PBGeoPropertyResponses](docs/PBGeoPropertyResponses.md)
 - [PBGeoRiskBoundaries](docs/PBGeoRiskBoundaries.md)
 - [PBGeoRiskCrimeTheme](docs/PBGeoRiskCrimeTheme.md)
 - [PBGeoRiskGeometry](docs/PBGeoRiskGeometry.md)
 - [PBGeoRiskLocations](docs/PBGeoRiskLocations.md)
 - [PBGeoRouteResponse](docs/PBGeoRouteResponse.md)
 - [PBGeoTaxLocations](docs/PBGeoTaxLocations.md)
 - [PBGeoTaxRateLocations](docs/PBGeoTaxRateLocations.md)
 - [PBGeoZoneGeometry](docs/PBGeoZoneGeometry.md)
 - [PBGeocodeAddress](docs/PBGeocodeAddress.md)
 - [PBGeocodeCapabilitiesResponse](docs/PBGeocodeCapabilitiesResponse.md)
 - [PBGeocodeCustomPreferences](docs/PBGeocodeCustomPreferences.md)
 - [PBGeocodePreferences](docs/PBGeocodePreferences.md)
 - [PBGeocodeRequest](docs/PBGeocodeRequest.md)
 - [PBGeocodeRequestAddress](docs/PBGeocodeRequestAddress.md)
 - [PBGeocodeServiceResponse](docs/PBGeocodeServiceResponse.md)
 - [PBGeocodeServiceResponseList](docs/PBGeocodeServiceResponseList.md)
 - [PBGeometry](docs/PBGeometry.md)
 - [PBGeosearchLocation](docs/PBGeosearchLocation.md)
 - [PBGeosearchLocations](docs/PBGeosearchLocations.md)
 - [PBGlobalUltimateBusiness](docs/PBGlobalUltimateBusiness.md)
 - [PBGradeLevelsTaught](docs/PBGradeLevelsTaught.md)
 - [PBGreatschools](docs/PBGreatschools.md)
 - [PBGrid](docs/PBGrid.md)
 - [PBHealthTheme](docs/PBHealthTheme.md)
 - [PBHouseholdFinance](docs/PBHouseholdFinance.md)
 - [PBHouseholdSizeTheme](docs/PBHouseholdSizeTheme.md)
 - [PBHouseholdsTheme](docs/PBHouseholdsTheme.md)
 - [PBHousingTheme](docs/PBHousingTheme.md)
 - [PBIPDTaxByAddressBatchRequest](docs/PBIPDTaxByAddressBatchRequest.md)
 - [PBIPDTaxJurisdiction](docs/PBIPDTaxJurisdiction.md)
 - [PBIdentity](docs/PBIdentity.md)
 - [PBIdentityDetail](docs/PBIdentityDetail.md)
 - [PBIncomeTheme](docs/PBIncomeTheme.md)
 - [PBIncomeThemeV2](docs/PBIncomeThemeV2.md)
 - [PBIndexVariable](docs/PBIndexVariable.md)
 - [PBIndividualValueVariable](docs/PBIndividualValueVariable.md)
 - [PBIndividualValueVariableV2](docs/PBIndividualValueVariableV2.md)
 - [PBInputParameter](docs/PBInputParameter.md)
 - [PBInterest](docs/PBInterest.md)
 - [PBIntersection](docs/PBIntersection.md)
 - [PBIntersectionResponse](docs/PBIntersectionResponse.md)
 - [PBIpInfo](docs/PBIpInfo.md)
 - [PBIpd](docs/PBIpd.md)
 - [PBKeyLookupRequest](docs/PBKeyLookupRequest.md)
 - [PBKeys](docs/PBKeys.md)
 - [PBLatLongFields](docs/PBLatLongFields.md)
 - [PBLifeStyleTheme](docs/PBLifeStyleTheme.md)
 - [PBLifestyle](docs/PBLifestyle.md)
 - [PBLocation](docs/PBLocation.md)
 - [PBLocationTime](docs/PBLocationTime.md)
 - [PBMagnitude](docs/PBMagnitude.md)
 - [PBMaritalStatusTheme](docs/PBMaritalStatusTheme.md)
 - [PBMatch](docs/PBMatch.md)
 - [PBMatchedAddress](docs/PBMatchedAddress.md)
 - [PBMatrix](docs/PBMatrix.md)
 - [PBMcd](docs/PBMcd.md)
 - [PBNeighborhood](docs/PBNeighborhood.md)
 - [PBNetwork](docs/PBNetwork.md)
 - [PBOperation](docs/PBOperation.md)
 - [PBOrganizationType](docs/PBOrganizationType.md)
 - [PBOutputParameter](docs/PBOutputParameter.md)
 - [PBPBKeyAddressRequest](docs/PBPBKeyAddressRequest.md)
 - [PBPBKeyResponse](docs/PBPBKeyResponse.md)
 - [PBPBKeyResponseList](docs/PBPBKeyResponseList.md)
 - [PBPOIBoundaryAddressRequest](docs/PBPOIBoundaryAddressRequest.md)
 - [PBPOIBoundaryLocationRequest](docs/PBPOIBoundaryLocationRequest.md)
 - [PBPOIBoundaryLocations](docs/PBPOIBoundaryLocations.md)
 - [PBPOIBoundaryResponse](docs/PBPOIBoundaryResponse.md)
 - [PBPOIByGeometryRequest](docs/PBPOIByGeometryRequest.md)
 - [PBPOIPlaces](docs/PBPOIPlaces.md)
 - [PBPSAPResponse](docs/PBPSAPResponse.md)
 - [PBParcel](docs/PBParcel.md)
 - [PBParcelBoundary](docs/PBParcelBoundary.md)
 - [PBParentBusiness](docs/PBParentBusiness.md)
 - [PBPbKey](docs/PBPbKey.md)
 - [PBPhoto](docs/PBPhoto.md)
 - [PBPlaceByLocations](docs/PBPlaceByLocations.md)
 - [PBPlaceByLocationsLocation](docs/PBPlaceByLocationsLocation.md)
 - [PBPlaceLocation](docs/PBPlaceLocation.md)
 - [PBPlaceLocationName](docs/PBPlaceLocationName.md)
 - [PBPoi](docs/PBPoi.md)
 - [PBPoiBoundary](docs/PBPoiBoundary.md)
 - [PBPoiBoundaryPreferences](docs/PBPoiBoundaryPreferences.md)
 - [PBPoiClassification](docs/PBPoiClassification.md)
 - [PBPoiContactDetails](docs/PBPoiContactDetails.md)
 - [PBPoiCount](docs/PBPoiCount.md)
 - [PBPoiCountRequest](docs/PBPoiCountRequest.md)
 - [PBPoints](docs/PBPoints.md)
 - [PBPois](docs/PBPois.md)
 - [PBPolygonGeometry](docs/PBPolygonGeometry.md)
 - [PBPopulationTheme](docs/PBPopulationTheme.md)
 - [PBPreferencTimeZone](docs/PBPreferencTimeZone.md)
 - [PBPreferences](docs/PBPreferences.md)
 - [PBPrimaryZone](docs/PBPrimaryZone.md)
 - [PBProfile](docs/PBProfile.md)
 - [PBProperties](docs/PBProperties.md)
 - [PBProperty](docs/PBProperty.md)
 - [PBProxy](docs/PBProxy.md)
 - [PBPurchasingBehaviorTheme](docs/PBPurchasingBehaviorTheme.md)
 - [PBRaceAndEthnicityTheme](docs/PBRaceAndEthnicityTheme.md)
 - [PBRaceTheme](docs/PBRaceTheme.md)
 - [PBRangeVariable](docs/PBRangeVariable.md)
 - [PBRangeVariableV2](docs/PBRangeVariableV2.md)
 - [PBRate](docs/PBRate.md)
 - [PBRateCenterResponse](docs/PBRateCenterResponse.md)
 - [PBReturnFieldsDescriptor](docs/PBReturnFieldsDescriptor.md)
 - [PBReverseGeocodeRequest](docs/PBReverseGeocodeRequest.md)
 - [PBRisk](docs/PBRisk.md)
 - [PBRiskAddress](docs/PBRiskAddress.md)
 - [PBRoad](docs/PBRoad.md)
 - [PBRouteBoundary](docs/PBRouteBoundary.md)
 - [PBRouteDelivery](docs/PBRouteDelivery.md)
 - [PBRouteDirection](docs/PBRouteDirection.md)
 - [PBRouteDirections](docs/PBRouteDirections.md)
 - [PBRouteGeometry](docs/PBRouteGeometry.md)
 - [PBSalesTax](docs/PBSalesTax.md)
 - [PBSalesTaxRate](docs/PBSalesTaxRate.md)
 - [PBSalesVolume](docs/PBSalesVolume.md)
 - [PBSchool](docs/PBSchool.md)
 - [PBSchoolDistrict](docs/PBSchoolDistrict.md)
 - [PBSchoolProfile](docs/PBSchoolProfile.md)
 - [PBSchoolRanking](docs/PBSchoolRanking.md)
 - [PBSchoolsNearByResponse](docs/PBSchoolsNearByResponse.md)
 - [PBSegmentation](docs/PBSegmentation.md)
 - [PBSegmentationThemes](docs/PBSegmentationThemes.md)
 - [PBShoreLineDistance](docs/PBShoreLineDistance.md)
 - [PBSic](docs/PBSic.md)
 - [PBSicMetadata](docs/PBSicMetadata.md)
 - [PBSiteDetails](docs/PBSiteDetails.md)
 - [PBSpecialPurposeDistrict](docs/PBSpecialPurposeDistrict.md)
 - [PBSpecialPurposeDistrictTax](docs/PBSpecialPurposeDistrictTax.md)
 - [PBSpecialPurposeDistrictTaxRate](docs/PBSpecialPurposeDistrictTaxRate.md)
 - [PBSpeedLimit](docs/PBSpeedLimit.md)
 - [PBSpeedRoad](docs/PBSpeedRoad.md)
 - [PBStart](docs/PBStart.md)
 - [PBStartEndPoint](docs/PBStartEndPoint.md)
 - [PBStatus](docs/PBStatus.md)
 - [PBStudentEthnicity](docs/PBStudentEthnicity.md)
 - [PBSupplyAndDemandTheme](docs/PBSupplyAndDemandTheme.md)
 - [PBSupportLevel](docs/PBSupportLevel.md)
 - [PBTaxAddress](docs/PBTaxAddress.md)
 - [PBTaxAddressRequest](docs/PBTaxAddressRequest.md)
 - [PBTaxBatchLocationResponse](docs/PBTaxBatchLocationResponse.md)
 - [PBTaxBatchResponse](docs/PBTaxBatchResponse.md)
 - [PBTaxCounty](docs/PBTaxCounty.md)
 - [PBTaxDistrictResponse](docs/PBTaxDistrictResponse.md)
 - [PBTaxDistrictResponseList](docs/PBTaxDistrictResponseList.md)
 - [PBTaxJurisdiction](docs/PBTaxJurisdiction.md)
 - [PBTaxLocationPreferences](docs/PBTaxLocationPreferences.md)
 - [PBTaxLocationRequest](docs/PBTaxLocationRequest.md)
 - [PBTaxLocationResponses](docs/PBTaxLocationResponses.md)
 - [PBTaxPlace](docs/PBTaxPlace.md)
 - [PBTaxRateAddress](docs/PBTaxRateAddress.md)
 - [PBTaxRateAddressRequest](docs/PBTaxRateAddressRequest.md)
 - [PBTaxRateBatchLocationResponse](docs/PBTaxRateBatchLocationResponse.md)
 - [PBTaxRateBatchResponse](docs/PBTaxRateBatchResponse.md)
 - [PBTaxRateLocationRequest](docs/PBTaxRateLocationRequest.md)
 - [PBTaxRateLocationResponses](docs/PBTaxRateLocationResponses.md)
 - [PBTaxRateResponse](docs/PBTaxRateResponse.md)
 - [PBTaxRateResponses](docs/PBTaxRateResponses.md)
 - [PBTaxResponse](docs/PBTaxResponse.md)
 - [PBTaxResponses](docs/PBTaxResponses.md)
 - [PBTaxState](docs/PBTaxState.md)
 - [PBTime](docs/PBTime.md)
 - [PBTimezone](docs/PBTimezone.md)
 - [PBTimezoneAddressRequest](docs/PBTimezoneAddressRequest.md)
 - [PBTimezoneLocation](docs/PBTimezoneLocation.md)
 - [PBTimezoneLocationRequest](docs/PBTimezoneLocationRequest.md)
 - [PBTimezoneLocationResponse](docs/PBTimezoneLocationResponse.md)
 - [PBTimezoneResponse](docs/PBTimezoneResponse.md)
 - [PBTopic](docs/PBTopic.md)
 - [PBTravelBoundaries](docs/PBTravelBoundaries.md)
 - [PBTravelBoundary](docs/PBTravelBoundary.md)
 - [PBTravelCostMatrixResponse](docs/PBTravelCostMatrixResponse.md)
 - [PBType](docs/PBType.md)
 - [PBUnit](docs/PBUnit.md)
 - [PBUrl](docs/PBUrl.md)
 - [PBUseTax](docs/PBUseTax.md)
 - [PBUseTaxRate](docs/PBUseTaxRate.md)
 - [PBWaterBody](docs/PBWaterBody.md)
 - [PBWaterBodyLocationResponse](docs/PBWaterBodyLocationResponse.md)
 - [PBWaterBodyResponse](docs/PBWaterBodyResponse.md)


## Documentation For Authorization


## oAuth2Password

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: N/A


## Author




