# PBLIAPIGeoCommServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRateCenterByAddress**](PBLIAPIGeoCommServiceApi.md#getratecenterbyaddress) | **GET** /geocomm/v1/ratecenter/byaddress | Rate Center By Address.
[**getRateCenterByLocation**](PBLIAPIGeoCommServiceApi.md#getratecenterbylocation) | **GET** /geocomm/v1/ratecenter/bylocation | Rate Center By Location.


# **getRateCenterByAddress**
```objc
-(NSNumber*) getRateCenterByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
        completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;
```

Rate Center By Address.

Accepts addresses as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"USA"; // 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional) (default to USA)
NSString* areaCodeInfo = @"False"; // Specifies whether area code information will be part of response.Allowed values True,False (optional) (default to False)
NSString* level = @"basic"; // Level (basic/detail).Allowed values detail,basic. (optional) (default to basic)

PBLIAPIGeoCommServiceApi*apiInstance = [[PBLIAPIGeoCommServiceApi alloc] init];

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
                            NSLog(@"Error calling PBLIAPIGeoCommServiceApi->getRateCenterByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched. Allowed values USA,CAN | [optional] [default to USA]
 **areaCodeInfo** | **NSString***| Specifies whether area code information will be part of response.Allowed values True,False | [optional] [default to False]
 **level** | **NSString***| Level (basic/detail).Allowed values detail,basic. | [optional] [default to basic]

### Return type

[**PBRateCenterResponse***](PBRateCenterResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRateCenterByLocation**
```objc
-(NSNumber*) getRateCenterByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
        completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;
```

Rate Center By Location.

Accepts latitude & longitude as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* areaCodeInfo = @"False"; // Specifies whether area code information will be part of response.Allowed values True,False. (optional) (default to False)
NSString* level = @"basic"; // Level (basic/detail).Allowed values detail,basic. (optional) (default to basic)

PBLIAPIGeoCommServiceApi*apiInstance = [[PBLIAPIGeoCommServiceApi alloc] init];

// Rate Center By Location.
[apiInstance getRateCenterByLocationWithLongitude:longitude
              latitude:latitude
              areaCodeInfo:areaCodeInfo
              level:level
          completionHandler: ^(PBRateCenterResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoCommServiceApi->getRateCenterByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **areaCodeInfo** | **NSString***| Specifies whether area code information will be part of response.Allowed values True,False. | [optional] [default to False]
 **level** | **NSString***| Level (basic/detail).Allowed values detail,basic. | [optional] [default to basic]

### Return type

[**PBRateCenterResponse***](PBRateCenterResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

