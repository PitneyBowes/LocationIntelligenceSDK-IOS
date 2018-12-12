# PBLIAPIGeoIdentityServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIdentityByAddress**](PBLIAPIGeoIdentityServiceApi.md#getidentitybyaddress) | **GET** /geoidentity/v1/identity/byaddress | Gets GeoIdentityResponse
[**getIdentityByEmail**](PBLIAPIGeoIdentityServiceApi.md#getidentitybyemail) | **GET** /geoidentity/v1/identity/byemail | Gets Identity
[**getIdentityByPBKey**](PBLIAPIGeoIdentityServiceApi.md#getidentitybypbkey) | **GET** /geoidentity/v1/identity/bypbkey | Gets GeoIdentityResponse


# **getIdentityByAddress**
```objc
-(NSNumber*) getIdentityByAddressWithAddress: (NSString*) address
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    includeNeighborhoodDetails: (NSString*) includeNeighborhoodDetails
        completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler;
```

Gets GeoIdentityResponse

Gets GeoIdentityResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* givenName = @"givenName_example"; // This filters all the associated identities of address by given Name (optional)
NSString* familyName = @"familyName_example"; // This filters all the associated identities of address by family Name (optional)
NSString* confidence = @"confidence_example"; // To adjust quality threshold of data returned. Default is HIGH (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Number of identities returned in response (optional)
NSString* includeNeighborhoodDetails = @"includeNeighborhoodDetails_example"; // Whether to include neighborhood details in the response or not. Default is Y (optional)

PBLIAPIGeoIdentityServiceApi*apiInstance = [[PBLIAPIGeoIdentityServiceApi alloc] init];

// Gets GeoIdentityResponse
[apiInstance getIdentityByAddressWithAddress:address
              givenName:givenName
              familyName:familyName
              confidence:confidence
              maxCandidates:maxCandidates
              includeNeighborhoodDetails:includeNeighborhoodDetails
          completionHandler: ^(PBGeoIdentityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoIdentityServiceApi->getIdentityByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **givenName** | **NSString***| This filters all the associated identities of address by given Name | [optional] 
 **familyName** | **NSString***| This filters all the associated identities of address by family Name | [optional] 
 **confidence** | **NSString***| To adjust quality threshold of data returned. Default is HIGH | [optional] 
 **maxCandidates** | **NSString***| Number of identities returned in response | [optional] 
 **includeNeighborhoodDetails** | **NSString***| Whether to include neighborhood details in the response or not. Default is Y | [optional] 

### Return type

[**PBGeoIdentityResponse***](PBGeoIdentityResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityByEmail**
```objc
-(NSNumber*) getIdentityByEmailWithEmail: (NSString*) email
    confidence: (NSString*) confidence
        completionHandler: (void (^)(PBIdentity* output, NSError* error)) handler;
```

Gets Identity

Gets Identity

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* email = @"email_example"; // This specifies the email address
NSString* confidence = @"confidence_example"; // To adjust quality threshold of data returned. Default is HIGH (optional)

PBLIAPIGeoIdentityServiceApi*apiInstance = [[PBLIAPIGeoIdentityServiceApi alloc] init];

// Gets Identity
[apiInstance getIdentityByEmailWithEmail:email
              confidence:confidence
          completionHandler: ^(PBIdentity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoIdentityServiceApi->getIdentityByEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| This specifies the email address | 
 **confidence** | **NSString***| To adjust quality threshold of data returned. Default is HIGH | [optional] 

### Return type

[**PBIdentity***](PBIdentity.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityByPBKey**
```objc
-(NSNumber*) getIdentityByPBKeyWithPbKey: (NSString*) pbKey
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    includeNeighborhoodDetails: (NSString*) includeNeighborhoodDetails
        completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler;
```

Gets GeoIdentityResponse

Gets GeoIdentityResponse

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* pbKey = @"pbKey_example"; // PB specific unique key for each address
NSString* givenName = @"givenName_example"; // This filters all the associated identities of address by given Name (optional)
NSString* familyName = @"familyName_example"; // This filters all the associated identities of address by family Name (optional)
NSString* confidence = @"confidence_example"; // To adjust quality threshold of data returned. Default is HIGH (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Number of identities returned in response (optional)
NSString* includeNeighborhoodDetails = @"includeNeighborhoodDetails_example"; // Whether to include neighborhood details in the response or not. Default is Y (optional)

PBLIAPIGeoIdentityServiceApi*apiInstance = [[PBLIAPIGeoIdentityServiceApi alloc] init];

// Gets GeoIdentityResponse
[apiInstance getIdentityByPBKeyWithPbKey:pbKey
              givenName:givenName
              familyName:familyName
              confidence:confidence
              maxCandidates:maxCandidates
              includeNeighborhoodDetails:includeNeighborhoodDetails
          completionHandler: ^(PBGeoIdentityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoIdentityServiceApi->getIdentityByPBKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pbKey** | **NSString***| PB specific unique key for each address | 
 **givenName** | **NSString***| This filters all the associated identities of address by given Name | [optional] 
 **familyName** | **NSString***| This filters all the associated identities of address by family Name | [optional] 
 **confidence** | **NSString***| To adjust quality threshold of data returned. Default is HIGH | [optional] 
 **maxCandidates** | **NSString***| Number of identities returned in response | [optional] 
 **includeNeighborhoodDetails** | **NSString***| Whether to include neighborhood details in the response or not. Default is Y | [optional] 

### Return type

[**PBGeoIdentityResponse***](PBGeoIdentityResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

