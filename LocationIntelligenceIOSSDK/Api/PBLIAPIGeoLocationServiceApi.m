#import "PBLIAPIGeoLocationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeoLocationDeviceSatus.h"
#import "PBGeoLocationFixedLine.h"
#import "PBGeoLocationIpAddr.h"
#import "PBGeoLocationAccessPoint.h"


@interface PBLIAPIGeoLocationServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoLocationServiceApi

NSString* kPBLIAPIGeoLocationServiceApiErrorDomain = @"PBLIAPIGeoLocationServiceApiErrorDomain";
NSInteger kPBLIAPIGeoLocationServiceApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        PBConfiguration *config = [PBConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[PBApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(PBApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static PBLIAPIGeoLocationServiceApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [PBApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Location By Device Status.
/// This service accepts a phone number as input and returns details distinguishing landline and wireless numbers and also checks if a wireless number can be located.
///  @param deviceId Unique identifier for the intended device. Supported identifiers are fixed line and mobile number. 
///
///  @param includeNetworkInfo_ Y or N (default is Y) – if it is N, then network/carrier details will not be added in the response. (optional)
///
///  @returns PBGeoLocationDeviceSatus*
///
-(NSNumber*) getDeviceStatusWithDeviceId: (NSString*) deviceId
    includeNetworkInfo_: (NSString*) includeNetworkInfo_
    completionHandler: (void (^)(PBGeoLocationDeviceSatus* output, NSError* error)) handler {
    // verify the required parameter 'deviceId' is set
    if (deviceId == nil) {
        NSParameterAssert(deviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoLocationServiceApiErrorDomain code:kPBLIAPIGeoLocationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geolocation/v1/devicestatus"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    if (includeNetworkInfo_ != nil) {
        queryParams[@"includeNetworkInfo "] = includeNetworkInfo_;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBGeoLocationDeviceSatus*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoLocationDeviceSatus*)data, error);
                                }
                           }
          ];
}

///
/// Location By Fixed Line Network.
/// This service accepts a fixed line phone number and returns the location coordinates corresponding to that phone number.
///  @param deviceId This is the fixed line phone number (US only). This is a mandatory parameter. 
///
///  @returns PBGeoLocationFixedLine*
///
-(NSNumber*) getLocationByFixedLineWithDeviceId: (NSString*) deviceId
    completionHandler: (void (^)(PBGeoLocationFixedLine* output, NSError* error)) handler {
    // verify the required parameter 'deviceId' is set
    if (deviceId == nil) {
        NSParameterAssert(deviceId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deviceId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoLocationServiceApiErrorDomain code:kPBLIAPIGeoLocationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geolocation/v1/location/byfixedline"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (deviceId != nil) {
        queryParams[@"deviceId"] = deviceId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBGeoLocationFixedLine*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoLocationFixedLine*)data, error);
                                }
                           }
          ];
}

///
/// Location By IP Address.
/// This service accepts an IP address and returns the location coordinates corresponding to that IP address.
///  @param ipAddress This is the ip address of network connected device. It must be a standard IPv4 octet and a valid external address. 
///
///  @returns PBGeoLocationIpAddr*
///
-(NSNumber*) getLocationByIPAddressWithIpAddress: (NSString*) ipAddress
    completionHandler: (void (^)(PBGeoLocationIpAddr* output, NSError* error)) handler {
    // verify the required parameter 'ipAddress' is set
    if (ipAddress == nil) {
        NSParameterAssert(ipAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ipAddress"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoLocationServiceApiErrorDomain code:kPBLIAPIGeoLocationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geolocation/v1/location/byipaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ipAddress != nil) {
        queryParams[@"ipAddress"] = ipAddress;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBGeoLocationIpAddr*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoLocationIpAddr*)data, error);
                                }
                           }
          ];
}

///
/// Location by WiFi Access Point.
/// This service accepts a WiFi access point MAC address and returns the location coordinates corresponding to that access point. Only mac or accessPoint are mandatory parameters (one of them has to be provided), rest are optional.
///  @param mac This should be the 48 bit mac address (or BSSID) of wireless access point. Accepted format is Six groups of two hexadecimal digits, separated by hyphens (-) or colons. (optional)
///
///  @param ssid The service set identifier for wi-fi access point. It should be alphanumeric with maximum 32 characters. (optional)
///
///  @param rsid This is the received signal strength indicator from particular wi-fi access point. It should be a number from -113 to 0 and the unit of this strength is dBm. (optional)
///
///  @param speed This is the connection speed for wi-fi. It should be a number from 0 to 6930 and the unit should be Mbps. (optional)
///
///  @param accessPoint This is the JSON based list of wifi access points in the vicinity of device to be located. This parameter is helpful in case, multiple wifi points are visible and we want to make sure that the location of device is best calculated considering all the access points location. (optional)
///
///  @returns PBGeoLocationAccessPoint*
///
-(NSNumber*) getLocationByWiFiAccessPointWithMac: (NSString*) mac
    ssid: (NSString*) ssid
    rsid: (NSString*) rsid
    speed: (NSString*) speed
    accessPoint: (NSString*) accessPoint
    completionHandler: (void (^)(PBGeoLocationAccessPoint* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geolocation/v1/location/byaccesspoint"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (mac != nil) {
        queryParams[@"mac"] = mac;
    }
    if (ssid != nil) {
        queryParams[@"ssid"] = ssid;
    }
    if (rsid != nil) {
        queryParams[@"rsid"] = rsid;
    }
    if (speed != nil) {
        queryParams[@"speed"] = speed;
    }
    if (accessPoint != nil) {
        queryParams[@"accessPoint"] = accessPoint;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBGeoLocationAccessPoint*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoLocationAccessPoint*)data, error);
                                }
                           }
          ];
}



@end
