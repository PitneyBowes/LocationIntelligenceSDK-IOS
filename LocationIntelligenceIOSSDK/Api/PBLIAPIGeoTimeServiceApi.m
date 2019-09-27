#import "PBLIAPIGeoTimeServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBTimezoneResponse.h"
#import "PBTimezoneAddressRequest.h"
#import "PBTimezoneLocationRequest.h"
#import "PBTimezoneLocationResponse.h"
#import "PBTimezone.h"
#import "PBTimezoneLocation.h"


@interface PBLIAPIGeoTimeServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoTimeServiceApi

NSString* kPBLIAPIGeoTimeServiceApiErrorDomain = @"PBLIAPIGeoTimeServiceApiErrorDomain";
NSInteger kPBLIAPIGeoTimeServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoTimeServiceApi *sharedAPI;
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
/// Timezone Batch by Address
/// Identifies and retrieves the local time of any location in the world for a given address and time. The input and retrieved time format is in milliseconds. 
///  @param body  (optional)
///
///  @returns PBTimezoneResponse*
///
-(NSNumber*) getBatchTimezoneByAddressWithBody: (PBTimezoneAddressRequest*) body
    completionHandler: (void (^)(PBTimezoneResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotime/v1/timezone/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
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
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBTimezoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTimezoneResponse*)data, error);
                                }
                           }
          ];
}

///
/// Timezone Batch by Location
/// Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds. 
///  @param body  (optional)
///
///  @returns PBTimezoneLocationResponse*
///
-(NSNumber*) getBatchTimezoneByLocationWithBody: (PBTimezoneLocationRequest*) body
    completionHandler: (void (^)(PBTimezoneLocationResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotime/v1/timezone/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
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
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBTimezoneLocationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTimezoneLocationResponse*)data, error);
                                }
                           }
          ];
}

///
/// Timezone By Address.
/// Identifies and retrieves the local time of any location in the world for a given address and time. The input and retrieved time format is in milliseconds.
///  @param timestamp Timestamp in miliseconds. 
///
///  @param address The address to be searched. 
///
///  @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional, default to Relaxed)
///
///  @param country Country ISO code. (optional, default to USA)
///
///  @returns PBTimezone*
///
-(NSNumber*) getTimezoneByAddressWithTimestamp: (NSString*) timestamp
    address: (NSString*) address
    matchMode: (NSString*) matchMode
    country: (NSString*) country
    completionHandler: (void (^)(PBTimezone* output, NSError* error)) handler {
    // verify the required parameter 'timestamp' is set
    if (timestamp == nil) {
        NSParameterAssert(timestamp);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timestamp"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTimeServiceApiErrorDomain code:kPBLIAPIGeoTimeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTimeServiceApiErrorDomain code:kPBLIAPIGeoTimeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotime/v1/timezone/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (timestamp != nil) {
        queryParams[@"timestamp"] = timestamp;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
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
                              responseType: @"PBTimezone*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTimezone*)data, error);
                                }
                           }
          ];
}

///
/// Timezone By Location.
/// Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds.
///  @param timestamp Timestamp in miliseconds. 
///
///  @param longitude Longitude of the location. 
///
///  @param latitude Latitude of the location. 
///
///  @returns PBTimezoneLocation*
///
-(NSNumber*) getTimezoneByLocationWithTimestamp: (NSString*) timestamp
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBTimezoneLocation* output, NSError* error)) handler {
    // verify the required parameter 'timestamp' is set
    if (timestamp == nil) {
        NSParameterAssert(timestamp);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"timestamp"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTimeServiceApiErrorDomain code:kPBLIAPIGeoTimeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTimeServiceApiErrorDomain code:kPBLIAPIGeoTimeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTimeServiceApiErrorDomain code:kPBLIAPIGeoTimeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotime/v1/timezone/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (timestamp != nil) {
        queryParams[@"timestamp"] = timestamp;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
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
                              responseType: @"PBTimezoneLocation*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTimezoneLocation*)data, error);
                                }
                           }
          ];
}



@end
