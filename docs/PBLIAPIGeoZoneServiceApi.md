# PBLIAPIGeoZoneServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBasicBoundaryByAddress**](PBLIAPIGeoZoneServiceApi.md#getbasicboundarybyaddress) | **GET** /geozone/v1/basicboundary/byaddress | Gets Basic Boundary by Address
[**getBasicBoundaryByLocation**](PBLIAPIGeoZoneServiceApi.md#getbasicboundarybylocation) | **GET** /geozone/v1/basicboundary/bylocation | Gets Basic Boundary by Location
[**getPOIBoundaryByAddress**](PBLIAPIGeoZoneServiceApi.md#getpoiboundarybyaddress) | **GET** /geozone/v1/poiboundary/byaddress | Get Point of Interests Boundary by Address
[**getPOIBoundaryByAddressBatch**](PBLIAPIGeoZoneServiceApi.md#getpoiboundarybyaddressbatch) | **POST** /geozone/v1/poiboundary/byaddress | Batch method for getting Point of Interests Boundary by Address
[**getPOIBoundaryByLocation**](PBLIAPIGeoZoneServiceApi.md#getpoiboundarybylocation) | **GET** /geozone/v1/poiboundary/bylocation | Get Point of Interests Boundary by Location
[**getPOIBoundaryByLocationBatch**](PBLIAPIGeoZoneServiceApi.md#getpoiboundarybylocationbatch) | **POST** /geozone/v1/poiboundary/bylocation | Batch method for getting Point of Interests Boundary by Location
[**getTravelBoundaryByDistance**](PBLIAPIGeoZoneServiceApi.md#gettravelboundarybydistance) | **GET** /geozone/v1/travelboundary/bydistance | Gets travel Boundary by Distance
[**getTravelBoundaryByTime**](PBLIAPIGeoZoneServiceApi.md#gettravelboundarybytime) | **GET** /geozone/v1/travelboundary/bytime | Gets travel Boundary by Time


# **getBasicBoundaryByAddress**
```objc
-(NSNumber*) getBasicBoundaryByAddressWithAddress: (NSString*) address
    distance: (NSString*) distance
    country: (NSString*) country
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
        completionHandler: (void (^)(PBBasicBoundaryAddress* output, NSError* error)) handler;
```

Gets Basic Boundary by Address

Gets Basic Boundary by Address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address around which Basic Boundary is requested
NSString* distance = @"distance_example"; // This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number.
NSString* country = @"USA"; // Three digit ISO country code (optional) (default to USA)
NSString* distanceUnit = @"feet"; // Longitude around which Basic Boundary is requested (optional) (default to feet)
NSString* resolution = @"resolution_example"; // This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
NSString* responseSrs = @"epsg:4326"; // The spatial reference system to express the response in. By default, it would be epsg:4326 (optional) (default to epsg:4326)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Gets Basic Boundary by Address
[apiInstance getBasicBoundaryByAddressWithAddress:address
              distance:distance
              country:country
              distanceUnit:distanceUnit
              resolution:resolution
              responseSrs:responseSrs
          completionHandler: ^(PBBasicBoundaryAddress* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getBasicBoundaryByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address around which Basic Boundary is requested | 
 **distance** | **NSString***| This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number. | 
 **country** | **NSString***| Three digit ISO country code | [optional] [default to USA]
 **distanceUnit** | **NSString***| Longitude around which Basic Boundary is requested | [optional] [default to feet]
 **resolution** | **NSString***| This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. | [optional] 
 **responseSrs** | **NSString***| The spatial reference system to express the response in. By default, it would be epsg:4326 | [optional] [default to epsg:4326]

### Return type

[**PBBasicBoundaryAddress***](PBBasicBoundaryAddress.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBasicBoundaryByLocation**
```objc
-(NSNumber*) getBasicBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    distance: (NSString*) distance
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
    srsName: (NSString*) srsName
        completionHandler: (void (^)(PBBasicBoundary* output, NSError* error)) handler;
```

Gets Basic Boundary by Location

Gets Basic Boundary by Location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* latitude = @"latitude_example"; // Latitude around which Basic Boundary is requested
NSString* longitude = @"longitude_example"; // Longitude around which Basic Boundary is requested
NSString* distance = @"distance_example"; // This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number.
NSString* distanceUnit = @"feet"; // Longitude around which Basic Boundary is requested (optional) (default to feet)
NSString* resolution = @"resolution_example"; // This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
NSString* responseSrs = @"epsg:4326"; // The spatial reference system to express the response in. By default, it would be epsg:4326 (optional) (default to epsg:4326)
NSString* srsName = @"epsg:4326"; // The spatial reference system for input. By default, it would be epsg:4326 (optional) (default to epsg:4326)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Gets Basic Boundary by Location
[apiInstance getBasicBoundaryByLocationWithLatitude:latitude
              longitude:longitude
              distance:distance
              distanceUnit:distanceUnit
              resolution:resolution
              responseSrs:responseSrs
              srsName:srsName
          completionHandler: ^(PBBasicBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getBasicBoundaryByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **NSString***| Latitude around which Basic Boundary is requested | 
 **longitude** | **NSString***| Longitude around which Basic Boundary is requested | 
 **distance** | **NSString***| This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number. | 
 **distanceUnit** | **NSString***| Longitude around which Basic Boundary is requested | [optional] [default to feet]
 **resolution** | **NSString***| This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. | [optional] 
 **responseSrs** | **NSString***| The spatial reference system to express the response in. By default, it would be epsg:4326 | [optional] [default to epsg:4326]
 **srsName** | **NSString***| The spatial reference system for input. By default, it would be epsg:4326 | [optional] [default to epsg:4326]

### Return type

[**PBBasicBoundary***](PBBasicBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByAddress**
```objc
-(NSNumber*) getPOIBoundaryByAddressWithAddress: (NSString*) address
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
        completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;
```

Get Point of Interests Boundary by Address

Gets Point of Interests Boundary by Address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address around which POI Boundary is requested
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. (optional)
NSString* sicCode = @"sicCode_example"; // Specify starting digits or full sic code to filter the response (optional)
NSString* naicsCode = @"naicsCode_example"; // Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Get Point of Interests Boundary by Address
[apiInstance getPOIBoundaryByAddressWithAddress:address
              categoryCode:categoryCode
              sicCode:sicCode
              naicsCode:naicsCode
          completionHandler: ^(PBPoiBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getPOIBoundaryByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address around which POI Boundary is requested | 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. | [optional] 
 **sicCode** | **NSString***| Specify starting digits or full sic code to filter the response | [optional] 
 **naicsCode** | **NSString***| Will accept naicsCode to filter POIs in results. Max 10 allowed. | [optional] 

### Return type

[**PBPoiBoundary***](PBPoiBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByAddressBatch**
```objc
-(NSNumber*) getPOIBoundaryByAddressBatchWithBody: (PBPOIBoundaryAddressRequest*) body
        completionHandler: (void (^)(PBPOIBoundaryResponse* output, NSError* error)) handler;
```

Batch method for getting Point of Interests Boundary by Address

Batch method for getting Point of Interests Boundary by Address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPOIBoundaryAddressRequest* body = [[PBPOIBoundaryAddressRequest alloc] init]; //  (optional)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Batch method for getting Point of Interests Boundary by Address
[apiInstance getPOIBoundaryByAddressBatchWithBody:body
          completionHandler: ^(PBPOIBoundaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getPOIBoundaryByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBPOIBoundaryAddressRequest***](PBPOIBoundaryAddressRequest*.md)|  | [optional] 

### Return type

[**PBPOIBoundaryResponse***](PBPOIBoundaryResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByLocation**
```objc
-(NSNumber*) getPOIBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
        completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;
```

Get Point of Interests Boundary by Location

Get Point of Interests Boundary by Location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* latitude = @"latitude_example"; // Latitude around which POI Boundary is requested
NSString* longitude = @"longitude_example"; // Longitude around which POI Boundary is requested
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes (optional)
NSString* sicCode = @"sicCode_example"; // Specify starting digits or full sic code to filter the response (optional)
NSString* naicsCode = @"naicsCode_example"; // Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Get Point of Interests Boundary by Location
[apiInstance getPOIBoundaryByLocationWithLatitude:latitude
              longitude:longitude
              categoryCode:categoryCode
              sicCode:sicCode
              naicsCode:naicsCode
          completionHandler: ^(PBPoiBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getPOIBoundaryByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **NSString***| Latitude around which POI Boundary is requested | 
 **longitude** | **NSString***| Longitude around which POI Boundary is requested | 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes | [optional] 
 **sicCode** | **NSString***| Specify starting digits or full sic code to filter the response | [optional] 
 **naicsCode** | **NSString***| Will accept naicsCode to filter POIs in results. Max 10 allowed. | [optional] 

### Return type

[**PBPoiBoundary***](PBPoiBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByLocationBatch**
```objc
-(NSNumber*) getPOIBoundaryByLocationBatchWithBody: (PBPOIBoundaryLocationRequest*) body
        completionHandler: (void (^)(PBPOIBoundaryResponse* output, NSError* error)) handler;
```

Batch method for getting Point of Interests Boundary by Location

Batch method for getting Point of Interests Boundary by Location

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPOIBoundaryLocationRequest* body = [[PBPOIBoundaryLocationRequest alloc] init]; //  (optional)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Batch method for getting Point of Interests Boundary by Location
[apiInstance getPOIBoundaryByLocationBatchWithBody:body
          completionHandler: ^(PBPOIBoundaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getPOIBoundaryByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBPOIBoundaryLocationRequest***](PBPOIBoundaryLocationRequest*.md)|  | [optional] 

### Return type

[**PBPOIBoundaryResponse***](PBPOIBoundaryResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelBoundaryByDistance**
```objc
-(NSNumber*) getTravelBoundaryByDistanceWithCosts: (NSString*) costs
    point: (NSString*) point
    address: (NSString*) address
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
        completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;
```

Gets travel Boundary by Distance

Returns the travel boundary based on travel distance.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* costs = @"costs_example"; // Travel distance(s)
NSString* point = @"point_example"; // Starting point from where the travel boundary is calculated. Point in 'Lat,Long,coordsys' format (optional)
NSString* address = @"address_example"; // Starting address from where the travel boundary is calculated. (optional)
NSString* costUnit = @"m"; // Travel distance such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
NSString* db = @"driving"; // Mode of commute. (optional) (default to driving)
NSString* country = @"USA"; // Three digit ISO country code. (optional) (default to USA)
NSString* maxOffroadDistance = @"maxOffroadDistance_example"; // Maximum distance to allow travel off the road network. (optional)
NSString* maxOffroadDistanceUnit = @"maxOffroadDistanceUnit_example"; // MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
NSString* destinationSrs = @"destinationSrs_example"; // Desired coordinate system of the travel boundary. (optional)
NSString* majorRoads = @"false"; // Whether to include all roads in the calculation or just major roads. (optional) (default to false)
NSString* returnHoles = @"false"; // Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired distance. (optional) (default to false)
NSString* returnIslands = @"false"; // Whether to return islands, which are small areas outside the main boundary that can be reached within the desired distance. (optional) (default to false)
NSString* simplificationFactor = @"0.5"; // Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. (optional) (default to 0.5)
NSString* bandingStyle = @"Donut"; // Style of banding to be used in the result. (optional) (default to Donut)
NSString* historicTrafficTimeBucket = @"None"; // Whether routing calculation uses the historic traffic speeds. (optional) (default to None)
NSString* defaultAmbientSpeed = @"defaultAmbientSpeed_example"; // The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
NSString* ambientSpeedUnit = @"MPH"; // The unit of measure to use to calculate the ambient speed. (optional) (default to MPH)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Gets travel Boundary by Distance
[apiInstance getTravelBoundaryByDistanceWithCosts:costs
              point:point
              address:address
              costUnit:costUnit
              db:db
              country:country
              maxOffroadDistance:maxOffroadDistance
              maxOffroadDistanceUnit:maxOffroadDistanceUnit
              destinationSrs:destinationSrs
              majorRoads:majorRoads
              returnHoles:returnHoles
              returnIslands:returnIslands
              simplificationFactor:simplificationFactor
              bandingStyle:bandingStyle
              historicTrafficTimeBucket:historicTrafficTimeBucket
              defaultAmbientSpeed:defaultAmbientSpeed
              ambientSpeedUnit:ambientSpeedUnit
          completionHandler: ^(PBTravelBoundaries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getTravelBoundaryByDistance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costs** | **NSString***| Travel distance(s) | 
 **point** | **NSString***| Starting point from where the travel boundary is calculated. Point in &#39;Lat,Long,coordsys&#39; format | [optional] 
 **address** | **NSString***| Starting address from where the travel boundary is calculated. | [optional] 
 **costUnit** | **NSString***| Travel distance such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to m]
 **db** | **NSString***| Mode of commute. | [optional] [default to driving]
 **country** | **NSString***| Three digit ISO country code. | [optional] [default to USA]
 **maxOffroadDistance** | **NSString***| Maximum distance to allow travel off the road network. | [optional] 
 **maxOffroadDistanceUnit** | **NSString***| MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] 
 **destinationSrs** | **NSString***| Desired coordinate system of the travel boundary. | [optional] 
 **majorRoads** | **NSString***| Whether to include all roads in the calculation or just major roads. | [optional] [default to false]
 **returnHoles** | **NSString***| Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired distance. | [optional] [default to false]
 **returnIslands** | **NSString***| Whether to return islands, which are small areas outside the main boundary that can be reached within the desired distance. | [optional] [default to false]
 **simplificationFactor** | **NSString***| Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. | [optional] [default to 0.5]
 **bandingStyle** | **NSString***| Style of banding to be used in the result. | [optional] [default to Donut]
 **historicTrafficTimeBucket** | **NSString***| Whether routing calculation uses the historic traffic speeds. | [optional] [default to None]
 **defaultAmbientSpeed** | **NSString***| The speed to travel when going off a network road to find the travel boundary (for all road types). | [optional] 
 **ambientSpeedUnit** | **NSString***| The unit of measure to use to calculate the ambient speed. | [optional] [default to MPH]

### Return type

[**PBTravelBoundaries***](PBTravelBoundaries.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelBoundaryByTime**
```objc
-(NSNumber*) getTravelBoundaryByTimeWithCosts: (NSString*) costs
    point: (NSString*) point
    address: (NSString*) address
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
        completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;
```

Gets travel Boundary by Time

Travel boundary based on travel time.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* costs = @"costs_example"; // Travel time used to calculate the travel boundary.
NSString* point = @"point_example"; // Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format (optional)
NSString* address = @"address_example"; // Starting address from where the travel boundary is calculated. (optional)
NSString* costUnit = @"min"; // Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
NSString* db = @"driving"; // Mode of commute. (optional) (default to driving)
NSString* country = @"USA"; // 3 character ISO code or country name. (optional) (default to USA)
NSString* maxOffroadDistance = @"maxOffroadDistance_example"; // Maximum distance to allow travel off the road network. (optional)
NSString* maxOffroadDistanceUnit = @"maxOffroadDistanceUnit_example"; // MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
NSString* destinationSrs = @"destinationSrs_example"; // Desired coordinate system of the travel boundary. (optional)
NSString* majorRoads = @"false"; // Whether to include all roads in the calculation or just major roads. (optional) (default to false)
NSString* returnHoles = @"false"; // Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time. (optional) (default to false)
NSString* returnIslands = @"false"; // Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time. (optional) (default to false)
NSString* simplificationFactor = @"0.5"; // Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. (optional) (default to 0.5)
NSString* bandingStyle = @"Donut"; // Style of banding to be used in the result. (optional) (default to Donut)
NSString* historicTrafficTimeBucket = @"None"; // Whether routing calculation uses the historic traffic speeds. (optional) (default to None)
NSString* defaultAmbientSpeed = @"defaultAmbientSpeed_example"; // The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
NSString* ambientSpeedUnit = @"MPH"; // The unit of measure to use to calculate the ambient speed. (optional) (default to MPH)

PBLIAPIGeoZoneServiceApi*apiInstance = [[PBLIAPIGeoZoneServiceApi alloc] init];

// Gets travel Boundary by Time
[apiInstance getTravelBoundaryByTimeWithCosts:costs
              point:point
              address:address
              costUnit:costUnit
              db:db
              country:country
              maxOffroadDistance:maxOffroadDistance
              maxOffroadDistanceUnit:maxOffroadDistanceUnit
              destinationSrs:destinationSrs
              majorRoads:majorRoads
              returnHoles:returnHoles
              returnIslands:returnIslands
              simplificationFactor:simplificationFactor
              bandingStyle:bandingStyle
              historicTrafficTimeBucket:historicTrafficTimeBucket
              defaultAmbientSpeed:defaultAmbientSpeed
              ambientSpeedUnit:ambientSpeedUnit
          completionHandler: ^(PBTravelBoundaries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoZoneServiceApi->getTravelBoundaryByTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costs** | **NSString***| Travel time used to calculate the travel boundary. | 
 **point** | **NSString***| Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format | [optional] 
 **address** | **NSString***| Starting address from where the travel boundary is calculated. | [optional] 
 **costUnit** | **NSString***| Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to min]
 **db** | **NSString***| Mode of commute. | [optional] [default to driving]
 **country** | **NSString***| 3 character ISO code or country name. | [optional] [default to USA]
 **maxOffroadDistance** | **NSString***| Maximum distance to allow travel off the road network. | [optional] 
 **maxOffroadDistanceUnit** | **NSString***| MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] 
 **destinationSrs** | **NSString***| Desired coordinate system of the travel boundary. | [optional] 
 **majorRoads** | **NSString***| Whether to include all roads in the calculation or just major roads. | [optional] [default to false]
 **returnHoles** | **NSString***| Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time. | [optional] [default to false]
 **returnIslands** | **NSString***| Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time. | [optional] [default to false]
 **simplificationFactor** | **NSString***| Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. | [optional] [default to 0.5]
 **bandingStyle** | **NSString***| Style of banding to be used in the result. | [optional] [default to Donut]
 **historicTrafficTimeBucket** | **NSString***| Whether routing calculation uses the historic traffic speeds. | [optional] [default to None]
 **defaultAmbientSpeed** | **NSString***| The speed to travel when going off a network road to find the travel boundary (for all road types). | [optional] 
 **ambientSpeedUnit** | **NSString***| The unit of measure to use to calculate the ambient speed. | [optional] [default to MPH]

### Return type

[**PBTravelBoundaries***](PBTravelBoundaries.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

