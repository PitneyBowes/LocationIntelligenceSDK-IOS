# SWGLIAPIGeoRiskServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrimeRiskByAddress**](SWGLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddress) | **GET** /georisk/v1/crime/byaddress | Gets CrimeRiskResponse
[**getCrimeRiskByLocation**](SWGLIAPIGeoRiskServiceApi.md#getcrimeriskbylocation) | **GET** /georisk/v1/crime/bylocation | Gets CrimeRiskResponse
[**getEarthquakeRiskByAddress**](SWGLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddress) | **GET** /georisk/v1/earthquake/byaddress | Gets EarthquakeRiskResponse
[**getEarthquakeRiskByLocation**](SWGLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocation) | **GET** /georisk/v1/earthquake/bylocation | Gets EarthquakeRiskResponse
[**getFireRiskByAddress**](SWGLIAPIGeoRiskServiceApi.md#getfireriskbyaddress) | **GET** /georisk/v1/fire/byaddress | Gets FireRiskResponse
[**getFireRiskByLocation**](SWGLIAPIGeoRiskServiceApi.md#getfireriskbylocation) | **GET** /georisk/v1/fire/bylocation | Gets FireRiskResponse
[**getFireStationByAddress**](SWGLIAPIGeoRiskServiceApi.md#getfirestationbyaddress) | **GET** /georisk/v1/firestation/byaddress | Gets FireStationResponse
[**getFireStationByLocation**](SWGLIAPIGeoRiskServiceApi.md#getfirestationbylocation) | **GET** /georisk/v1/firestation/bylocation | Gets FireStationResponse
[**getFloodRiskByAddress**](SWGLIAPIGeoRiskServiceApi.md#getfloodriskbyaddress) | **GET** /georisk/v1/flood/byaddress | Gets FloodRiskResponse
[**getFloodRiskByLocation**](SWGLIAPIGeoRiskServiceApi.md#getfloodriskbylocation) | **GET** /georisk/v1/flood/bylocation | Gets FloodRiskResponse


# **getCrimeRiskByAddress**
```objc
-(NSNumber*) getCrimeRiskByAddressWithAddress: (NSString*) address
    type: (NSString*) type
        completionHandler: (void (^)(SWGCrimeRiskResponse* output, NSError* error)) handler;
```

Gets CrimeRiskResponse

Returns the crime data or crime indexes for a given address input.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text.
NSString* type = @"type_example"; // Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with 'all' as default.) (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets CrimeRiskResponse
[apiInstance getCrimeRiskByAddressWithAddress:address
              type:type
          completionHandler: ^(SWGCrimeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getCrimeRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text. | 
 **type** | **NSString***| Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with &#39;all&#39; as default.) | [optional] 

### Return type

[**SWGCrimeRiskResponse***](SWGCrimeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByLocation**
```objc
-(NSNumber*) getCrimeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    type: (NSString*) type
        completionHandler: (void (^)(SWGCrimeRiskResponse* output, NSError* error)) handler;
```

Gets CrimeRiskResponse

Returns the crime data or crime indexes for a given location.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* type = @"type_example"; // Refers to crime type. Valid values are following 11 crime types with 'all' as default (more than one can also be given as comma separated types) (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets CrimeRiskResponse
[apiInstance getCrimeRiskByLocationWithLongitude:longitude
              latitude:latitude
              type:type
          completionHandler: ^(SWGCrimeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getCrimeRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **type** | **NSString***| Refers to crime type. Valid values are following 11 crime types with &#39;all&#39; as default (more than one can also be given as comma separated types) | [optional] 

### Return type

[**SWGCrimeRiskResponse***](SWGCrimeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByAddress**
```objc
-(NSNumber*) getEarthquakeRiskByAddressWithAddress: (NSString*) address
    richterValue: (NSString*) richterValue
        completionHandler: (void (^)(SWGEarthquakeRiskResponse* output, NSError* error)) handler;
```

Gets EarthquakeRiskResponse

Returns the count of earthquake events for various richter measurements and values for an input address.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text
NSString* richterValue = @"richterValue_example"; // Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets EarthquakeRiskResponse
[apiInstance getEarthquakeRiskByAddressWithAddress:address
              richterValue:richterValue
          completionHandler: ^(SWGEarthquakeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getEarthquakeRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text | 
 **richterValue** | **NSString***| Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 

### Return type

[**SWGEarthquakeRiskResponse***](SWGEarthquakeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByLocation**
```objc
-(NSNumber*) getEarthquakeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    richterValue: (NSString*) richterValue
        completionHandler: (void (^)(SWGEarthquakeRiskResponse* output, NSError* error)) handler;
```

Gets EarthquakeRiskResponse

Gets EarthquakeRiskResponse

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* richterValue = @"richterValue_example"; // Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets EarthquakeRiskResponse
[apiInstance getEarthquakeRiskByLocationWithLongitude:longitude
              latitude:latitude
              richterValue:richterValue
          completionHandler: ^(SWGEarthquakeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getEarthquakeRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **richterValue** | **NSString***| Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 

### Return type

[**SWGEarthquakeRiskResponse***](SWGEarthquakeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddress**
```objc
-(NSNumber*) getFireRiskByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(SWGFireRiskResponse* output, NSError* error)) handler;
```

Gets FireRiskResponse

Returns the fire data based on address input.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets FireRiskResponse
[apiInstance getFireRiskByAddressWithAddress:address
          completionHandler: ^(SWGFireRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getFireRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text | 

### Return type

[**SWGFireRiskResponse***](SWGFireRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByLocation**
```objc
-(NSNumber*) getFireRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(SWGFireRiskResponse* output, NSError* error)) handler;
```

Gets FireRiskResponse

Returns the fire data based on location input.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets FireRiskResponse
[apiInstance getFireRiskByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(SWGFireRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getFireRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 

### Return type

[**SWGFireRiskResponse***](SWGFireRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireStationByAddress**
```objc
-(NSNumber*) getFireStationByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
        completionHandler: (void (^)(SWGFireStations* output, NSError* error)) handler;
```

Gets FireStationResponse

Returns the nearest Firestations from an input address.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
NSString* travelTime = @"travelTime_example"; // Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* sortBy = @"sortBy_example"; // Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets FireStationResponse
[apiInstance getFireStationByAddressWithAddress:address
              maxCandidates:maxCandidates
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              sortBy:sortBy
          completionHandler: ^(SWGFireStations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getFireStationByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **maxCandidates** | **NSString***| Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. | [optional] 
 **travelTime** | **NSString***| Max travel time from input location to fire station. Maximum allowed is 2 hours | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Maximum travel distance from input location to fire station. Maximum allowed is 50 miles | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **sortBy** | **NSString***| Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. | [optional] 

### Return type

[**SWGFireStations***](SWGFireStations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireStationByLocation**
```objc
-(NSNumber*) getFireStationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
        completionHandler: (void (^)(SWGFireStations* output, NSError* error)) handler;
```

Gets FireStationResponse

Returns the nearest Firestations from an input location.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3. The retrieved fire stations are distance ordered from the specified location. Maximum of 5 fire stations can be retrieved. (optional)
NSString* travelTime = @"travelTime_example"; // Maximum travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* sortBy = @"sortBy_example"; // Sorting of fire stations in result by travel time/distance (nearest first from input location). (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets FireStationResponse
[apiInstance getFireStationByLocationWithLongitude:longitude
              latitude:latitude
              maxCandidates:maxCandidates
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              sortBy:sortBy
          completionHandler: ^(SWGFireStations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getFireStationByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **maxCandidates** | **NSString***| Specifies the maximum number of fire stations that this service retrieves. The default value is 3. The retrieved fire stations are distance ordered from the specified location. Maximum of 5 fire stations can be retrieved. | [optional] 
 **travelTime** | **NSString***| Maximum travel time from input location to fire station. Maximum allowed is 2 hours | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Maximum travel distance from input location to fire station. Maximum allowed is 50 miles | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **sortBy** | **NSString***| Sorting of fire stations in result by travel time/distance (nearest first from input location). | [optional] 

### Return type

[**SWGFireStations***](SWGFireStations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByAddress**
```objc
-(NSNumber*) getFloodRiskByAddressWithAddress: (NSString*) address
    includeZoneDesc: (NSString*) includeZoneDesc
        completionHandler: (void (^)(SWGFloodRiskResponse* output, NSError* error)) handler;
```

Gets FloodRiskResponse

Returns the Flood Risk data for flood zones based on an address.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-text Address
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Specifies primary zone description. Valid Values: 'Y' or 'N'. (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets FloodRiskResponse
[apiInstance getFloodRiskByAddressWithAddress:address
              includeZoneDesc:includeZoneDesc
          completionHandler: ^(SWGFloodRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getFloodRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-text Address | 
 **includeZoneDesc** | **NSString***| Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. | [optional] 

### Return type

[**SWGFloodRiskResponse***](SWGFloodRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByLocation**
```objc
-(NSNumber*) getFloodRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    includeZoneDesc: (NSString*) includeZoneDesc
        completionHandler: (void (^)(SWGFloodRiskResponse* output, NSError* error)) handler;
```

Gets FloodRiskResponse

Returns the Flood Risk data for Flood Zones and Base Flood Elevation, based on location.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Specifies primary zone description. Valid Values: 'Y' or 'N'. Default: 'Y' (optional)

SWGLIAPIGeoRiskServiceApi*apiInstance = [[SWGLIAPIGeoRiskServiceApi alloc] init];

// Gets FloodRiskResponse
[apiInstance getFloodRiskByLocationWithLongitude:longitude
              latitude:latitude
              includeZoneDesc:includeZoneDesc
          completionHandler: ^(SWGFloodRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoRiskServiceApi->getFloodRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **includeZoneDesc** | **NSString***| Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. Default: &#39;Y&#39; | [optional] 

### Return type

[**SWGFloodRiskResponse***](SWGFloodRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

