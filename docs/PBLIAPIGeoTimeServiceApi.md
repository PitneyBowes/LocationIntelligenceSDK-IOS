# PBLIAPIGeoTimeServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTimezoneByAddress**](PBLIAPIGeoTimeServiceApi.md#gettimezonebyaddress) | **GET** /geotime/v1/timezone/byaddress | Timezone By Address.
[**getTimezoneByLocation**](PBLIAPIGeoTimeServiceApi.md#gettimezonebylocation) | **GET** /geotime/v1/timezone/bylocation | Timezone By Location.


# **getTimezoneByAddress**
```objc
-(NSNumber*) getTimezoneByAddressWithTimestamp: (NSString*) timestamp
    address: (NSString*) address
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

PBLIAPIGeoTimeServiceApi*apiInstance = [[PBLIAPIGeoTimeServiceApi alloc] init];

// Timezone By Address.
[apiInstance getTimezoneByAddressWithTimestamp:timestamp
              address:address
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
        completionHandler: (void (^)(PBTimezone* output, NSError* error)) handler;
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
          completionHandler: ^(PBTimezone* output, NSError* error) {
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

[**PBTimezone***](PBTimezone.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

