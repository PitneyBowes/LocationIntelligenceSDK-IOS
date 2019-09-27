# PBLIAPIGeoEnrichServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategoryCodeMetadata**](PBLIAPIGeoEnrichServiceApi.md#getcategorycodemetadata) | **GET** /geoenrich/v1/metadata/category | Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
[**getPOIById**](PBLIAPIGeoEnrichServiceApi.md#getpoibyid) | **GET** /geoenrich/v1/poi/{id} | Point of Interest By Id.
[**getPOIsByAddress**](PBLIAPIGeoEnrichServiceApi.md#getpoisbyaddress) | **GET** /geoenrich/v1/poi/byaddress | Points of Interest By Address.
[**getPOIsByArea**](PBLIAPIGeoEnrichServiceApi.md#getpoisbyarea) | **GET** /geoenrich/v1/poi/byarea | Points of Interest By Area.
[**getPOIsByLocation**](PBLIAPIGeoEnrichServiceApi.md#getpoisbylocation) | **GET** /geoenrich/v1/poi/bylocation | Points of Interest By Location.
[**getPlaceByLocation**](PBLIAPIGeoEnrichServiceApi.md#getplacebylocation) | **GET** /geoenrich/v1/place/bylocation | Place By Location.
[**getSICMetadata**](PBLIAPIGeoEnrichServiceApi.md#getsicmetadata) | **GET** /geoenrich/v1/metadata/sic | Returns SIC Codes with their Industry Titles and Category Codes mapping
[**poisAutocomplete**](PBLIAPIGeoEnrichServiceApi.md#poisautocomplete) | **GET** /geoenrich/v1/poi/autocomplete | Points of Interest Autocomplete.


# **getCategoryCodeMetadata**
```objc
-(NSNumber*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    level: (NSString*) level
        completionHandler: (void (^)(PBGeoEnrichMetadataResponse* output, NSError* error)) handler;
```

Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping

Accepts first partial digits or full category codes to filter the response

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* categoryCode = @"categoryCode_example"; // Specify starting digits or full category code to filter the response (optional)
NSString* level = @"level_example"; // Allowed values are 1,2,3. If level=1, then only 4 digits category codes will be returned, level=2 means only 6 digits category codes   will be returned, level=3 means only 11 digits category codes will be returned. Multiple comma-separated values will also be accepted. So level='1,2' means return 4 digits and 6 digits category codes. (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
[apiInstance getCategoryCodeMetadataWithCategoryCode:categoryCode
              level:level
          completionHandler: ^(PBGeoEnrichMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getCategoryCodeMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryCode** | **NSString***| Specify starting digits or full category code to filter the response | [optional] 
 **level** | **NSString***| Allowed values are 1,2,3. If level&#x3D;1, then only 4 digits category codes will be returned, level&#x3D;2 means only 6 digits category codes   will be returned, level&#x3D;3 means only 11 digits category codes will be returned. Multiple comma-separated values will also be accepted. So level&#x3D;&#39;1,2&#39; means return 4 digits and 6 digits category codes. | [optional] 

### Return type

[**PBGeoEnrichMetadataResponse***](PBGeoEnrichMetadataResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIById**
```objc
-(NSNumber*) getPOIByIdWithId: (NSString*) _id
        completionHandler: (void (^)(PBPOIPlaces* output, NSError* error)) handler;
```

Point of Interest By Id.



### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // POI unique Identifier. Accepts only numbers.

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Point of Interest By Id.
[apiInstance getPOIByIdWithId:_id
          completionHandler: ^(PBPOIPlaces* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getPOIById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| POI unique Identifier. Accepts only numbers. | 

### Return type

[**PBPOIPlaces***](PBPOIPlaces.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

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
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
        completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;
```

Points of Interest By Address.

Accepts address as an input to retrieve nearby points of interest.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address
NSString* country = @"country_example"; // Country (optional)
NSString* name = @"name_example"; // Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
NSString* type = @"type_example"; // Matched against the content which defines the type of the poi.  (optional)
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
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
NSString* fuzzyOnName = @"fuzzyOnName_example"; // Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
NSString* page = @"page_example"; // Will support pagination, by default 1st page with maxCandidates results are returned. (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Points of Interest By Address.
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
              fuzzyOnName:fuzzyOnName
              page:page
          completionHandler: ^(PBGeoEnrichResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getPOIsByAddress: %@", error);
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
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  | [optional] 
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
 **fuzzyOnName** | **NSString***| Allowed values are Y/N. If N, the search on name will not allow fuzziness. | [optional] 
 **page** | **NSString***| Will support pagination, by default 1st page with maxCandidates results are returned. | [optional] 

### Return type

[**PBGeoEnrichResponse***](PBGeoEnrichResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByArea**
```objc
-(NSNumber*) getPOIsByAreaWithCountry: (NSString*) country
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
        completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;
```

Points of Interest By Area.

Accepts postcode or city as an input to retrieve nearby points of interest.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* country = @"country_example"; // Country
NSString* areaName3 = @"areaName3_example"; // Either areaName3 or postcode is required (optional)
NSString* postcode1 = @"postcode1_example"; // Either areaName3 or postcode is required (optional)
NSString* postcode2 = @"postcode2_example"; // postcode extension (optional)
NSString* name = @"name_example"; // Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
NSString* type = @"type_example"; // Matched against the content which defines the type of the poi.  (optional)
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
NSString* sicCode = @"sicCode_example"; // Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* fuzzyOnName = @"fuzzyOnName_example"; // Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
NSString* page = @"page_example"; // Will support pagination, by default 1st page with maxCandidates results are returned. (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Points of Interest By Area.
[apiInstance getPOIsByAreaWithCountry:country
              areaName3:areaName3
              postcode1:postcode1
              postcode2:postcode2
              name:name
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              fuzzyOnName:fuzzyOnName
              page:page
          completionHandler: ^(PBGeoEnrichResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getPOIsByArea: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **NSString***| Country | 
 **areaName3** | **NSString***| Either areaName3 or postcode is required | [optional] 
 **postcode1** | **NSString***| Either areaName3 or postcode is required | [optional] 
 **postcode2** | **NSString***| postcode extension | [optional] 
 **name** | **NSString***| Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) | [optional] 
 **type** | **NSString***| Matched against the content which defines the type of the poi.  | [optional] 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  | [optional] 
 **sicCode** | **NSString***| Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **fuzzyOnName** | **NSString***| Allowed values are Y/N. If N, the search on name will not allow fuzziness. | [optional] 
 **page** | **NSString***| Will support pagination, by default 1st page with maxCandidates results are returned. | [optional] 

### Return type

[**PBGeoEnrichResponse***](PBGeoEnrichResponse.md)

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
    searchText: (NSString*) searchText
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
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    searchOnNameOnly: (NSString*) searchOnNameOnly
        completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;
```

Points of Interest By Location.

Accepts longitude and latitude as an input to retrieve nearby points of interest.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* searchText = @"searchText_example"; // Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
NSString* type = @"type_example"; // Matched against the content which defines the type of the poi.  (optional)
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
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
NSString* fuzzyOnName = @"fuzzyOnName_example"; // Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
NSString* page = @"page_example"; // Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
NSString* searchOnNameOnly = @"searchOnNameOnly_example"; // search name description (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Points of Interest By Location.
[apiInstance getPOIsByLocationWithLongitude:longitude
              latitude:latitude
              searchText:searchText
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
              fuzzyOnName:fuzzyOnName
              page:page
              searchOnNameOnly:searchOnNameOnly
          completionHandler: ^(PBGeoEnrichResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getPOIsByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **searchText** | **NSString***| Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) | [optional] 
 **type** | **NSString***| Matched against the content which defines the type of the poi.  | [optional] 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  | [optional] 
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
 **fuzzyOnName** | **NSString***| Allowed values are Y/N. If N, the search on name will not allow fuzziness. | [optional] 
 **page** | **NSString***| Will support pagination, by default 1st page with maxCandidates results are returned. | [optional] 
 **searchOnNameOnly** | **NSString***| search name description | [optional] 

### Return type

[**PBGeoEnrichResponse***](PBGeoEnrichResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlaceByLocation**
```objc
-(NSNumber*) getPlaceByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    levelHint: (NSString*) levelHint
        completionHandler: (void (^)(PBPlaceByLocations* output, NSError* error)) handler;
```

Place By Location.

Identifies and retrieves the nearest neighborhood around a specific location. This GeoEnrich service accepts latitude & longitude as input and returns a place name.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* levelHint = @"levelHint_example"; // Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Place By Location.
[apiInstance getPlaceByLocationWithLongitude:longitude
              latitude:latitude
              levelHint:levelHint
          completionHandler: ^(PBPlaceByLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getPlaceByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **levelHint** | **NSString***| Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 | [optional] 

### Return type

[**PBPlaceByLocations***](PBPlaceByLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSICMetadata**
```objc
-(NSNumber*) getSICMetadataWithSicCode: (NSString*) sicCode
    level: (NSString*) level
        completionHandler: (void (^)(PBGeoEnrichMetadataResponse* output, NSError* error)) handler;
```

Returns SIC Codes with their Industry Titles and Category Codes mapping

Accepts first few partial digits or full SIC codes to filter the response

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sicCode = @"sicCode_example"; // Specify starting digits or full sic code to filter the response (optional)
NSString* level = @"level_example"; // Allowed values are 1,2. If level=1, then only 4 digits sic codes will be returned, level=2 means only 8 digits sic codes will be returned. Multiple comma-separated values will also be accepted. So level='1,2' means return both 4 digits and 8 digits sic codes. (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Returns SIC Codes with their Industry Titles and Category Codes mapping
[apiInstance getSICMetadataWithSicCode:sicCode
              level:level
          completionHandler: ^(PBGeoEnrichMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->getSICMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sicCode** | **NSString***| Specify starting digits or full sic code to filter the response | [optional] 
 **level** | **NSString***| Allowed values are 1,2. If level&#x3D;1, then only 4 digits sic codes will be returned, level&#x3D;2 means only 8 digits sic codes will be returned. Multiple comma-separated values will also be accepted. So level&#x3D;&#39;1,2&#39; means return both 4 digits and 8 digits sic codes. | [optional] 

### Return type

[**PBGeoEnrichMetadataResponse***](PBGeoEnrichMetadataResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poisAutocomplete**
```objc
-(NSNumber*) poisAutocompleteWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    ipAddress: (NSString*) ipAddress
    autoDetectLocation: (NSString*) autoDetectLocation
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    sortBy: (NSString*) sortBy
    searchOnNameOnly: (NSString*) searchOnNameOnly
        completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler;
```

Points of Interest Autocomplete.

POIs-Autocomplete will return POIs predictions based on the full or partial words specified in the search.The search can then be narrowed based on Location, IP Address or Country along with other supporting filters.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location. (optional)
NSString* latitude = @"latitude_example"; // Latitude of the location. (optional)
NSString* searchText = @"searchText_example"; // Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* travelTime = @"travelTime_example"; // Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in 'travelTimeUnit'. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
NSString* travelDistance = @"travelDistance_example"; // Specifies the search boundary in terms of distance mentioned in 'travelDistanceUnit'. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
NSString* travelMode = @"travelMode_example"; // Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
NSString* country = @"country_example"; // Country (optional)
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies the name of the city or town.  (optional)
NSString* postcode1 = @"postcode1_example"; // Postal Code of the input to be searched (optional)
NSString* postcode2 = @"postcode2_example"; // Postcode2 (optional)
NSString* ipAddress = @"ipAddress_example"; // IP address of network connected device in standard IPv4 octet and a valid external address. (optional)
NSString* autoDetectLocation = @"autoDetectLocation_example"; // Specifies whether to auto-detect location from IP address. If 'True' is set, the location is detected from the specified ip address. If 'False' is set. the search will happen according to country or location. (optional)
NSString* type = @"type_example"; // Matched against the content which defines the type of the poi.  (optional)
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
NSString* sicCode = @"sicCode_example"; // Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* sortBy = @"distance"; // Specifies the order in which POIs are retrieved. (optional) (default to distance)
NSString* searchOnNameOnly = @"searchOnNameOnly_example"; // specifies search on name (optional)

PBLIAPIGeoEnrichServiceApi*apiInstance = [[PBLIAPIGeoEnrichServiceApi alloc] init];

// Points of Interest Autocomplete.
[apiInstance poisAutocompleteWithLongitude:longitude
              latitude:latitude
              searchText:searchText
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              country:country
              areaName1:areaName1
              areaName3:areaName3
              postcode1:postcode1
              postcode2:postcode2
              ipAddress:ipAddress
              autoDetectLocation:autoDetectLocation
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              sortBy:sortBy
              searchOnNameOnly:searchOnNameOnly
          completionHandler: ^(PBGeoEnrichResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoEnrichServiceApi->poisAutocomplete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | [optional] 
 **latitude** | **NSString***| Latitude of the location. | [optional] 
 **searchText** | **NSString***| Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **travelTime** | **NSString***| Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in &#39;travelTimeUnit&#39;. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. | [optional] 
 **travelTimeUnit** | **NSString***| Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds | [optional] 
 **travelDistance** | **NSString***| Specifies the search boundary in terms of distance mentioned in &#39;travelDistanceUnit&#39;. The results are retrieved from the polygon formed based on the travel distance specified. | [optional] 
 **travelDistanceUnit** | **NSString***| Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters | [optional] 
 **travelMode** | **NSString***| Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking | [optional] 
 **country** | **NSString***| Country | [optional] 
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province. | [optional] 
 **areaName3** | **NSString***| Specifies the name of the city or town.  | [optional] 
 **postcode1** | **NSString***| Postal Code of the input to be searched | [optional] 
 **postcode2** | **NSString***| Postcode2 | [optional] 
 **ipAddress** | **NSString***| IP address of network connected device in standard IPv4 octet and a valid external address. | [optional] 
 **autoDetectLocation** | **NSString***| Specifies whether to auto-detect location from IP address. If &#39;True&#39; is set, the location is detected from the specified ip address. If &#39;False&#39; is set. the search will happen according to country or location. | [optional] 
 **type** | **NSString***| Matched against the content which defines the type of the poi.  | [optional] 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  | [optional] 
 **sicCode** | **NSString***| Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **sortBy** | **NSString***| Specifies the order in which POIs are retrieved. | [optional] [default to distance]
 **searchOnNameOnly** | **NSString***| specifies search on name | [optional] 

### Return type

[**PBGeoEnrichResponse***](PBGeoEnrichResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

