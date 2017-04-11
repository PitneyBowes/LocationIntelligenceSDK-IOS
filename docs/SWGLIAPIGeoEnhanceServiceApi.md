# SWGLIAPIGeoEnhanceServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddress**](SWGLIAPIGeoEnhanceServiceApi.md#getaddress) | **GET** /geoenhance/v1/address/bylocation | Address By Location.
[**getEntityByLocation**](SWGLIAPIGeoEnhanceServiceApi.md#getentitybylocation) | **GET** /geoenhance/v1/poi/bylocation | Points Of Interest By Location.
[**getPlaceByLocation**](SWGLIAPIGeoEnhanceServiceApi.md#getplacebylocation) | **GET** /geoenhance/v1/place/bylocation | Place By Location.
[**getTimezoneByLocation**](SWGLIAPIGeoEnhanceServiceApi.md#gettimezonebylocation) | **GET** /geoenhance/v1/timezone/bylocation | Timezone By Location.


# **getAddress**
```objc
-(NSNumber*) getAddressWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
        completionHandler: (void (^)(SWGLocations* output, NSError* error)) handler;
```

Address By Location.

This service accepts longitude and latitude as input and returns an address for that location.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as feet, kilometers, miles or meters. (optional)

SWGLIAPIGeoEnhanceServiceApi*apiInstance = [[SWGLIAPIGeoEnhanceServiceApi alloc] init];

// Address By Location.
[apiInstance getAddressWithLatitude:latitude
              longitude:longitude
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
          completionHandler: ^(SWGLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoEnhanceServiceApi->getAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **NSString***| Latitude of the location. | 
 **longitude** | **NSString***| Longitude of the location. | 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as feet, kilometers, miles or meters. | [optional] 

### Return type

[**SWGLocations***](SWGLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityByLocation**
```objc
-(NSNumber*) getEntityByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    brandName: (NSString*) brandName
    category: (NSString*) category
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    searchDataset: (NSString*) searchDataset
    searchPriority: (NSString*) searchPriority
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    mode: (NSString*) mode
        completionHandler: (void (^)(SWGLocations* output, NSError* error)) handler;
```

Points Of Interest By Location.

Identifies and retrieves Points of Interest that exist around a specific location (ordered by distance from the location).

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* brandName = @"brandName_example"; // Specifies the name of the brand to be searched. Also performs search on partially specified brand names. (optional)
NSString* category = @"category_example"; // Specific Category/Categories for which the POI search is performed. (Categories 10020102,10020103 are for Chinese and Italian Restaurants .https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/EightDigitPOICategoryCodes.xlsx  (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* searchDataset = @"searchDataset_example"; // The datasets upon which the POI search can be performed. (optional)
NSString* searchPriority = @"searchPriority_example"; // Search order of POI datasets mentioned in searchDataset. (optional)
NSString* travelTime = @"travelTime_example"; // Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in 'travelTimeUnit'. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
NSString* travelDistance = @"travelDistance_example"; // Specifies the search boundary in terms of distance mentioned in 'travelDistanceUnit'. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
NSString* mode = @"mode_example"; // Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time.Allowed values driving and walking (optional)

SWGLIAPIGeoEnhanceServiceApi*apiInstance = [[SWGLIAPIGeoEnhanceServiceApi alloc] init];

// Points Of Interest By Location.
[apiInstance getEntityByLocationWithLongitude:longitude
              latitude:latitude
              brandName:brandName
              category:category
              maxCandidates:maxCandidates
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              searchDataset:searchDataset
              searchPriority:searchPriority
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              mode:mode
          completionHandler: ^(SWGLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoEnhanceServiceApi->getEntityByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **brandName** | **NSString***| Specifies the name of the brand to be searched. Also performs search on partially specified brand names. | [optional] 
 **category** | **NSString***| Specific Category/Categories for which the POI search is performed. (Categories 10020102,10020103 are for Chinese and Italian Restaurants .https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/EightDigitPOICategoryCodes.xlsx  | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **searchDataset** | **NSString***| The datasets upon which the POI search can be performed. | [optional] 
 **searchPriority** | **NSString***| Search order of POI datasets mentioned in searchDataset. | [optional] 
 **travelTime** | **NSString***| Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. | [optional] 
 **travelTimeUnit** | **NSString***| Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds | [optional] 
 **travelDistance** | **NSString***| Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. | [optional] 
 **travelDistanceUnit** | **NSString***| Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters | [optional] 
 **mode** | **NSString***| Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time.Allowed values driving and walking | [optional] 

### Return type

[**SWGLocations***](SWGLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaceByLocation**
```objc
-(NSNumber*) getPlaceByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    levelHint: (NSString*) levelHint
        completionHandler: (void (^)(SWGPlaceByLocations* output, NSError* error)) handler;
```

Place By Location.

Identifies and retrieves the nearest neighborhood around a specific location. This GeoEnhance service accepts latitude & longitude as input and returns a place name.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* levelHint = @"levelHint_example"; // Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 (optional)

SWGLIAPIGeoEnhanceServiceApi*apiInstance = [[SWGLIAPIGeoEnhanceServiceApi alloc] init];

// Place By Location.
[apiInstance getPlaceByLocationWithLongitude:longitude
              latitude:latitude
              levelHint:levelHint
          completionHandler: ^(SWGPlaceByLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoEnhanceServiceApi->getPlaceByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **levelHint** | **NSString***| Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 | [optional] 

### Return type

[**SWGPlaceByLocations***](SWGPlaceByLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimezoneByLocation**
```objc
-(NSNumber*) getTimezoneByLocationWithTimestamp: (NSString*) timestamp
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(SWGTimezone* output, NSError* error)) handler;
```

Timezone By Location.

Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* timestamp = @"timestamp_example"; // Timestamp in miliseconds.
NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

SWGLIAPIGeoEnhanceServiceApi*apiInstance = [[SWGLIAPIGeoEnhanceServiceApi alloc] init];

// Timezone By Location.
[apiInstance getTimezoneByLocationWithTimestamp:timestamp
              longitude:longitude
              latitude:latitude
          completionHandler: ^(SWGTimezone* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoEnhanceServiceApi->getTimezoneByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **NSString***| Timestamp in miliseconds. | 
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**SWGTimezone***](SWGTimezone.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

