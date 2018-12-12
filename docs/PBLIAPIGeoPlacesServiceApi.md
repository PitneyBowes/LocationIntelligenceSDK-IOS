# PBLIAPIGeoPlacesServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategoryCodeMetadata**](PBLIAPIGeoPlacesServiceApi.md#getcategorycodemetadata) | **GET** /geoplaces/v1/metadata/category | Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
[**getPOIsByAddress**](PBLIAPIGeoPlacesServiceApi.md#getpoisbyaddress) | **GET** /geoplaces/v1/poi/byaddress | Point of Interests By Address.
[**getPOIsByLocation**](PBLIAPIGeoPlacesServiceApi.md#getpoisbylocation) | **GET** /geoplaces/v1/poi/bylocation | Point of Interests By Location.
[**getSICMetadata**](PBLIAPIGeoPlacesServiceApi.md#getsicmetadata) | **GET** /geoplaces/v1/metadata/sic | Returns SIC Codes with their Industry Titles and Category Codes mapping


# **getCategoryCodeMetadata**
```objc
-(NSNumber*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
        completionHandler: (void (^)(PBGeoPlaceMetadataResponse* output, NSError* error)) handler;
```

Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping

Accepts first partial digits or full category codes to filter the response

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* categoryCode = @"categoryCode_example"; // Specify starting digits or full category code to filter the response (optional)

PBLIAPIGeoPlacesServiceApi*apiInstance = [[PBLIAPIGeoPlacesServiceApi alloc] init];

// Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
[apiInstance getCategoryCodeMetadataWithCategoryCode:categoryCode
          completionHandler: ^(PBGeoPlaceMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPlacesServiceApi->getCategoryCodeMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryCode** | **NSString***| Specify starting digits or full category code to filter the response | [optional] 

### Return type

[**PBGeoPlaceMetadataResponse***](PBGeoPlaceMetadataResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByAddress**
```objc
-(NSNumber*) getPOIsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
        completionHandler: (void (^)(PBGeoplacesResponse* output, NSError* error)) handler;
```

Point of Interests By Address.

Accepts address as an input to retrieve nearby point of interests.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address
NSString* country = @"country_example"; // Country (optional)
NSString* name = @"name_example"; // Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
NSString* type = @"type_example"; // Matched against the content which defines the type of the poi.  (optional)
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  (optional)
NSString* sicCode = @"sicCode_example"; // Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* travelTime = @"travelTime_example"; // Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in 'travelTimeUnit'. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
NSString* travelDistance = @"travelDistance_example"; // Specifies the search boundary in terms of distance mentioned in 'travelDistanceUnit'. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
NSString* travelMode = @"travelMode_example"; // Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
NSString* sortBy = @"distance"; // Specifies the order in which POIs are retrieved. (optional) (default to distance)

PBLIAPIGeoPlacesServiceApi*apiInstance = [[PBLIAPIGeoPlacesServiceApi alloc] init];

// Point of Interests By Address.
[apiInstance getPOIsByAddressWithAddress:address
              country:country
              name:name
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              sortBy:sortBy
          completionHandler: ^(PBGeoplacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPlacesServiceApi->getPOIsByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 
 **country** | **NSString***| Country | [optional] 
 **name** | **NSString***| Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) | [optional] 
 **type** | **NSString***| Matched against the content which defines the type of the poi.  | [optional] 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  | [optional] 
 **sicCode** | **NSString***| Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **travelTime** | **NSString***| Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. | [optional] 
 **travelTimeUnit** | **NSString***| Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds | [optional] 
 **travelDistance** | **NSString***| Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. | [optional] 
 **travelDistanceUnit** | **NSString***| Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters | [optional] 
 **travelMode** | **NSString***| Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking | [optional] 
 **sortBy** | **NSString***| Specifies the order in which POIs are retrieved. | [optional] [default to distance]

### Return type

[**PBGeoplacesResponse***](PBGeoplacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByLocation**
```objc
-(NSNumber*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
        completionHandler: (void (^)(PBGeoplacesResponse* output, NSError* error)) handler;
```

Point of Interests By Location.

Accepts longitude and latitude as an input to retrieve nearby point of interests.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* name = @"name_example"; // Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
NSString* type = @"type_example"; // Matched against the content which defines the type of the poi.  (optional)
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  (optional)
NSString* sicCode = @"sicCode_example"; // Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* travelTime = @"travelTime_example"; // Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in 'travelTimeUnit'. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
NSString* travelDistance = @"travelDistance_example"; // Specifies the search boundary in terms of distance mentioned in 'travelDistanceUnit'. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
NSString* travelMode = @"travelMode_example"; // Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
NSString* sortBy = @"distance"; // Specifies the order in which POIs are retrieved. (optional) (default to distance)

PBLIAPIGeoPlacesServiceApi*apiInstance = [[PBLIAPIGeoPlacesServiceApi alloc] init];

// Point of Interests By Location.
[apiInstance getPOIsByLocationWithLongitude:longitude
              latitude:latitude
              name:name
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              sortBy:sortBy
          completionHandler: ^(PBGeoplacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPlacesServiceApi->getPOIsByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **name** | **NSString***| Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) | [optional] 
 **type** | **NSString***| Matched against the content which defines the type of the poi.  | [optional] 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  | [optional] 
 **sicCode** | **NSString***| Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **travelTime** | **NSString***| Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. | [optional] 
 **travelTimeUnit** | **NSString***| Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds | [optional] 
 **travelDistance** | **NSString***| Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. | [optional] 
 **travelDistanceUnit** | **NSString***| Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters | [optional] 
 **travelMode** | **NSString***| Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking | [optional] 
 **sortBy** | **NSString***| Specifies the order in which POIs are retrieved. | [optional] [default to distance]

### Return type

[**PBGeoplacesResponse***](PBGeoplacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSICMetadata**
```objc
-(NSNumber*) getSICMetadataWithSicCode: (NSString*) sicCode
        completionHandler: (void (^)(PBGeoPlaceMetadataResponse* output, NSError* error)) handler;
```

Returns SIC Codes with their Industry Titles and Category Codes mapping

Accepts first few partial digits or full SIC codes to filter the response

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sicCode = @"sicCode_example"; // Specify starting digits or full sic code to filter the response (optional)

PBLIAPIGeoPlacesServiceApi*apiInstance = [[PBLIAPIGeoPlacesServiceApi alloc] init];

// Returns SIC Codes with their Industry Titles and Category Codes mapping
[apiInstance getSICMetadataWithSicCode:sicCode
          completionHandler: ^(PBGeoPlaceMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoPlacesServiceApi->getSICMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sicCode** | **NSString***| Specify starting digits or full sic code to filter the response | [optional] 

### Return type

[**PBGeoPlaceMetadataResponse***](PBGeoPlaceMetadataResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

