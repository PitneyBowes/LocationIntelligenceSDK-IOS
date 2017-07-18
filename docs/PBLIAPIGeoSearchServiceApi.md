# PBLIAPIGeoSearchServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geoSearch**](PBLIAPIGeoSearchServiceApi.md#geosearch) | **GET** /geosearch/v1/locations | Gets LocationList


# **geoSearch**
```objc
-(NSNumber*) geoSearchWithSearchText: (NSString*) searchText
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    maxCandidates: (NSString*) maxCandidates
    country: (NSString*) country
    matchOnAddressNumber: (NSString*) matchOnAddressNumber
    autoDetectLocation: (NSString*) autoDetectLocation
    ipAddress: (NSString*) ipAddress
        completionHandler: (void (^)(PBLocations* output, NSError* error)) handler;
```

Gets LocationList

Gets LocationList

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* searchText = @"searchText_example"; // The input to be searched.
NSString* latitude = @"latitude_example"; // Latitude of the location. Either the latitude or the longitude must be provided. (optional)
NSString* longitude = @"longitude_example"; // Longitude of the location. Either the latitude or the longitude must be provided. (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of addresses that can be retrieved. (optional)
NSString* country = @"country_example"; // Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
NSString* matchOnAddressNumber = @"matchOnAddressNumber_example"; // Option so that we force api to match on address number (optional)
NSString* autoDetectLocation = @"true"; // Option to allow API to detect origin of API request automatically (optional) (default to true)
NSString* ipAddress = @"ipAddress_example"; //  (optional)

PBLIAPIGeoSearchServiceApi*apiInstance = [[PBLIAPIGeoSearchServiceApi alloc] init];

// Gets LocationList
[apiInstance geoSearchWithSearchText:searchText
              latitude:latitude
              longitude:longitude
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              maxCandidates:maxCandidates
              country:country
              matchOnAddressNumber:matchOnAddressNumber
              autoDetectLocation:autoDetectLocation
              ipAddress:ipAddress
          completionHandler: ^(PBLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoSearchServiceApi->geoSearch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchText** | **NSString***| The input to be searched. | 
 **latitude** | **NSString***| Latitude of the location. Either the latitude or the longitude must be provided. | [optional] 
 **longitude** | **NSString***| Longitude of the location. Either the latitude or the longitude must be provided. | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of addresses that can be retrieved. | [optional] 
 **country** | **NSString***| Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API | [optional] 
 **matchOnAddressNumber** | **NSString***| Option so that we force api to match on address number | [optional] 
 **autoDetectLocation** | **NSString***| Option to allow API to detect origin of API request automatically | [optional] [default to true]
 **ipAddress** | **NSString***|  | [optional] 

### Return type

[**PBLocations***](PBLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

