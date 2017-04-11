# SWGLIAPIGeocodeServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocode**](SWGLIAPIGeocodeServiceApi.md#geocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
[**geocodeBatch**](SWGLIAPIGeocodeServiceApi.md#geocodebatch) | **POST** /geocode-service/v1/transient/{datapackBundle}/geocode | Gets Geocode
[**geocodeServiceV1TransientDatapackBundleReverseGeocodePost**](SWGLIAPIGeocodeServiceApi.md#geocodeservicev1transientdatapackbundlereversegeocodepost) | **POST** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode
[**getCapabilities**](SWGLIAPIGeocodeServiceApi.md#getcapabilities) | **GET** /geocode-service/v1/transient/{datapackBundle}/capabilities | Gets Capabilities
[**getDictionaries**](SWGLIAPIGeocodeServiceApi.md#getdictionaries) | **GET** /geocode-service/v1/transient/{datapackBundle}/dictionaries | Gets installed Dictionaries
[**reverseGeocode**](SWGLIAPIGeocodeServiceApi.md#reversegeocode) | **GET** /geocode-service/v1/transient/{datapackBundle}/reverseGeocode | reverse Geocode


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
        completionHandler: (void (^)(SWGGeocodeServiceResponse* output, NSError* error)) handler;
```

Gets Geocode

Gets Geocode

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to USA)
NSString* placeName = @"placeName_example"; // Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
NSString* mainAddress = @"4750 Walnut St., Boulder CO, 80301"; // Single line input, treated as collection of field elements. (optional) (default to 4750 Walnut St., Boulder CO, 80301)
NSString* lastLine = @"lastLine_example"; // The last line of the address. (optional)
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographic area, typically a state or province. (optional)
NSString* areaName2 = @"areaName2_example"; // Specifies the secondary geographic area, typically a county or district. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* areaName4 = @"areaName4_example"; // Specifies a city subdivision or locality. (optional)
NSNumber* postalCode = @56; // The postal code in the appropriate format for the country. (optional)
NSString* matchMode = @"Standard"; // Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to Standard)
NSNumber* fallbackGeo = @true; // Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to true)
NSNumber* fallbackPostal = @true; // Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to true)
NSNumber* maxCands = @1; // The maximum number of candidates to return. Must be an integer value. (optional) (default to 1)
NSNumber* streetOffset = @7; // Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to 7)
NSString* streetOffsetUnits = @"METERS"; // Specifies the unit of measurement for the street offset. (optional) (default to METERS)
NSNumber* cornerOffset = @7; // Specifies the distance to offset the street end points in street-level matching. (optional) (default to 7)
NSString* cornerOffsetUnits = @"METERS"; // Specifies the unit of measurement for the corner offset. (optional) (default to METERS)

SWGLIAPIGeocodeServiceApi*apiInstance = [[SWGLIAPIGeocodeServiceApi alloc] init];

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
          completionHandler: ^(SWGGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeocodeServiceApi->geocode: %@", error);
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
 **areaName1** | **NSString***| Specifies the largest geographic area, typically a state or province. | [optional] 
 **areaName2** | **NSString***| Specifies the secondary geographic area, typically a county or district. | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name. | [optional] 
 **areaName4** | **NSString***| Specifies a city subdivision or locality. | [optional] 
 **postalCode** | **NSNumber***| The postal code in the appropriate format for the country. | [optional] 
 **matchMode** | **NSString***| Match modes determine the leniency used to make a match between the input address and the reference data. | [optional] [default to Standard]
 **fallbackGeo** | **NSNumber***| Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. | [optional] [default to true]
 **fallbackPostal** | **NSNumber***| Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. | [optional] [default to true]
 **maxCands** | **NSNumber***| The maximum number of candidates to return. Must be an integer value. | [optional] [default to 1]
 **streetOffset** | **NSNumber***| Indicates the offset distance from the street segments to use in street-level geocoding. | [optional] [default to 7]
 **streetOffsetUnits** | **NSString***| Specifies the unit of measurement for the street offset. | [optional] [default to METERS]
 **cornerOffset** | **NSNumber***| Specifies the distance to offset the street end points in street-level matching. | [optional] [default to 7]
 **cornerOffsetUnits** | **NSString***| Specifies the unit of measurement for the corner offset. | [optional] [default to METERS]

### Return type

[**SWGGeocodeServiceResponse***](SWGGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodeBatch**
```objc
-(NSNumber*) geocodeBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (SWGGeocodeRequest*) body
        completionHandler: (void (^)(SWGGeocodeServiceResponseList* output, NSError* error)) handler;
```

Gets Geocode

Gets Geocode

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
SWGGeocodeRequest* body = [[SWGGeocodeRequest alloc] init]; // Geocode Request Object (optional)

SWGLIAPIGeocodeServiceApi*apiInstance = [[SWGLIAPIGeocodeServiceApi alloc] init];

// Gets Geocode
[apiInstance geocodeBatchWithDatapackBundle:datapackBundle
              body:body
          completionHandler: ^(SWGGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeocodeServiceApi->geocodeBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **body** | [**SWGGeocodeRequest***](SWGGeocodeRequest*.md)| Geocode Request Object | [optional] 

### Return type

[**SWGGeocodeServiceResponseList***](SWGGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodeServiceV1TransientDatapackBundleReverseGeocodePost**
```objc
-(NSNumber*) geocodeServiceV1TransientDatapackBundleReverseGeocodePostWithDatapackBundle: (NSString*) datapackBundle
    body: (SWGReverseGeocodeRequest*) body
        completionHandler: (void (^)(SWGGeocodeServiceResponseList* output, NSError* error)) handler;
```

reverse Geocode

reverse Geocode

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
SWGReverseGeocodeRequest* body = [[SWGReverseGeocodeRequest alloc] init]; // Reverse Geocode Request object (optional)

SWGLIAPIGeocodeServiceApi*apiInstance = [[SWGLIAPIGeocodeServiceApi alloc] init];

// reverse Geocode
[apiInstance geocodeServiceV1TransientDatapackBundleReverseGeocodePostWithDatapackBundle:datapackBundle
              body:body
          completionHandler: ^(SWGGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeocodeServiceApi->geocodeServiceV1TransientDatapackBundleReverseGeocodePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **body** | [**SWGReverseGeocodeRequest***](SWGReverseGeocodeRequest*.md)| Reverse Geocode Request object | [optional] 

### Return type

[**SWGGeocodeServiceResponseList***](SWGGeocodeServiceResponseList.md)

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
        completionHandler: (void (^)(SWGGeocodeCapabilitiesResponse* output, NSError* error)) handler;
```

Gets Capabilities

Gets Capabilities

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* operation = @"geocode"; // Geocode or ReverseGeocode Operation. (optional) (default to geocode)
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to USA)

SWGLIAPIGeocodeServiceApi*apiInstance = [[SWGLIAPIGeocodeServiceApi alloc] init];

// Gets Capabilities
[apiInstance getCapabilitiesWithDatapackBundle:datapackBundle
              operation:operation
              country:country
          completionHandler: ^(SWGGeocodeCapabilitiesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeocodeServiceApi->getCapabilities: %@", error);
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

[**SWGGeocodeCapabilitiesResponse***](SWGGeocodeCapabilitiesResponse.md)

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
        completionHandler: (void (^)(SWGConfiguredDictionaryResponse* output, NSError* error)) handler;
```

Gets installed Dictionaries

Gets installed Dictionaries

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* country = @"USA"; // Three Letter ISO Country code (optional) (default to USA)

SWGLIAPIGeocodeServiceApi*apiInstance = [[SWGLIAPIGeocodeServiceApi alloc] init];

// Gets installed Dictionaries
[apiInstance getDictionariesWithDatapackBundle:datapackBundle
              country:country
          completionHandler: ^(SWGConfiguredDictionaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeocodeServiceApi->getDictionaries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **country** | **NSString***| Three Letter ISO Country code | [optional] [default to USA]

### Return type

[**SWGConfiguredDictionaryResponse***](SWGConfiguredDictionaryResponse.md)

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
        completionHandler: (void (^)(SWGGeocodeServiceResponse* output, NSError* error)) handler;
```

reverse Geocode

reverse Geocode

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSNumber* x = @-105.240976; // Longitude of the location. (default to -105.240976)
NSNumber* y = @40.018301; // Latitude of the location. (default to 40.018301)
NSString* country = @"country_example"; // Country name or ISO code. (optional)
NSString* coordSysName = @"EPSG:4326"; // Coordinate system to convert geometry in format codespace:code. (optional) (default to EPSG:4326)
NSNumber* distance = @150; // Radius in which search is performed. (optional) (default to 150)
NSString* distanceUnits = @"METERS"; // Unit of measurement for the search distance. (optional) (default to METERS)

SWGLIAPIGeocodeServiceApi*apiInstance = [[SWGLIAPIGeocodeServiceApi alloc] init];

// reverse Geocode
[apiInstance reverseGeocodeWithDatapackBundle:datapackBundle
              x:x
              y:y
              country:country
              coordSysName:coordSysName
              distance:distance
              distanceUnits:distanceUnits
          completionHandler: ^(SWGGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeocodeServiceApi->reverseGeocode: %@", error);
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
 **coordSysName** | **NSString***| Coordinate system to convert geometry in format codespace:code. | [optional] [default to EPSG:4326]
 **distance** | **NSNumber***| Radius in which search is performed. | [optional] [default to 150]
 **distanceUnits** | **NSString***| Unit of measurement for the search distance. | [optional] [default to METERS]

### Return type

[**SWGGeocodeServiceResponse***](SWGGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

