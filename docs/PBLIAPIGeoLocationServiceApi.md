# PBLIAPIGeoLocationServiceApi

All URIs are relative to *https://api.pitneybowes.com/location-intelligence*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocationByFixedLine**](PBLIAPIGeoLocationServiceApi.md#getlocationbyfixedline) | **GET** /geolocation/v1/location/byfixedline | Location By Fixed Line Network.
[**getLocationByIPAddress**](PBLIAPIGeoLocationServiceApi.md#getlocationbyipaddress) | **GET** /geolocation/v1/location/byipaddress | Location By IP Address.
[**getLocationByWiFiAccessPoint**](PBLIAPIGeoLocationServiceApi.md#getlocationbywifiaccesspoint) | **GET** /geolocation/v1/location/byaccesspoint | Location by WiFi Access Point.


# **getLocationByFixedLine**
```objc
-(NSNumber*) getLocationByFixedLineWithDeviceId: (NSString*) deviceId
        completionHandler: (void (^)(PBGeoLocation* output, NSError* error)) handler;
```

Location By Fixed Line Network.

This service accepts a fixed line phone number and returns the location coordinates corresponding to that phone number.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* deviceId = @"deviceId_example"; // This is the fixed line phone number (US only). This is a mandatory parameter.

PBLIAPIGeoLocationServiceApi*apiInstance = [[PBLIAPIGeoLocationServiceApi alloc] init];

// Location By Fixed Line Network.
[apiInstance getLocationByFixedLineWithDeviceId:deviceId
          completionHandler: ^(PBGeoLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoLocationServiceApi->getLocationByFixedLine: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **NSString***| This is the fixed line phone number (US only). This is a mandatory parameter. | 

### Return type

[**PBGeoLocation***](PBGeoLocation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationByIPAddress**
```objc
-(NSNumber*) getLocationByIPAddressWithIpAddress: (NSString*) ipAddress
        completionHandler: (void (^)(PBGeoLocation* output, NSError* error)) handler;
```

Location By IP Address.

This service accepts an IP address and returns the location coordinates corresponding to that IP address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* ipAddress = @"ipAddress_example"; // This is the ip address of network connected device. It must be a standard IPv4 octet and a valid external address.

PBLIAPIGeoLocationServiceApi*apiInstance = [[PBLIAPIGeoLocationServiceApi alloc] init];

// Location By IP Address.
[apiInstance getLocationByIPAddressWithIpAddress:ipAddress
          completionHandler: ^(PBGeoLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoLocationServiceApi->getLocationByIPAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ipAddress** | **NSString***| This is the ip address of network connected device. It must be a standard IPv4 octet and a valid external address. | 

### Return type

[**PBGeoLocation***](PBGeoLocation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocationByWiFiAccessPoint**
```objc
-(NSNumber*) getLocationByWiFiAccessPointWithMac: (NSString*) mac
    ssid: (NSString*) ssid
    rsid: (NSString*) rsid
    speed: (NSString*) speed
    accessPoint: (NSString*) accessPoint
        completionHandler: (void (^)(PBGeoLocation* output, NSError* error)) handler;
```

Location by WiFi Access Point.

This service accepts a WiFi access point MAC address and returns the location coordinates corresponding to that access point. Only mac or accessPoint are mandatory parameters (one of them has to be provided), rest are optional.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* mac = @"mac_example"; // This should be the 48 bit mac address (or BSSID) of wireless access point. Accepted format is Six groups of two hexadecimal digits, separated by hyphens (-) or colons. (optional)
NSString* ssid = @"ssid_example"; // The service set identifier for wi-fi access point. It should be alphanumeric with maximum 32 characters. (optional)
NSString* rsid = @"rsid_example"; // This is the received signal strength indicator from particular wi-fi access point. It should be a number from -113 to 0 and the unit of this strength is dBm. (optional)
NSString* speed = @"speed_example"; // This is the connection speed for wi-fi. It should be a number from 0 to 6930 and the unit should be Mbps. (optional)
NSString* accessPoint = @"accessPoint_example"; // This is the JSON based list of wifi access points in the vicinity of device to be located. This parameter is helpful in case, multiple wifi points are visible and we want to make sure that the location of device is best calculated considering all the access points location. (optional)

PBLIAPIGeoLocationServiceApi*apiInstance = [[PBLIAPIGeoLocationServiceApi alloc] init];

// Location by WiFi Access Point.
[apiInstance getLocationByWiFiAccessPointWithMac:mac
              ssid:ssid
              rsid:rsid
              speed:speed
              accessPoint:accessPoint
          completionHandler: ^(PBGeoLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBLIAPIGeoLocationServiceApi->getLocationByWiFiAccessPoint: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mac** | **NSString***| This should be the 48 bit mac address (or BSSID) of wireless access point. Accepted format is Six groups of two hexadecimal digits, separated by hyphens (-) or colons. | [optional] 
 **ssid** | **NSString***| The service set identifier for wi-fi access point. It should be alphanumeric with maximum 32 characters. | [optional] 
 **rsid** | **NSString***| This is the received signal strength indicator from particular wi-fi access point. It should be a number from -113 to 0 and the unit of this strength is dBm. | [optional] 
 **speed** | **NSString***| This is the connection speed for wi-fi. It should be a number from 0 to 6930 and the unit should be Mbps. | [optional] 
 **accessPoint** | **NSString***| This is the JSON based list of wifi access points in the vicinity of device to be located. This parameter is helpful in case, multiple wifi points are visible and we want to make sure that the location of device is best calculated considering all the access points location. | [optional] 

### Return type

[**PBGeoLocation***](PBGeoLocation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
