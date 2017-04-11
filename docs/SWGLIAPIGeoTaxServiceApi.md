# SWGLIAPIGeoTaxServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBatchTaxByAddress**](SWGLIAPIGeoTaxServiceApi.md#getbatchtaxbyaddress) | **POST** /geotax/v1/tax/{taxRateTypeId}/byaddress | Post Tax By Address
[**getBatchTaxByLocation**](SWGLIAPIGeoTaxServiceApi.md#getbatchtaxbylocation) | **POST** /geotax/v1/tax/{taxRateTypeId}/bylocation | Post Tax By Location
[**getBatchTaxRateByAddress**](SWGLIAPIGeoTaxServiceApi.md#getbatchtaxratebyaddress) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Post Taxrate By Address
[**getBatchTaxRateByLocation**](SWGLIAPIGeoTaxServiceApi.md#getbatchtaxratebylocation) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Post Taxrate By Location
[**getSpecificTaxByAddress**](SWGLIAPIGeoTaxServiceApi.md#getspecifictaxbyaddress) | **GET** /geotax/v1/tax/{taxRateTypeId}/byaddress | Get Tax By Address
[**getSpecificTaxByLocation**](SWGLIAPIGeoTaxServiceApi.md#getspecifictaxbylocation) | **GET** /geotax/v1/tax/{taxRateTypeId}/bylocation | Get Tax By Location
[**getSpecificTaxRateByAddress**](SWGLIAPIGeoTaxServiceApi.md#getspecifictaxratebyaddress) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Get Taxrate By Address
[**getSpecificTaxRateByLocation**](SWGLIAPIGeoTaxServiceApi.md#getspecifictaxratebylocation) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Get Taxrate By Location


# **getBatchTaxByAddress**
```objc
-(NSNumber*) getBatchTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (SWGTaxAddressRequest*) body
        completionHandler: (void (^)(SWGTaxResponses* output, NSError* error)) handler;
```

Post Tax By Address

This is a Batch offering for 'Tax By Address' service. It accepts a single address, purchase amount or a list of addresses, purchase amounts and retrieve applicable taxes.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
SWGTaxAddressRequest* body = [[SWGTaxAddressRequest alloc] init]; // TaxAddressRequest Class Object having tax request.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Post Tax By Address
[apiInstance getBatchTaxByAddressWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(SWGTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getBatchTaxByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**SWGTaxAddressRequest***](SWGTaxAddressRequest*.md)| TaxAddressRequest Class Object having tax request. | 

### Return type

[**SWGTaxResponses***](SWGTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTaxByLocation**
```objc
-(NSNumber*) getBatchTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (SWGTaxLocationRequest*) body
        completionHandler: (void (^)(SWGTaxResponses* output, NSError* error)) handler;
```

Post Tax By Location

This is a Batch offering for 'Tax By Location' service. It accepts a single location coordinate, purchase amount or a list of location coordinates, purchase amounts and retrieve applicable tax.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
SWGTaxLocationRequest* body = [[SWGTaxLocationRequest alloc] init]; // TaxAddressRequest Class Object having tax request.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Post Tax By Location
[apiInstance getBatchTaxByLocationWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(SWGTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getBatchTaxByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**SWGTaxLocationRequest***](SWGTaxLocationRequest*.md)| TaxAddressRequest Class Object having tax request. | 

### Return type

[**SWGTaxResponses***](SWGTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTaxRateByAddress**
```objc
-(NSNumber*) getBatchTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (SWGTaxRateAddressRequest*) body
        completionHandler: (void (^)(SWGTaxResponses* output, NSError* error)) handler;
```

Post Taxrate By Address

This is a Batch offering for 'Taxrate By Address' service. It accepts a single address or a list of addresses and retrieve applicable tax rates.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
SWGTaxRateAddressRequest* body = [[SWGTaxRateAddressRequest alloc] init]; // TaxRateAddressRequest Class Object having tax rate request.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Post Taxrate By Address
[apiInstance getBatchTaxRateByAddressWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(SWGTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getBatchTaxRateByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**SWGTaxRateAddressRequest***](SWGTaxRateAddressRequest*.md)| TaxRateAddressRequest Class Object having tax rate request. | 

### Return type

[**SWGTaxResponses***](SWGTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTaxRateByLocation**
```objc
-(NSNumber*) getBatchTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (SWGTaxRateLocationRequest*) body
        completionHandler: (void (^)(SWGTaxResponses* output, NSError* error)) handler;
```

Post Taxrate By Location

This is a Batch offering for 'Taxrate By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve applicable tax rates.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
SWGTaxRateLocationRequest* body = [[SWGTaxRateLocationRequest alloc] init]; // TaxRateLocationRequest Class Object having tax rate request.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Post Taxrate By Location
[apiInstance getBatchTaxRateByLocationWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(SWGTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getBatchTaxRateByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**SWGTaxRateLocationRequest***](SWGTaxRateLocationRequest*.md)| TaxRateLocationRequest Class Object having tax rate request. | 

### Return type

[**SWGTaxResponses***](SWGTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecificTaxByAddress**
```objc
-(NSNumber*) getSpecificTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    purchaseAmount: (NSString*) purchaseAmount
        completionHandler: (void (^)(SWGTaxResponse* output, NSError* error)) handler;
```

Get Tax By Address

This service calculates and returns taxes applicable at a specific address. Address, purchase amount and supported tax rate type are inputs to the service.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* address = @"address_example"; // The address to be searched.
NSString* purchaseAmount = @"purchaseAmount_example"; // The amount on which tax to be calculated.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Get Tax By Address
[apiInstance getSpecificTaxByAddressWithTaxRateTypeId:taxRateTypeId
              address:address
              purchaseAmount:purchaseAmount
          completionHandler: ^(SWGTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getSpecificTaxByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **address** | **NSString***| The address to be searched. | 
 **purchaseAmount** | **NSString***| The amount on which tax to be calculated. | 

### Return type

[**SWGTaxResponse***](SWGTaxResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecificTaxByLocation**
```objc
-(NSNumber*) getSpecificTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    purchaseAmount: (NSString*) purchaseAmount
        completionHandler: (void (^)(SWGTaxResponse* output, NSError* error)) handler;
```

Get Tax By Location

This service calculates and returns tax applicable at a specific location. Longitude, latitude, purchase amount and supported tax rate type are inputs to the service.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* purchaseAmount = @"purchaseAmount_example"; // The amount on which tax to be calculated.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Get Tax By Location
[apiInstance getSpecificTaxByLocationWithTaxRateTypeId:taxRateTypeId
              latitude:latitude
              longitude:longitude
              purchaseAmount:purchaseAmount
          completionHandler: ^(SWGTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getSpecificTaxByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **longitude** | **NSString***| Longitude of the location. | 
 **purchaseAmount** | **NSString***| The amount on which tax to be calculated. | 

### Return type

[**SWGTaxResponse***](SWGTaxResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecificTaxRateByAddress**
```objc
-(NSNumber*) getSpecificTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
        completionHandler: (void (^)(SWGTaxResponse* output, NSError* error)) handler;
```

Get Taxrate By Address

Retrieves tax rates applicable to a specific address. This service accepts address and supported tax rate type as inputs to retrieve applicable tax rates.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* address = @"address_example"; // The address to be searched.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Get Taxrate By Address
[apiInstance getSpecificTaxRateByAddressWithTaxRateTypeId:taxRateTypeId
              address:address
          completionHandler: ^(SWGTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getSpecificTaxRateByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **address** | **NSString***| The address to be searched. | 

### Return type

[**SWGTaxResponse***](SWGTaxResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecificTaxRateByLocation**
```objc
-(NSNumber*) getSpecificTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
        completionHandler: (void (^)(SWGTaxResponse* output, NSError* error)) handler;
```

Get Taxrate By Location

Retrieves tax rates applicable to a specific location. This service accepts longitude, latitude and supported tax rate type as inputs to retrieve applicable tax rates.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* longitude = @"longitude_example"; // Longitude of the location.

SWGLIAPIGeoTaxServiceApi*apiInstance = [[SWGLIAPIGeoTaxServiceApi alloc] init];

// Get Taxrate By Location
[apiInstance getSpecificTaxRateByLocationWithTaxRateTypeId:taxRateTypeId
              latitude:latitude
              longitude:longitude
          completionHandler: ^(SWGTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoTaxServiceApi->getSpecificTaxRateByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **longitude** | **NSString***| Longitude of the location. | 

### Return type

[**SWGTaxResponse***](SWGTaxResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

