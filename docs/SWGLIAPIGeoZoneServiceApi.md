# SWGLIAPIGeoZoneServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTravelBoundaryByDistance**](SWGLIAPIGeoZoneServiceApi.md#gettravelboundarybydistance) | **GET** /geozone/v1/travelboundary/bydistance | Gets travel Boundary by Distance
[**getTravelBoundaryByTime**](SWGLIAPIGeoZoneServiceApi.md#gettravelboundarybytime) | **GET** /geozone/v1/travelboundary/bytime | Gets travel Boundary by Time


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
        completionHandler: (void (^)(SWGTravelBoundaries* output, NSError* error)) handler;
```

Gets travel Boundary by Distance

Returns the travel boundary based on travel distance.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

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

SWGLIAPIGeoZoneServiceApi*apiInstance = [[SWGLIAPIGeoZoneServiceApi alloc] init];

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
          completionHandler: ^(SWGTravelBoundaries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoZoneServiceApi->getTravelBoundaryByDistance: %@", error);
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

### Return type

[**SWGTravelBoundaries***](SWGTravelBoundaries.md)

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
        completionHandler: (void (^)(SWGTravelBoundaries* output, NSError* error)) handler;
```

Gets travel Boundary by Time

Travel boundary based on travel time.

### Example 
```objc
SWGConfiguration *apiConfig = [SWGConfiguration sharedConfig];

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

SWGLIAPIGeoZoneServiceApi*apiInstance = [[SWGLIAPIGeoZoneServiceApi alloc] init];

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
          completionHandler: ^(SWGTravelBoundaries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGLIAPIGeoZoneServiceApi->getTravelBoundaryByTime: %@", error);
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

### Return type

[**SWGTravelBoundaries***](SWGTravelBoundaries.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

