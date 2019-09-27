# PBLIAPIGeoTimeServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBatchTimezoneByAddress**](PBLIAPIGeoTimeServiceApi.md#getbatchtimezonebyaddress) | **POST** /geotime/v1/timezone/byaddress | Timezone Batch by Address
[**getBatchTimezoneByLocation**](PBLIAPIGeoTimeServiceApi.md#getbatchtimezonebylocation) | **POST** /geotime/v1/timezone/bylocation | Timezone Batch by Location
[**getTimezoneByAddress**](PBLIAPIGeoTimeServiceApi.md#gettimezonebyaddress) | **GET** /geotime/v1/timezone/byaddress | Timezone By Address.
[**getTimezoneByLocation**](PBLIAPIGeoTimeServiceApi.md#gettimezonebylocation) | **GET** /geotime/v1/timezone/bylocation | Timezone By Location.


# **getBatchTimezoneByAddress**
```objc
-(NSNumber*) getBatchTimezoneByAddressWithBody: (PBTimezoneAddressRequest*) body
        completionHandler: (void (^)(PBTimezoneResponse* output, NSError* error)) handler;
```

Timezone Batch by Address

Identifies and retrieves the local time of any location in the world for a given address and time. The input and retrieved time format is in milliseconds. 

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBTimezoneAddressRequest* body = [[PBTimezoneAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoTimeServiceApi*apiInstance = [[PBLIAPIGeoTimeServiceApi alloc] init];

// Timezone Batch by Address
[apiInstance getBatchTimezoneByAddressWithBody:body
          completionHandler: ^(PBTimezoneResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTimeServiceApi->getBatchTimezoneByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBTimezoneAddressRequest***](PBTimezoneAddressRequest*.md)|  | [optional] 

### Return type

[**PBTimezoneResponse***](PBTimezoneResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTimezoneByLocation**
```objc
-(NSNumber*) getBatchTimezoneByLocationWithBody: (PBTimezoneLocationRequest*) body
        completionHandler: (void (^)(PBTimezoneLocationResponse* output, NSError* error)) handler;
```

Timezone Batch by Location

Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds. 

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBTimezoneLocationRequest* body = [[PBTimezoneLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoTimeServiceApi*apiInstance = [[PBLIAPIGeoTimeServiceApi alloc] init];

// Timezone Batch by Location
[apiInstance getBatchTimezoneByLocationWithBody:body
          completionHandler: ^(PBTimezoneLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTimeServiceApi->getBatchTimezoneByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBTimezoneLocationRequest***](PBTimezoneLocationRequest*.md)|  | [optional] 

### Return type

[**PBTimezoneLocationResponse***](PBTimezoneLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimezoneByAddress**
```objc
-(NSNumber*) getTimezoneByAddressWithTimestamp: (NSString*) timestamp
    address: (NSString*) address
    matchMode: (NSString*) matchMode
    country: (NSString*) country
        completionHandler: (void (^)(PBTimezone* output, NSError* error)) handler;
```

Timezone By Address.

Identifies and retrieves the local time of any location in the world for a given address and time. The input and retrieved time format is in milliseconds.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* timestamp = @"timestamp_example"; // Timestamp in miliseconds.
NSString* address = @"address_example"; // The address to be searched.
NSString* matchMode = @"Relaxed"; // Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to Relaxed)
NSString* country = @"USA"; // Country ISO code. (optional) (default to USA)

PBLIAPIGeoTimeServiceApi*apiInstance = [[PBLIAPIGeoTimeServiceApi alloc] init];

// Timezone By Address.
[apiInstance getTimezoneByAddressWithTimestamp:timestamp
              address:address
              matchMode:matchMode
              country:country
          completionHandler: ^(PBTimezone* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTimeServiceApi->getTimezoneByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **NSString***| Timestamp in miliseconds. | 
 **address** | **NSString***| The address to be searched. | 
 **matchMode** | **NSString***| Match modes determine the leniency used to make a match between the input address and the reference data. | [optional] [default to Relaxed]
 **country** | **NSString***| Country ISO code. | [optional] [default to USA]

### Return type

[**PBTimezone***](PBTimezone.md)

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
        completionHandler: (void (^)(PBTimezoneLocation* output, NSError* error)) handler;
```

Timezone By Location.

Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* timestamp = @"timestamp_example"; // Timestamp in miliseconds.
NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

PBLIAPIGeoTimeServiceApi*apiInstance = [[PBLIAPIGeoTimeServiceApi alloc] init];

// Timezone By Location.
[apiInstance getTimezoneByLocationWithTimestamp:timestamp
              longitude:longitude
              latitude:latitude
          completionHandler: ^(PBTimezoneLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTimeServiceApi->getTimezoneByLocation: %@", error);
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

[**PBTimezoneLocation***](PBTimezoneLocation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

