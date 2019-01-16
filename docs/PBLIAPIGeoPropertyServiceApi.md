# PBLIAPIGeoPropertyServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGeoPropertyByAddress**](PBLIAPIGeoPropertyServiceApi.md#getgeopropertybyaddress) | **GET** /geoproperty/v1/all/attributes/byaddress | Gets GeoPropertyResponse
[**getGeoPropertyByAddressBatch**](PBLIAPIGeoPropertyServiceApi.md#getgeopropertybyaddressbatch) | **POST** /geoproperty/v1/all/attributes/byaddress | Gets GeoPropertyResponses
[**getGeoPropertyByPBKey**](PBLIAPIGeoPropertyServiceApi.md#getgeopropertybypbkey) | **GET** /geoproperty/v1/all/attributes/bypbkey | Gets GeoPropertyResponse
[**getGeoPropertyByPBKeyBatch**](PBLIAPIGeoPropertyServiceApi.md#getgeopropertybypbkeybatch) | **POST** /geoproperty/v1/all/attributes/bypbkey | Gets GeoPropertyResponses


# **getGeoPropertyByAddress**
```objc
-(NSNumber*) getGeoPropertyByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBGeoPropertyResponse* output, NSError* error)) handler;
```

Gets GeoPropertyResponse

Gets GeoPropertyResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Gets GeoPropertyResponse
[apiInstance getGeoPropertyByAddressWithAddress:address
          completionHandler: ^(PBGeoPropertyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getGeoPropertyByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 

### Return type

[**PBGeoPropertyResponse***](PBGeoPropertyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoPropertyByAddressBatch**
```objc
-(NSNumber*) getGeoPropertyByAddressBatchWithBody: (PBGeoPropertyAddressRequest*) body
        completionHandler: (void (^)(PBGeoPropertyResponses* output, NSError* error)) handler;
```

Gets GeoPropertyResponses

Gets GeoPropertyResponses

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGeoPropertyAddressRequest* body = [[PBGeoPropertyAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Gets GeoPropertyResponses
[apiInstance getGeoPropertyByAddressBatchWithBody:body
          completionHandler: ^(PBGeoPropertyResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getGeoPropertyByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBGeoPropertyAddressRequest***](PBGeoPropertyAddressRequest*.md)|  | [optional] 

### Return type

[**PBGeoPropertyResponses***](PBGeoPropertyResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoPropertyByPBKey**
```objc
-(NSNumber*) getGeoPropertyByPBKeyWithPbKey: (NSString*) pbKey
        completionHandler: (void (^)(PBGeoPropertyPBKeyResponse* output, NSError* error)) handler;
```

Gets GeoPropertyResponse

Gets GeoPropertyResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* pbKey = @"pbKey_example"; // free form text

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Gets GeoPropertyResponse
[apiInstance getGeoPropertyByPBKeyWithPbKey:pbKey
          completionHandler: ^(PBGeoPropertyPBKeyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getGeoPropertyByPBKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pbKey** | **NSString***| free form text | 

### Return type

[**PBGeoPropertyPBKeyResponse***](PBGeoPropertyPBKeyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoPropertyByPBKeyBatch**
```objc
-(NSNumber*) getGeoPropertyByPBKeyBatchWithBody: (PBGeoPropertyPBKeyRequest*) body
        completionHandler: (void (^)(PBGeoPropertyPBKeyResponses* output, NSError* error)) handler;
```

Gets GeoPropertyResponses

Gets GeoPropertyResponses

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGeoPropertyPBKeyRequest* body = [[PBGeoPropertyPBKeyRequest alloc] init]; //  (optional)

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Gets GeoPropertyResponses
[apiInstance getGeoPropertyByPBKeyBatchWithBody:body
          completionHandler: ^(PBGeoPropertyPBKeyResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getGeoPropertyByPBKeyBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBGeoPropertyPBKeyRequest***](PBGeoPropertyPBKeyRequest*.md)|  | [optional] 

### Return type

[**PBGeoPropertyPBKeyResponses***](PBGeoPropertyPBKeyResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

