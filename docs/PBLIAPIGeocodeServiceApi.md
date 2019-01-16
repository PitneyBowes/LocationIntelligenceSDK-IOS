# PBLIAPIGeocodeServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocode**](PBLIAPIGeocodeServiceApi.md#geocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
[**geocodeBatch**](PBLIAPIGeocodeServiceApi.md#geocodebatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
[**getCapabilities**](PBLIAPIGeocodeServiceApi.md#getcapabilities) | **GET** /geocode-service/v1/transient/{datapackBundle}/capabilities | Gets Capabilities
[**getDictionaries**](PBLIAPIGeocodeServiceApi.md#getdictionaries) | **GET** /geocode-service/v1/transient/{datapackBundle}/dictionaries | Gets installed Dictionaries
[**getPBKey**](PBLIAPIGeocodeServiceApi.md#getpbkey) | **GET** /geocode-service/v1/key/byaddress | Gets PBKey
[**getPBKeys**](PBLIAPIGeocodeServiceApi.md#getpbkeys) | **POST** /geocode-service/v1/key/byaddress | Gets PBKeys
[**reverseGeocodBatch**](PBLIAPIGeocodeServiceApi.md#reversegeocodbatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode
[**reverseGeocode**](PBLIAPIGeocodeServiceApi.md#reversegeocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode


# **geocode**
```objc
-(NSNumber*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    placeName: (NSString*) placeName
    mainAddress: (NSString*) mainAddress
    lastLine: (NSString*) lastLine
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postalCode: (NSNumber*) postalCode
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSNumber*) fallbackGeo
    fallbackPostal: (NSNumber*) fallbackPostal
    maxCands: (NSNumber*) maxCands
    streetOffset: (NSNumber*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSNumber*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Gets Geocode

Gets Geocode

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to USA)
NSString* placeName = @"placeName_example"; // Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
NSString* mainAddress = @"4750 Walnut St., Boulder CO, 80301"; // Single line input, treated as collection of field elements. (optional) (default to 4750 Walnut St., Boulder CO, 80301)
NSString* lastLine = @"lastLine_example"; // The last line of the address. (optional)
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName2 = @"areaName2_example"; // Specifies the secondary geographic area, typically a county or district. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* areaName4 = @"areaName4_example"; // Specifies a city subdivision or locality. (optional)
NSNumber* postalCode = @56; // The postal code in the appropriate format for the country. (optional)
NSString* matchMode = @"Standard"; // Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to Standard)
NSNumber* fallbackGeo = @true; // Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to true)
NSNumber* fallbackPostal = @true; // Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to true)
NSNumber* maxCands = @1; // The maximum number of candidates to return. (optional) (default to 1)
NSNumber* streetOffset = @7; // Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to 7)
NSString* streetOffsetUnits = @"METERS"; // Specifies the unit of measurement for the street offset. (optional) (default to METERS)
NSNumber* cornerOffset = @7; // Specifies the distance to offset the street end points in street-level matching. (optional) (default to 7)
NSString* cornerOffsetUnits = @"METERS"; // Specifies the unit of measurement for the corner offset. (optional) (default to METERS)

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// Gets Geocode
[apiInstance geocodeWithDatapackBundle:datapackBundle
              country:country
              placeName:placeName
              mainAddress:mainAddress
              lastLine:lastLine
              areaName1:areaName1
              areaName2:areaName2
              areaName3:areaName3
              areaName4:areaName4
              postalCode:postalCode
              matchMode:matchMode
              fallbackGeo:fallbackGeo
              fallbackPostal:fallbackPostal
              maxCands:maxCands
              streetOffset:streetOffset
              streetOffsetUnits:streetOffsetUnits
              cornerOffset:cornerOffset
              cornerOffsetUnits:cornerOffsetUnits
          completionHandler: ^(PBGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->geocode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **country** | **NSString***| Country name or ISO code. | [optional] [default to USA]
 **placeName** | **NSString***| Building name, place name, Point of Interest (POI), company or firm name associated with the input address. | [optional] 
 **mainAddress** | **NSString***| Single line input, treated as collection of field elements. | [optional] [default to 4750 Walnut St., Boulder CO, 80301]
 **lastLine** | **NSString***| The last line of the address. | [optional] 
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province. | [optional] 
 **areaName2** | **NSString***| Specifies the secondary geographic area, typically a county or district. | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name. | [optional] 
 **areaName4** | **NSString***| Specifies a city subdivision or locality. | [optional] 
 **postalCode** | **NSNumber***| The postal code in the appropriate format for the country. | [optional] 
 **matchMode** | **NSString***| Match modes determine the leniency used to make a match between the input address and the reference data. | [optional] [default to Standard]
 **fallbackGeo** | **NSNumber***| Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. | [optional] [default to true]
 **fallbackPostal** | **NSNumber***| Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. | [optional] [default to true]
 **maxCands** | **NSNumber***| The maximum number of candidates to return. | [optional] [default to 1]
 **streetOffset** | **NSNumber***| Indicates the offset distance from the street segments to use in street-level geocoding. | [optional] [default to 7]
 **streetOffsetUnits** | **NSString***| Specifies the unit of measurement for the street offset. | [optional] [default to METERS]
 **cornerOffset** | **NSNumber***| Specifies the distance to offset the street end points in street-level matching. | [optional] [default to 7]
 **cornerOffsetUnits** | **NSString***| Specifies the unit of measurement for the corner offset. | [optional] [default to METERS]

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodeBatch**
```objc
-(NSNumber*) geocodeBatchWithBody: (PBGeocodeRequest*) body
    datapackBundle: (NSString*) datapackBundle
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Gets Geocode

Gets Geocode

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGeocodeRequest* body = [[PBGeocodeRequest alloc] init]; // Geocode Request Object
NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// Gets Geocode
[apiInstance geocodeBatchWithBody:body
              datapackBundle:datapackBundle
          completionHandler: ^(PBGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->geocodeBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBGeocodeRequest***](PBGeocodeRequest*.md)| Geocode Request Object | 
 **datapackBundle** | **NSString***| value of datapackBundle | 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCapabilities**
```objc
-(NSNumber*) getCapabilitiesWithDatapackBundle: (NSString*) datapackBundle
    operation: (NSString*) operation
    country: (NSString*) country
        completionHandler: (void (^)(PBGeocodeCapabilitiesResponse* output, NSError* error)) handler;
```

Gets Capabilities

Gets Capabilities

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* operation = @"geocode"; // Geocode or ReverseGeocode Operation. (optional) (default to geocode)
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to USA)

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// Gets Capabilities
[apiInstance getCapabilitiesWithDatapackBundle:datapackBundle
              operation:operation
              country:country
          completionHandler: ^(PBGeocodeCapabilitiesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->getCapabilities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **operation** | **NSString***| Geocode or ReverseGeocode Operation. | [optional] [default to geocode]
 **country** | **NSString***| Country name or ISO code. | [optional] [default to USA]

### Return type

[**PBGeocodeCapabilitiesResponse***](PBGeocodeCapabilitiesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDictionaries**
```objc
-(NSNumber*) getDictionariesWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
        completionHandler: (void (^)(PBConfiguredDictionaryResponse* output, NSError* error)) handler;
```

Gets installed Dictionaries

Gets installed Dictionaries

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* country = @"USA"; // Three Letter ISO Country code (optional) (default to USA)

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// Gets installed Dictionaries
[apiInstance getDictionariesWithDatapackBundle:datapackBundle
              country:country
          completionHandler: ^(PBConfiguredDictionaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->getDictionaries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **country** | **NSString***| Three Letter ISO Country code | [optional] [default to USA]

### Return type

[**PBConfiguredDictionaryResponse***](PBConfiguredDictionaryResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPBKey**
```objc
-(NSNumber*) getPBKeyWithAddress: (NSString*) address
        completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler;
```

Gets PBKey

Gets PBKey for an input free form address text

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// Gets PBKey
[apiInstance getPBKeyWithAddress:address
          completionHandler: ^(PBPBKeyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->getPBKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 

### Return type

[**PBPBKeyResponse***](PBPBKeyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPBKeys**
```objc
-(NSNumber*) getPBKeysWithBody: (PBPBKeyAddressRequest*) body
        completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler;
```

Gets PBKeys

Gets PBKeys for multiple input addresses

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPBKeyAddressRequest* body = [[PBPBKeyAddressRequest alloc] init]; // 

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// Gets PBKeys
[apiInstance getPBKeysWithBody:body
          completionHandler: ^(PBPBKeyResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->getPBKeys: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBPBKeyAddressRequest***](PBPBKeyAddressRequest*.md)|  | 

### Return type

[**PBPBKeyResponseList***](PBPBKeyResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverseGeocodBatch**
```objc
-(NSNumber*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBReverseGeocodeRequest*) body
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

reverse Geocode

reverse Geocode

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
PBReverseGeocodeRequest* body = [[PBReverseGeocodeRequest alloc] init]; // Request for Reverse Geocode (optional)

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// reverse Geocode
[apiInstance reverseGeocodBatchWithDatapackBundle:datapackBundle
              body:body
          completionHandler: ^(PBGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->reverseGeocodBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **body** | [**PBReverseGeocodeRequest***](PBReverseGeocodeRequest*.md)| Request for Reverse Geocode | [optional] 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverseGeocode**
```objc
-(NSNumber*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSNumber*) x
    y: (NSNumber*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSNumber*) distance
    distanceUnits: (NSString*) distanceUnits
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

reverse Geocode

reverse Geocode

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSNumber* x = @-105.240976; // Longitude of the location. (default to -105.240976)
NSNumber* y = @40.018301; // Latitude of the location. (default to 40.018301)
NSString* country = @"country_example"; // Country name or ISO code. (optional)
NSString* coordSysName = @"EPSG:4326"; // Coordinate system to convert geometry to in format codespace:code. (optional) (default to EPSG:4326)
NSNumber* distance = @150; // Radius in which search is performed. (optional) (default to 150)
NSString* distanceUnits = @"METERS"; // Unit of measurement. (optional) (default to METERS)

PBLIAPIGeocodeServiceApi*apiInstance = [[PBLIAPIGeocodeServiceApi alloc] init];

// reverse Geocode
[apiInstance reverseGeocodeWithDatapackBundle:datapackBundle
              x:x
              y:y
              country:country
              coordSysName:coordSysName
              distance:distance
              distanceUnits:distanceUnits
          completionHandler: ^(PBGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeocodeServiceApi->reverseGeocode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **x** | **NSNumber***| Longitude of the location. | [default to -105.240976]
 **y** | **NSNumber***| Latitude of the location. | [default to 40.018301]
 **country** | **NSString***| Country name or ISO code. | [optional] 
 **coordSysName** | **NSString***| Coordinate system to convert geometry to in format codespace:code. | [optional] [default to EPSG:4326]
 **distance** | **NSNumber***| Radius in which search is performed. | [optional] [default to 150]
 **distanceUnits** | **NSString***| Unit of measurement. | [optional] [default to METERS]

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

