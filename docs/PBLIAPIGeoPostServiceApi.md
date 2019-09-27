# PBLIAPIGeoPostServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCarrierRoutesByAddress**](PBLIAPIGeoPostServiceApi.md#getcarrierroutesbyaddress) | **GET** /geopost/v1/carrierroute/byaddress | Carrier Route By Address.
[**getCarrierRoutesByAddressBatch**](PBLIAPIGeoPostServiceApi.md#getcarrierroutesbyaddressbatch) | **POST** /geopost/v1/carrierroute/byaddress | Gets GeoPost Carrier Routes for Multiple Addresses


# **getCarrierRoutesByAddress**
```objc
-(NSNumber*) getCarrierRoutesByAddressWithAddress: (NSString*) address
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCarrierRouteResponse* output, NSError* error)) handler;
```

Carrier Route By Address.

Get United States Postal Service (USPS) carrier route data for the requested address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is Y) - if it is Y, then geometry will be part of response (optional)

PBLIAPIGeoPostServiceApi*apiInstance = [[PBLIAPIGeoPostServiceApi alloc] init];

// Carrier Route By Address.
[apiInstance getCarrierRoutesByAddressWithAddress:address
              includeGeometry:includeGeometry
          completionHandler: ^(PBCarrierRouteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPostServiceApi->getCarrierRoutesByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **includeGeometry** | **NSString***| Y or N (default is Y) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCarrierRouteResponse***](PBCarrierRouteResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCarrierRoutesByAddressBatch**
```objc
-(NSNumber*) getCarrierRoutesByAddressBatchWithBody: (PBCarrierRouteAddressRequest*) body
        completionHandler: (void (^)(PBCarrierRouteResponseList* output, NSError* error)) handler;
```

Gets GeoPost Carrier Routes for Multiple Addresses

Gets GeoPost Carrier Routes for Multiple Addresses

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCarrierRouteAddressRequest* body = [[PBCarrierRouteAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoPostServiceApi*apiInstance = [[PBLIAPIGeoPostServiceApi alloc] init];

// Gets GeoPost Carrier Routes for Multiple Addresses
[apiInstance getCarrierRoutesByAddressBatchWithBody:body
          completionHandler: ^(PBCarrierRouteResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPostServiceApi->getCarrierRoutesByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBCarrierRouteAddressRequest***](PBCarrierRouteAddressRequest*.md)|  | [optional] 

### Return type

[**PBCarrierRouteResponseList***](PBCarrierRouteResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

