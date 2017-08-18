# PBLIAPIGeoTaxServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBatchTaxByAddress**](PBLIAPIGeoTaxServiceApi.md#getbatchtaxbyaddress) | **POST** /geotax/v1/tax/{taxRateTypeId}/byaddress | Post Tax By Address
[**getBatchTaxByLocation**](PBLIAPIGeoTaxServiceApi.md#getbatchtaxbylocation) | **POST** /geotax/v1/tax/{taxRateTypeId}/bylocation | Post Tax By Location
[**getBatchTaxRateByAddress**](PBLIAPIGeoTaxServiceApi.md#getbatchtaxratebyaddress) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Post Taxrate By Address
[**getBatchTaxRateByLocation**](PBLIAPIGeoTaxServiceApi.md#getbatchtaxratebylocation) | **POST** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Post Taxrate By Location
[**getIPDTaxByAddress**](PBLIAPIGeoTaxServiceApi.md#getipdtaxbyaddress) | **GET** /geotax/v1/taxdistrict/ipd/byaddress | Get IPD Tax by Address
[**getIPDTaxByAddressBatch**](PBLIAPIGeoTaxServiceApi.md#getipdtaxbyaddressbatch) | **POST** /geotax/v1/taxdistrict/ipd/byaddress | Get IPD Tax for batch requests
[**getSpecificTaxByAddress**](PBLIAPIGeoTaxServiceApi.md#getspecifictaxbyaddress) | **GET** /geotax/v1/tax/{taxRateTypeId}/byaddress | Get Tax By Address
[**getSpecificTaxByLocation**](PBLIAPIGeoTaxServiceApi.md#getspecifictaxbylocation) | **GET** /geotax/v1/tax/{taxRateTypeId}/bylocation | Get Tax By Location
[**getSpecificTaxRateByAddress**](PBLIAPIGeoTaxServiceApi.md#getspecifictaxratebyaddress) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/byaddress | Get Taxrate By Address
[**getSpecificTaxRateByLocation**](PBLIAPIGeoTaxServiceApi.md#getspecifictaxratebylocation) | **GET** /geotax/v1/taxrate/{taxRateTypeId}/bylocation | Get Taxrate By Location


# **getBatchTaxByAddress**
```objc
-(NSNumber*) getBatchTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxAddressRequest*) body
        completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;
```

Post Tax By Address

This is a Batch offering for 'Tax By Address' service. It accepts a single address, purchase amount or a list of addresses, purchase amounts and retrieve applicable taxes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
PBTaxAddressRequest* body = [[PBTaxAddressRequest alloc] init]; // TaxAddressRequest Class Object having tax request.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Post Tax By Address
[apiInstance getBatchTaxByAddressWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(PBTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getBatchTaxByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**PBTaxAddressRequest***](PBTaxAddressRequest*.md)| TaxAddressRequest Class Object having tax request. | 

### Return type

[**PBTaxResponses***](PBTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTaxByLocation**
```objc
-(NSNumber*) getBatchTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxLocationRequest*) body
        completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;
```

Post Tax By Location

This is a Batch offering for 'Tax By Location' service. It accepts a single location coordinate, purchase amount or a list of location coordinates, purchase amounts and retrieve applicable tax.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
PBTaxLocationRequest* body = [[PBTaxLocationRequest alloc] init]; // TaxAddressRequest Class Object having tax request.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Post Tax By Location
[apiInstance getBatchTaxByLocationWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(PBTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getBatchTaxByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**PBTaxLocationRequest***](PBTaxLocationRequest*.md)| TaxAddressRequest Class Object having tax request. | 

### Return type

[**PBTaxResponses***](PBTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTaxRateByAddress**
```objc
-(NSNumber*) getBatchTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxRateAddressRequest*) body
        completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;
```

Post Taxrate By Address

This is a Batch offering for 'Taxrate By Address' service. It accepts a single address or a list of addresses and retrieve applicable tax rates.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
PBTaxRateAddressRequest* body = [[PBTaxRateAddressRequest alloc] init]; // TaxRateAddressRequest Class Object having tax rate request.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Post Taxrate By Address
[apiInstance getBatchTaxRateByAddressWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(PBTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getBatchTaxRateByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**PBTaxRateAddressRequest***](PBTaxRateAddressRequest*.md)| TaxRateAddressRequest Class Object having tax rate request. | 

### Return type

[**PBTaxResponses***](PBTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchTaxRateByLocation**
```objc
-(NSNumber*) getBatchTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxRateLocationRequest*) body
        completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler;
```

Post Taxrate By Location

This is a Batch offering for 'Taxrate By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve applicable tax rates.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
PBTaxRateLocationRequest* body = [[PBTaxRateLocationRequest alloc] init]; // TaxRateLocationRequest Class Object having tax rate request.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Post Taxrate By Location
[apiInstance getBatchTaxRateByLocationWithTaxRateTypeId:taxRateTypeId
              body:body
          completionHandler: ^(PBTaxResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getBatchTaxRateByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **body** | [**PBTaxRateLocationRequest***](PBTaxRateLocationRequest*.md)| TaxRateLocationRequest Class Object having tax rate request. | 

### Return type

[**PBTaxResponses***](PBTaxResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/xml, application/json
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIPDTaxByAddress**
```objc
-(NSNumber*) getIPDTaxByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBTaxDistrictResponse* output, NSError* error)) handler;
```

Get IPD Tax by Address

This will accept 'address' as a parameter and will return one or many IPDs details for that region in which address will fall.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Get IPD Tax by Address
[apiInstance getIPDTaxByAddressWithAddress:address
          completionHandler: ^(PBTaxDistrictResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getIPDTaxByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 

### Return type

[**PBTaxDistrictResponse***](PBTaxDistrictResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIPDTaxByAddressBatch**
```objc
-(NSNumber*) getIPDTaxByAddressBatchWithBody: (PBIPDTaxByAddressBatchRequest*) body
        completionHandler: (void (^)(PBTaxDistrictResponseList* output, NSError* error)) handler;
```

Get IPD Tax for batch requests

Get IPD Tax for batch requests

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBIPDTaxByAddressBatchRequest* body = [[PBIPDTaxByAddressBatchRequest alloc] init]; // IPDTaxByAddressBatchRequest Class Object having IPD tax request

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Get IPD Tax for batch requests
[apiInstance getIPDTaxByAddressBatchWithBody:body
          completionHandler: ^(PBTaxDistrictResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getIPDTaxByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBIPDTaxByAddressBatchRequest***](PBIPDTaxByAddressBatchRequest*.md)| IPDTaxByAddressBatchRequest Class Object having IPD tax request | 

### Return type

[**PBTaxDistrictResponseList***](PBTaxDistrictResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecificTaxByAddress**
```objc
-(NSNumber*) getSpecificTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    purchaseAmount: (NSString*) purchaseAmount
        completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;
```

Get Tax By Address

This service calculates and returns taxes applicable at a specific address. Address, purchase amount and supported tax rate type are inputs to the service.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* address = @"address_example"; // The address to be searched.
NSString* purchaseAmount = @"purchaseAmount_example"; // The amount on which tax to be calculated.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Get Tax By Address
[apiInstance getSpecificTaxByAddressWithTaxRateTypeId:taxRateTypeId
              address:address
              purchaseAmount:purchaseAmount
          completionHandler: ^(PBTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getSpecificTaxByAddress: %@", error);
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

[**PBTaxResponse***](PBTaxResponse.md)

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
        completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;
```

Get Tax By Location

This service calculates and returns tax applicable at a specific location. Longitude, latitude, purchase amount and supported tax rate type are inputs to the service.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* purchaseAmount = @"purchaseAmount_example"; // The amount on which tax to be calculated.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Get Tax By Location
[apiInstance getSpecificTaxByLocationWithTaxRateTypeId:taxRateTypeId
              latitude:latitude
              longitude:longitude
              purchaseAmount:purchaseAmount
          completionHandler: ^(PBTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getSpecificTaxByLocation: %@", error);
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

[**PBTaxResponse***](PBTaxResponse.md)

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
        completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;
```

Get Taxrate By Address

Retrieves tax rates applicable to a specific address. This service accepts address and supported tax rate type as inputs to retrieve applicable tax rates.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* address = @"address_example"; // The address to be searched.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Get Taxrate By Address
[apiInstance getSpecificTaxRateByAddressWithTaxRateTypeId:taxRateTypeId
              address:address
          completionHandler: ^(PBTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getSpecificTaxRateByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxRateTypeId** | **NSString***| The tax rate id. | 
 **address** | **NSString***| The address to be searched. | 

### Return type

[**PBTaxResponse***](PBTaxResponse.md)

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
        completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler;
```

Get Taxrate By Location

Retrieves tax rates applicable to a specific location. This service accepts longitude, latitude and supported tax rate type as inputs to retrieve applicable tax rates.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* taxRateTypeId = @"taxRateTypeId_example"; // The tax rate id.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* longitude = @"longitude_example"; // Longitude of the location.

PBLIAPIGeoTaxServiceApi*apiInstance = [[PBLIAPIGeoTaxServiceApi alloc] init];

// Get Taxrate By Location
[apiInstance getSpecificTaxRateByLocationWithTaxRateTypeId:taxRateTypeId
              latitude:latitude
              longitude:longitude
          completionHandler: ^(PBTaxResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoTaxServiceApi->getSpecificTaxRateByLocation: %@", error);
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

[**PBTaxResponse***](PBTaxResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

