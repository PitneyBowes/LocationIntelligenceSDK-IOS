# PBLIAPIGeoRiskServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrimeRiskByAddress**](PBLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddress) | **GET** /georisk/v1/crime/byaddress | Gets CrimeRiskResponse
[**getCrimeRiskByAddressBatch**](PBLIAPIGeoRiskServiceApi.md#getcrimeriskbyaddressbatch) | **POST** /georisk/v1/crime/byaddress | Batch method for getting crime risk by address
[**getCrimeRiskByLocation**](PBLIAPIGeoRiskServiceApi.md#getcrimeriskbylocation) | **GET** /georisk/v1/crime/bylocation | Gets CrimeRiskResponse
[**getCrimeRiskByLocationBatch**](PBLIAPIGeoRiskServiceApi.md#getcrimeriskbylocationbatch) | **POST** /georisk/v1/crime/bylocation | Batch method for getting crime risk by location
[**getDistanceToFloodHazardByAddress**](PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbyaddress) | **GET** /georisk/v1/shoreline/distancetofloodhazard/byaddress | Gets WaterBodyResponse
[**getDistanceToFloodHazardByAddressBatch**](PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbyaddressbatch) | **POST** /georisk/v1/shoreline/distancetofloodhazard/byaddress | Batch method for getting Water Bodies by address
[**getDistanceToFloodHazardByLocation**](PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbylocation) | **GET** /georisk/v1/shoreline/distancetofloodhazard/bylocation | Gets WaterBodyResponse
[**getDistanceToFloodHazardByLocationBatch**](PBLIAPIGeoRiskServiceApi.md#getdistancetofloodhazardbylocationbatch) | **POST** /georisk/v1/shoreline/distancetofloodhazard/bylocation | Batch method for getting Water Bodies by location
[**getEarthquakeHistory**](PBLIAPIGeoRiskServiceApi.md#getearthquakehistory) | **GET** /georisk/v1/earthquakehistory | Gets EarthquakeHistory
[**getEarthquakeRiskByAddress**](PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddress) | **GET** /georisk/v1/earthquake/byaddress | Gets EarthquakeRiskResponse
[**getEarthquakeRiskByAddressBatch**](PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbyaddressbatch) | **POST** /georisk/v1/earthquake/byaddress | Batch method for getting earthquake risk by address
[**getEarthquakeRiskByLocation**](PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocation) | **GET** /georisk/v1/earthquake/bylocation | Gets EarthquakeRiskResponse
[**getEarthquakeRiskByLocationBatch**](PBLIAPIGeoRiskServiceApi.md#getearthquakeriskbylocationbatch) | **POST** /georisk/v1/earthquake/bylocation | Batch method for getting earthquake risk by location
[**getFireHistory**](PBLIAPIGeoRiskServiceApi.md#getfirehistory) | **GET** /georisk/v1/firehistory | Gets FireHistory
[**getFireRiskByAddress**](PBLIAPIGeoRiskServiceApi.md#getfireriskbyaddress) | **GET** /georisk/v1/fire/byaddress | Gets FireRiskResponse
[**getFireRiskByAddressBatch**](PBLIAPIGeoRiskServiceApi.md#getfireriskbyaddressbatch) | **POST** /georisk/v1/fire/byaddress | Batch method for getting fire risk by address
[**getFireRiskByLocation**](PBLIAPIGeoRiskServiceApi.md#getfireriskbylocation) | **GET** /georisk/v1/fire/bylocation | Gets FireRiskResponse
[**getFireRiskByLocationBatch**](PBLIAPIGeoRiskServiceApi.md#getfireriskbylocationbatch) | **POST** /georisk/v1/fire/bylocation | Batch method for getting fire risk by location
[**getFireStationByAddress**](PBLIAPIGeoRiskServiceApi.md#getfirestationbyaddress) | **GET** /georisk/v1/firestation/byaddress | Gets FireStationResponse
[**getFireStationByLocation**](PBLIAPIGeoRiskServiceApi.md#getfirestationbylocation) | **GET** /georisk/v1/firestation/bylocation | Gets FireStationResponse
[**getFloodRiskByAddress**](PBLIAPIGeoRiskServiceApi.md#getfloodriskbyaddress) | **GET** /georisk/v1/flood/byaddress | Gets FloodRiskResponse
[**getFloodRiskByAddressBatch**](PBLIAPIGeoRiskServiceApi.md#getfloodriskbyaddressbatch) | **POST** /georisk/v1/flood/byaddress | Batch method for getting flood risk by address
[**getFloodRiskByLocation**](PBLIAPIGeoRiskServiceApi.md#getfloodriskbylocation) | **GET** /georisk/v1/flood/bylocation | Gets FloodRiskResponse
[**getFloodRiskByLocationBatch**](PBLIAPIGeoRiskServiceApi.md#getfloodriskbylocationbatch) | **POST** /georisk/v1/flood/bylocation | Batch method for getting flood risk by location


# **getCrimeRiskByAddress**
```objc
-(NSNumber*) getCrimeRiskByAddressWithAddress: (NSString*) address
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler;
```

Gets CrimeRiskResponse

Returns the crime data or crime indexes for a given address input.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text.
NSString* type = @"type_example"; // Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with 'all' as default.) (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets CrimeRiskResponse
[apiInstance getCrimeRiskByAddressWithAddress:address
              type:type
              includeGeometry:includeGeometry
          completionHandler: ^(PBCrimeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getCrimeRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text. | 
 **type** | **NSString***| Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with &#39;all&#39; as default.) | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCrimeRiskResponse***](PBCrimeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByAddressBatch**
```objc
-(NSNumber*) getCrimeRiskByAddressBatchWithBody: (PBCrimeRiskByAddressRequest*) body
        completionHandler: (void (^)(PBCrimeRiskResponseList* output, NSError* error)) handler;
```

Batch method for getting crime risk by address

Batch method for getting crime risk by address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCrimeRiskByAddressRequest* body = [[PBCrimeRiskByAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting crime risk by address
[apiInstance getCrimeRiskByAddressBatchWithBody:body
          completionHandler: ^(PBCrimeRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getCrimeRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBCrimeRiskByAddressRequest***](PBCrimeRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBCrimeRiskResponseList***](PBCrimeRiskResponseList.md)

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
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCrimeRiskLocationResponse* output, NSError* error)) handler;
```

Gets CrimeRiskResponse

Returns the crime data or crime indexes for a given location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* type = @"type_example"; // Refers to crime type. Valid values are following 11 crime types with 'all' as default (more than one can also be given as comma separated types) (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets CrimeRiskResponse
[apiInstance getCrimeRiskByLocationWithLongitude:longitude
              latitude:latitude
              type:type
              includeGeometry:includeGeometry
          completionHandler: ^(PBCrimeRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getCrimeRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **type** | **NSString***| Refers to crime type. Valid values are following 11 crime types with &#39;all&#39; as default (more than one can also be given as comma separated types) | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCrimeRiskLocationResponse***](PBCrimeRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByLocationBatch**
```objc
-(NSNumber*) getCrimeRiskByLocationBatchWithBody: (PBCrimeRiskByLocationRequest*) body
        completionHandler: (void (^)(PBCrimeRiskLocationResponseList* output, NSError* error)) handler;
```

Batch method for getting crime risk by location

Batch method for getting crime risk by location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCrimeRiskByLocationRequest* body = [[PBCrimeRiskByLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting crime risk by location
[apiInstance getCrimeRiskByLocationBatchWithBody:body
          completionHandler: ^(PBCrimeRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getCrimeRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBCrimeRiskByLocationRequest***](PBCrimeRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBCrimeRiskLocationResponseList***](PBCrimeRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByAddress**
```objc
-(NSNumber*) getDistanceToFloodHazardByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
        completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler;
```

Gets WaterBodyResponse

Gets WaterBodyResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address of the location
NSString* maxCandidates = @"maxCandidates_example"; // This specifies the value of maxCandidates (optional)
NSString* waterBodyType = @"waterBodyType_example"; // all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
NSString* searchDistance = @"searchDistance_example"; // This specifies the search distance (optional)
NSString* searchDistanceUnit = @"searchDistanceUnit_example"; // miles (default value),feet, kilometers, meters (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets WaterBodyResponse
[apiInstance getDistanceToFloodHazardByAddressWithAddress:address
              maxCandidates:maxCandidates
              waterBodyType:waterBodyType
              searchDistance:searchDistance
              searchDistanceUnit:searchDistanceUnit
          completionHandler: ^(PBWaterBodyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getDistanceToFloodHazardByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address of the location | 
 **maxCandidates** | **NSString***| This specifies the value of maxCandidates | [optional] 
 **waterBodyType** | **NSString***| all (default value), oceanandsea,lake,others,unknown,intermittent | [optional] 
 **searchDistance** | **NSString***| This specifies the search distance | [optional] 
 **searchDistanceUnit** | **NSString***| miles (default value),feet, kilometers, meters | [optional] 

### Return type

[**PBWaterBodyResponse***](PBWaterBodyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByAddressBatch**
```objc
-(NSNumber*) getDistanceToFloodHazardByAddressBatchWithBody: (PBDistanceToFloodHazardAddressRequest*) body
        completionHandler: (void (^)(PBDistanceToFloodHazardResponse* output, NSError* error)) handler;
```

Batch method for getting Water Bodies by address

Batch method for getting Water Bodies by address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDistanceToFloodHazardAddressRequest* body = [[PBDistanceToFloodHazardAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting Water Bodies by address
[apiInstance getDistanceToFloodHazardByAddressBatchWithBody:body
          completionHandler: ^(PBDistanceToFloodHazardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getDistanceToFloodHazardByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBDistanceToFloodHazardAddressRequest***](PBDistanceToFloodHazardAddressRequest*.md)|  | [optional] 

### Return type

[**PBDistanceToFloodHazardResponse***](PBDistanceToFloodHazardResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByLocation**
```objc
-(NSNumber*) getDistanceToFloodHazardByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
        completionHandler: (void (^)(PBWaterBodyLocationResponse* output, NSError* error)) handler;
```

Gets WaterBodyResponse

Gets WaterBodyResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* maxCandidates = @"maxCandidates_example"; // This specifies the value of maxCandidates (optional)
NSString* waterBodyType = @"waterBodyType_example"; // all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
NSString* searchDistance = @"searchDistance_example"; // This specifies the search distance (optional)
NSString* searchDistanceUnit = @"searchDistanceUnit_example"; // miles (default value),feet, kilometers, meters (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets WaterBodyResponse
[apiInstance getDistanceToFloodHazardByLocationWithLongitude:longitude
              latitude:latitude
              maxCandidates:maxCandidates
              waterBodyType:waterBodyType
              searchDistance:searchDistance
              searchDistanceUnit:searchDistanceUnit
          completionHandler: ^(PBWaterBodyLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getDistanceToFloodHazardByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **maxCandidates** | **NSString***| This specifies the value of maxCandidates | [optional] 
 **waterBodyType** | **NSString***| all (default value), oceanandsea,lake,others,unknown,intermittent | [optional] 
 **searchDistance** | **NSString***| This specifies the search distance | [optional] 
 **searchDistanceUnit** | **NSString***| miles (default value),feet, kilometers, meters | [optional] 

### Return type

[**PBWaterBodyLocationResponse***](PBWaterBodyLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByLocationBatch**
```objc
-(NSNumber*) getDistanceToFloodHazardByLocationBatchWithBody: (PBDistanceToFloodHazardLocationRequest*) body
        completionHandler: (void (^)(PBDistanceToFloodHazardLocationResponse* output, NSError* error)) handler;
```

Batch method for getting Water Bodies by location

Batch method for getting Water Bodies by location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDistanceToFloodHazardLocationRequest* body = [[PBDistanceToFloodHazardLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting Water Bodies by location
[apiInstance getDistanceToFloodHazardByLocationBatchWithBody:body
          completionHandler: ^(PBDistanceToFloodHazardLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getDistanceToFloodHazardByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBDistanceToFloodHazardLocationRequest***](PBDistanceToFloodHazardLocationRequest*.md)|  | [optional] 

### Return type

[**PBDistanceToFloodHazardLocationResponse***](PBDistanceToFloodHazardLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeHistory**
```objc
-(NSNumber*) getEarthquakeHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    minMagnitude: (NSString*) minMagnitude
    maxMagnitude: (NSString*) maxMagnitude
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBEarthquakeHistory* output, NSError* error)) handler;
```

Gets EarthquakeHistory

Gets EarthquakeHistory

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* postCode = @"postCode_example"; // 5 digit Postal code to search
NSString* startDate = @"startDate_example"; // Start time in milliseconds(UTC) (optional)
NSString* endDate = @"endDate_example"; // End time in milliseconds(UTC) (optional)
NSString* minMagnitude = @"minMagnitude_example"; // Minimum richter scale magnitude (optional)
NSString* maxMagnitude = @"maxMagnitude_example"; // Maximum Richter scale magnitude (optional)
NSString* maxCandidates = @"1"; // Maximum response events (optional) (default to 1)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets EarthquakeHistory
[apiInstance getEarthquakeHistoryWithPostCode:postCode
              startDate:startDate
              endDate:endDate
              minMagnitude:minMagnitude
              maxMagnitude:maxMagnitude
              maxCandidates:maxCandidates
          completionHandler: ^(PBEarthquakeHistory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getEarthquakeHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postCode** | **NSString***| 5 digit Postal code to search | 
 **startDate** | **NSString***| Start time in milliseconds(UTC) | [optional] 
 **endDate** | **NSString***| End time in milliseconds(UTC) | [optional] 
 **minMagnitude** | **NSString***| Minimum richter scale magnitude | [optional] 
 **maxMagnitude** | **NSString***| Maximum Richter scale magnitude | [optional] 
 **maxCandidates** | **NSString***| Maximum response events | [optional] [default to 1]

### Return type

[**PBEarthquakeHistory***](PBEarthquakeHistory.md)

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
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler;
```

Gets EarthquakeRiskResponse

Returns the count of earthquake events for various richter measurements and values for an input address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text
NSString* richterValue = @"richterValue_example"; // Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets EarthquakeRiskResponse
[apiInstance getEarthquakeRiskByAddressWithAddress:address
              richterValue:richterValue
              includeGeometry:includeGeometry
          completionHandler: ^(PBEarthquakeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getEarthquakeRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text | 
 **richterValue** | **NSString***| Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBEarthquakeRiskResponse***](PBEarthquakeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByAddressBatch**
```objc
-(NSNumber*) getEarthquakeRiskByAddressBatchWithBody: (PBEarthquakeRiskByAddressRequest*) body
        completionHandler: (void (^)(PBEarthquakeRiskResponseList* output, NSError* error)) handler;
```

Batch method for getting earthquake risk by address

Batch method for getting earthquake risk by address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBEarthquakeRiskByAddressRequest* body = [[PBEarthquakeRiskByAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting earthquake risk by address
[apiInstance getEarthquakeRiskByAddressBatchWithBody:body
          completionHandler: ^(PBEarthquakeRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getEarthquakeRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBEarthquakeRiskByAddressRequest***](PBEarthquakeRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBEarthquakeRiskResponseList***](PBEarthquakeRiskResponseList.md)

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
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBEarthquakeRiskLocationResponse* output, NSError* error)) handler;
```

Gets EarthquakeRiskResponse

Gets EarthquakeRiskResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* richterValue = @"richterValue_example"; // Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets EarthquakeRiskResponse
[apiInstance getEarthquakeRiskByLocationWithLongitude:longitude
              latitude:latitude
              richterValue:richterValue
              includeGeometry:includeGeometry
          completionHandler: ^(PBEarthquakeRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getEarthquakeRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **richterValue** | **NSString***| Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBEarthquakeRiskLocationResponse***](PBEarthquakeRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByLocationBatch**
```objc
-(NSNumber*) getEarthquakeRiskByLocationBatchWithBody: (PBEarthquakeRiskByLocationRequest*) body
        completionHandler: (void (^)(PBEarthquakeRiskLocationResponseList* output, NSError* error)) handler;
```

Batch method for getting earthquake risk by location

Batch method for getting earthquake risk by location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBEarthquakeRiskByLocationRequest* body = [[PBEarthquakeRiskByLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting earthquake risk by location
[apiInstance getEarthquakeRiskByLocationBatchWithBody:body
          completionHandler: ^(PBEarthquakeRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getEarthquakeRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBEarthquakeRiskByLocationRequest***](PBEarthquakeRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBEarthquakeRiskLocationResponseList***](PBEarthquakeRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireHistory**
```objc
-(NSNumber*) getFireHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBFireHistory* output, NSError* error)) handler;
```

Gets FireHistory

Gets FireHistory

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* postCode = @"postCode_example"; // 5 digit Postal code to search
NSString* startDate = @"startDate_example"; // Start time in milliseconds(UTC) (optional)
NSString* endDate = @"endDate_example"; // End time in milliseconds(UTC) (optional)
NSString* maxCandidates = @"1"; // Maximum response events (optional) (default to 1)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FireHistory
[apiInstance getFireHistoryWithPostCode:postCode
              startDate:startDate
              endDate:endDate
              maxCandidates:maxCandidates
          completionHandler: ^(PBFireHistory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postCode** | **NSString***| 5 digit Postal code to search | 
 **startDate** | **NSString***| Start time in milliseconds(UTC) | [optional] 
 **endDate** | **NSString***| End time in milliseconds(UTC) | [optional] 
 **maxCandidates** | **NSString***| Maximum response events | [optional] [default to 1]

### Return type

[**PBFireHistory***](PBFireHistory.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddress**
```objc
-(NSNumber*) getFireRiskByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler;
```

Gets FireRiskResponse

Returns the fire data based on address input.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FireRiskResponse
[apiInstance getFireRiskByAddressWithAddress:address
          completionHandler: ^(PBFireRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text | 

### Return type

[**PBFireRiskResponse***](PBFireRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddressBatch**
```objc
-(NSNumber*) getFireRiskByAddressBatchWithBody: (PBFireRiskByAddressRequest*) body
        completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler;
```

Batch method for getting fire risk by address

Batch method for getting fire risk by address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFireRiskByAddressRequest* body = [[PBFireRiskByAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting fire risk by address
[apiInstance getFireRiskByAddressBatchWithBody:body
          completionHandler: ^(PBFireRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFireRiskByAddressRequest***](PBFireRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBFireRiskResponseList***](PBFireRiskResponseList.md)

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
        completionHandler: (void (^)(PBFireRiskLocationResponse* output, NSError* error)) handler;
```

Gets FireRiskResponse

Returns the fire data based on location input.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FireRiskResponse
[apiInstance getFireRiskByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBFireRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 

### Return type

[**PBFireRiskLocationResponse***](PBFireRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByLocationBatch**
```objc
-(NSNumber*) getFireRiskByLocationBatchWithBody: (PBFireRiskByLocationRequest*) body
        completionHandler: (void (^)(PBFireRiskLocationResponseList* output, NSError* error)) handler;
```

Batch method for getting fire risk by location

Batch method for getting fire risk by location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFireRiskByLocationRequest* body = [[PBFireRiskByLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting fire risk by location
[apiInstance getFireRiskByLocationBatchWithBody:body
          completionHandler: ^(PBFireRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFireRiskByLocationRequest***](PBFireRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBFireRiskLocationResponseList***](PBFireRiskLocationResponseList.md)

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
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
        completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler;
```

Gets FireStationResponse

Returns the nearest Firestations from an input address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
NSString* travelTime = @"travelTime_example"; // Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* sortBy = @"sortBy_example"; // Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Historic traffic time slab (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FireStationResponse
[apiInstance getFireStationByAddressWithAddress:address
              maxCandidates:maxCandidates
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              sortBy:sortBy
              historicTrafficTimeBucket:historicTrafficTimeBucket
          completionHandler: ^(PBFireStations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireStationByAddress: %@", error);
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
 **historicTrafficTimeBucket** | **NSString***| Historic traffic time slab | [optional] 

### Return type

[**PBFireStations***](PBFireStations.md)

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
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
        completionHandler: (void (^)(PBFireStationsLocation* output, NSError* error)) handler;
```

Gets FireStationResponse

Returns the nearest Firestations from an input location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

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
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Historic traffic time slab (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FireStationResponse
[apiInstance getFireStationByLocationWithLongitude:longitude
              latitude:latitude
              maxCandidates:maxCandidates
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              sortBy:sortBy
              historicTrafficTimeBucket:historicTrafficTimeBucket
          completionHandler: ^(PBFireStationsLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFireStationByLocation: %@", error);
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
 **historicTrafficTimeBucket** | **NSString***| Historic traffic time slab | [optional] 

### Return type

[**PBFireStationsLocation***](PBFireStationsLocation.md)

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
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler;
```

Gets FloodRiskResponse

Returns the Flood Risk data for flood zones based on an address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-text Address
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Specifies primary zone description. Valid Values: 'Y' or 'N'. (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FloodRiskResponse
[apiInstance getFloodRiskByAddressWithAddress:address
              includeZoneDesc:includeZoneDesc
              includeGeometry:includeGeometry
          completionHandler: ^(PBFloodRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFloodRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-text Address | 
 **includeZoneDesc** | **NSString***| Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBFloodRiskResponse***](PBFloodRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByAddressBatch**
```objc
-(NSNumber*) getFloodRiskByAddressBatchWithBody: (PBFloodRiskByAddressRequest*) body
        completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler;
```

Batch method for getting flood risk by address

Batch method for getting flood risk by address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFloodRiskByAddressRequest* body = [[PBFloodRiskByAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting flood risk by address
[apiInstance getFloodRiskByAddressBatchWithBody:body
          completionHandler: ^(PBFloodRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFloodRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFloodRiskByAddressRequest***](PBFloodRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBFloodRiskResponseList***](PBFloodRiskResponseList.md)

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
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFloodRiskLocationResponse* output, NSError* error)) handler;
```

Gets FloodRiskResponse

Returns the Flood Risk data for Flood Zones and Base Flood Elevation, based on location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Specifies primary zone description. Valid Values: 'Y' or 'N'. Default: 'Y' (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Gets FloodRiskResponse
[apiInstance getFloodRiskByLocationWithLongitude:longitude
              latitude:latitude
              includeZoneDesc:includeZoneDesc
              includeGeometry:includeGeometry
          completionHandler: ^(PBFloodRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFloodRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **includeZoneDesc** | **NSString***| Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. Default: &#39;Y&#39; | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBFloodRiskLocationResponse***](PBFloodRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByLocationBatch**
```objc
-(NSNumber*) getFloodRiskByLocationBatchWithBody: (PBFloodRiskByLocationRequest*) body
        completionHandler: (void (^)(PBFloodRiskLocationResponseList* output, NSError* error)) handler;
```

Batch method for getting flood risk by location

Batch method for getting flood risk by location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFloodRiskByLocationRequest* body = [[PBFloodRiskByLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoRiskServiceApi*apiInstance = [[PBLIAPIGeoRiskServiceApi alloc] init];

// Batch method for getting flood risk by location
[apiInstance getFloodRiskByLocationBatchWithBody:body
          completionHandler: ^(PBFloodRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoRiskServiceApi->getFloodRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFloodRiskByLocationRequest***](PBFloodRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBFloodRiskLocationResponseList***](PBFloodRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

