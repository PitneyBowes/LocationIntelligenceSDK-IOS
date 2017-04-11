# SWGLIAPIGeoLifeServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDemographicsByAddress**](SWGLIAPIGeoLifeServiceApi.md#getdemographicsbyaddress) | **GET** /geolife/v1/demographics/byaddress | Demographics By Address.
[**getDemographicsByLocation**](SWGLIAPIGeoLifeServiceApi.md#getdemographicsbylocation) | **GET** /geolife/v1/demographics/bylocation | Demographics By Location.
[**getSegmentationByAddress**](SWGLIAPIGeoLifeServiceApi.md#getsegmentationbyaddress) | **GET** /geolife/v1/segmentation/byaddress | Segmentation By Address.
[**getSegmentationByLocation**](SWGLIAPIGeoLifeServiceApi.md#getsegmentationbylocation) | **GET** /geolife/v1/segmentation/bylocation | Segmentation By Location.


# **getDemographicsByAddress**
```objc
-(NSNumber*) getDemographicsByAddressWithAddress: (NSString*) address
    profile: (NSString*) profile
    filter: (NSString*) filter
    country: (NSString*) country
        completionHandler: (void (^)(SWGDemographics* output, NSError* error)) handler;
```

Demographics By Address.

Provides the demographic details around a specified address. GeoLife 'byaddress' service accepts address as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* profile = @"profile_example"; // Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
NSString* filter = @"filter_example"; // The 'filter' parameter retrieves the demographic data based upon specified input themes. (optional)
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,IND,ITA,AUS,DEU. (optional)

SWGLIAPIGeoLifeServiceApi*apiInstance = [[SWGLIAPIGeoLifeServiceApi alloc] init];

// Demographics By Address.
[apiInstance getDemographicsByAddressWithAddress:address
              profile:profile
              filter:filter
              country:country
          completionHandler: ^(SWGDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoLifeServiceApi->getDemographicsByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **profile** | **NSString***| Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending | [optional] 
 **filter** | **NSString***| The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. | [optional] 
 **country** | **NSString***| 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,IND,ITA,AUS,DEU. | [optional] 

### Return type

[**SWGDemographics***](SWGDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDemographicsByLocation**
```objc
-(NSNumber*) getDemographicsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    profile: (NSString*) profile
    filter: (NSString*) filter
        completionHandler: (void (^)(SWGDemographics* output, NSError* error)) handler;
```

Demographics By Location.

Provides the demographic details around a specified location. GeoLife 'bylocation' service accepts longitude and latitude as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* profile = @"profile_example"; // Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
NSString* filter = @"filter_example"; // The 'filter' parameter retrieves the demographic data based upon specified input themes. (optional)

SWGLIAPIGeoLifeServiceApi*apiInstance = [[SWGLIAPIGeoLifeServiceApi alloc] init];

// Demographics By Location.
[apiInstance getDemographicsByLocationWithLongitude:longitude
              latitude:latitude
              profile:profile
              filter:filter
          completionHandler: ^(SWGDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoLifeServiceApi->getDemographicsByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **profile** | **NSString***| Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending | [optional] 
 **filter** | **NSString***| The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. | [optional] 

### Return type

[**SWGDemographics***](SWGDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSegmentationByAddress**
```objc
-(NSNumber*) getSegmentationByAddressWithAddress: (NSString*) address
    country: (NSString*) country
        completionHandler: (void (^)(SWGSegmentation* output, NSError* error)) handler;
```

Segmentation By Address.

Provides the segmentation details around a specified address. GeoLife 'Segmentation by Address' service accepts address as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. (optional)

SWGLIAPIGeoLifeServiceApi*apiInstance = [[SWGLIAPIGeoLifeServiceApi alloc] init];

// Segmentation By Address.
[apiInstance getSegmentationByAddressWithAddress:address
              country:country
          completionHandler: ^(SWGSegmentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoLifeServiceApi->getSegmentationByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. | [optional] 

### Return type

[**SWGSegmentation***](SWGSegmentation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSegmentationByLocation**
```objc
-(NSNumber*) getSegmentationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(SWGSegmentation* output, NSError* error)) handler;
```

Segmentation By Location.

Provides the segmentation details around a specified location. GeoLife 'segmentation bylocation' service accepts longitude and latitude as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

SWGLIAPIGeoLifeServiceApi*apiInstance = [[SWGLIAPIGeoLifeServiceApi alloc] init];

// Segmentation By Location.
[apiInstance getSegmentationByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(SWGSegmentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoLifeServiceApi->getSegmentationByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**SWGSegmentation***](SWGSegmentation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

