# PBLIAPIGeoStreetsServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIntersectionByAddress**](PBLIAPIGeoStreetsServiceApi.md#getintersectionbyaddress) | **GET** /geostreets/v1/intersection/byaddress | Gets NearestIntersection of major roads
[**getIntersectionByLocation**](PBLIAPIGeoStreetsServiceApi.md#getintersectionbylocation) | **GET** /geostreets/v1/intersection/bylocation | Gets NearestIntersection of major roads


# **getIntersectionByAddress**
```objc
-(NSNumber*) getIntersectionByAddressWithAddress: (NSString*) address
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler;
```

Gets NearestIntersection of major roads

Gets NearestIntersection of major roads

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address
NSString* roadClass = @"roadClass_example"; // Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
NSString* driveTime = @"driveTime_example"; // Returns Intersection in specified drive time (optional)
NSString* driveTimeUnit = @"driveTimeUnit_example"; // Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
NSString* searchRadius = @"searchRadius_example"; // Search radius within which user wants to search, default is 50 miles (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
NSString* historicSpeed = @"historicSpeed_example"; // Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
NSString* maxCandidates = @"maxCandidates_example"; // max candidates to be returned default is 1 (optional)

PBLIAPIGeoStreetsServiceApi*apiInstance = [[PBLIAPIGeoStreetsServiceApi alloc] init];

// Gets NearestIntersection of major roads
[apiInstance getIntersectionByAddressWithAddress:address
              roadClass:roadClass
              driveTime:driveTime
              driveTimeUnit:driveTimeUnit
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              historicSpeed:historicSpeed
              maxCandidates:maxCandidates
          completionHandler: ^(PBIntersectionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoStreetsServiceApi->getIntersectionByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 
 **roadClass** | **NSString***| Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All | [optional] 
 **driveTime** | **NSString***| Returns Intersection in specified drive time | [optional] 
 **driveTimeUnit** | **NSString***| Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes | [optional] 
 **searchRadius** | **NSString***| Search radius within which user wants to search, default is 50 miles | [optional] 
 **searchRadiusUnit** | **NSString***| Search radius unit, allowed values are (feet, meter, kilometers and miles) | [optional] 
 **historicSpeed** | **NSString***| Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) | [optional] 
 **maxCandidates** | **NSString***| max candidates to be returned default is 1 | [optional] 

### Return type

[**PBIntersectionResponse***](PBIntersectionResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntersectionByLocation**
```objc
-(NSNumber*) getIntersectionByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler;
```

Gets NearestIntersection of major roads

Gets NearestIntersection of major roads

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* roadClass = @"roadClass_example"; // Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
NSString* driveTime = @"driveTime_example"; // Returns Intersection in specified drive time (optional)
NSString* driveTimeUnit = @"driveTimeUnit_example"; // Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
NSString* searchRadius = @"searchRadius_example"; // Search radius within which user wants to search, default is 50 miles (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
NSString* historicSpeed = @"historicSpeed_example"; // Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
NSString* maxCandidates = @"maxCandidates_example"; // max candidates to be returned default is 1 (optional)

PBLIAPIGeoStreetsServiceApi*apiInstance = [[PBLIAPIGeoStreetsServiceApi alloc] init];

// Gets NearestIntersection of major roads
[apiInstance getIntersectionByLocationWithLongitude:longitude
              latitude:latitude
              roadClass:roadClass
              driveTime:driveTime
              driveTimeUnit:driveTimeUnit
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              historicSpeed:historicSpeed
              maxCandidates:maxCandidates
          completionHandler: ^(PBIntersectionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoStreetsServiceApi->getIntersectionByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **roadClass** | **NSString***| Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All | [optional] 
 **driveTime** | **NSString***| Returns Intersection in specified drive time | [optional] 
 **driveTimeUnit** | **NSString***| Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes | [optional] 
 **searchRadius** | **NSString***| Search radius within which user wants to search, default is 50 miles | [optional] 
 **searchRadiusUnit** | **NSString***| Search radius unit, allowed values are (feet, meter, kilometers and miles) | [optional] 
 **historicSpeed** | **NSString***| Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) | [optional] 
 **maxCandidates** | **NSString***| max candidates to be returned default is 1 | [optional] 

### Return type

[**PBIntersectionResponse***](PBIntersectionResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

