# PBLIAPIGeoPropertyServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGeoPropertyByAddress**](PBLIAPIGeoPropertyServiceApi.md#getgeopropertybyaddress) | **GET** /geoproperty/v1/all/attributes/byaddress | Gets GeoPropertyResponse
[**getGeoPropertyByAddressBatch**](PBLIAPIGeoPropertyServiceApi.md#getgeopropertybyaddressbatch) | **POST** /geoproperty/v1/all/attributes/byaddress | Gets GeoPropertyResponses
[**getParcelBoundaryByAddress**](PBLIAPIGeoPropertyServiceApi.md#getparcelboundarybyaddress) | **GET** /geoproperty/v1/parcelboundary/byaddress | Gets ParcelBoundary
[**getParcelBoundaryByLocation**](PBLIAPIGeoPropertyServiceApi.md#getparcelboundarybylocation) | **GET** /geoproperty/v1/parcelboundary/bylocation | Gets ParcelBoundary
[**getSchoolsByAddress**](PBLIAPIGeoPropertyServiceApi.md#getschoolsbyaddress) | **GET** /geoproperty/v1/school/byaddress | Search Nearby Schools by Address


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

# **getParcelBoundaryByAddress**
```objc
-(NSNumber*) getParcelBoundaryByAddressWithAddress: (NSString*) address
    accept: (NSString*) accept
        completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler;
```

Gets ParcelBoundary

Gets ParcelBoundary

### Example 
```objc

NSString* address = @"address_example"; // free form address text
NSString* accept = @"accept_example"; //  (optional)

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Gets ParcelBoundary
[apiInstance getParcelBoundaryByAddressWithAddress:address
              accept:accept
          completionHandler: ^(PBParcelBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getParcelBoundaryByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **accept** | **NSString***|  | [optional] 

### Return type

[**PBParcelBoundary***](PBParcelBoundary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParcelBoundaryByLocation**
```objc
-(NSNumber*) getParcelBoundaryByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    accept: (NSString*) accept
        completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler;
```

Gets ParcelBoundary

Gets ParcelBoundary

### Example 
```objc

NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* accept = @"accept_example"; //  (optional)

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Gets ParcelBoundary
[apiInstance getParcelBoundaryByLocationWithLongitude:longitude
              latitude:latitude
              accept:accept
          completionHandler: ^(PBParcelBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getParcelBoundaryByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **accept** | **NSString***|  | [optional] 

### Return type

[**PBParcelBoundary***](PBParcelBoundary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchoolsByAddress**
```objc
-(NSNumber*) getSchoolsByAddressWithAddress: (NSString*) address
    edLevel: (NSString*) edLevel
    schoolType: (NSString*) schoolType
    schoolSubType: (NSString*) schoolSubType
    gender: (NSString*) gender
    assignedSchoolsOnly: (NSString*) assignedSchoolsOnly
    districtSchoolsOnly: (NSString*) districtSchoolsOnly
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBSchoolsNearByResponse* output, NSError* error)) handler;
```

Search Nearby Schools by Address

Search Nearby Schools by Address

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* edLevel = @"edLevel_example"; // Single digit code for education level applicable values are P -> primary, M -> Middle, H -> High, O -> Mixed Grades for public school type andE -> Elementary , S -> Secondary , O -> Others mixed grades for private schools  (optional)
NSString* schoolType = @"schoolType_example"; // Single digit code for schoolTypes applicable values are PRI and PUB (optional)
NSString* schoolSubType = @"schoolSubType_example"; // Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
NSString* gender = @"gender_example"; // Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) (optional)
NSString* assignedSchoolsOnly = @"assignedSchoolsOnly_example"; // Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
NSString* districtSchoolsOnly = @"districtSchoolsOnly_example"; // Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
NSString* searchRadius = @"searchRadius_example"; // Search Radius within which schools are searched (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
NSString* travelTime = @"travelTime_example"; // Travel Time based on ‘travelMode’ within which schools are searched. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
NSString* travelDistance = @"travelDistance_example"; // Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
NSString* travelMode = @"travelMode_example"; // Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
NSString* maxCandidates = @"10"; // Max result to search  (optional) (default to 10)

PBLIAPIGeoPropertyServiceApi*apiInstance = [[PBLIAPIGeoPropertyServiceApi alloc] init];

// Search Nearby Schools by Address
[apiInstance getSchoolsByAddressWithAddress:address
              edLevel:edLevel
              schoolType:schoolType
              schoolSubType:schoolSubType
              gender:gender
              assignedSchoolsOnly:assignedSchoolsOnly
              districtSchoolsOnly:districtSchoolsOnly
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              maxCandidates:maxCandidates
          completionHandler: ^(PBSchoolsNearByResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPropertyServiceApi->getSchoolsByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **edLevel** | **NSString***| Single digit code for education level applicable values are P -&gt; primary, M -&gt; Middle, H -&gt; High, O -&gt; Mixed Grades for public school type andE -&gt; Elementary , S -&gt; Secondary , O -&gt; Others mixed grades for private schools  | [optional] 
 **schoolType** | **NSString***| Single digit code for schoolTypes applicable values are PRI and PUB | [optional] 
 **schoolSubType** | **NSString***| Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) | [optional] 
 **gender** | **NSString***| Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) | [optional] 
 **assignedSchoolsOnly** | **NSString***| Single digit code for assignedSchoolOnly applicable values are  Y/N  | [optional] 
 **districtSchoolsOnly** | **NSString***| Single digit code for districtSchoolOnly applicable values are Y/N  | [optional] 
 **searchRadius** | **NSString***| Search Radius within which schools are searched | [optional] 
 **searchRadiusUnit** | **NSString***| Search Radius unit applicable values are feet,kilometers,miles,meters | [optional] 
 **travelTime** | **NSString***| Travel Time based on ‘travelMode’ within which schools are searched. | [optional] 
 **travelTimeUnit** | **NSString***| Travel Time unit applicable values are minutes,hours,seconds,milliseconds  | [optional] 
 **travelDistance** | **NSString***| Travel Distance based on ‘travelMode’ within which schools are searched. | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distanceUnit applicable values are feet,kilometers,miles,meters | [optional] 
 **travelMode** | **NSString***| Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving | [optional] 
 **maxCandidates** | **NSString***| Max result to search  | [optional] [default to 10]

### Return type

[**PBSchoolsNearByResponse***](PBSchoolsNearByResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

