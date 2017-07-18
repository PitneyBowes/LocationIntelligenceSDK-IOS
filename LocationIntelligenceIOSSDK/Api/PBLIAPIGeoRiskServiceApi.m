#import "PBLIAPIGeoRiskServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBCrimeRiskResponse.h"
#import "PBWaterBodyResponse.h"
#import "PBEarthquakeHistory.h"
#import "PBEarthquakeRiskResponse.h"
#import "PBFireHistory.h"
#import "PBFireRiskResponse.h"
#import "PBFireRiskByAddressRequest.h"
#import "PBFireRiskResponseList.h"
#import "PBFireRiskByLocationRequest.h"
#import "PBFireStations.h"
#import "PBFloodRiskResponse.h"
#import "PBFloodRiskByAddressRequest.h"
#import "PBFloodRiskResponseList.h"
#import "PBFloodRiskByLocationRequest.h"


@interface PBLIAPIGeoRiskServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoRiskServiceApi

NSString* kPBLIAPIGeoRiskServiceApiErrorDomain = @"PBLIAPIGeoRiskServiceApiErrorDomain";
NSInteger kPBLIAPIGeoRiskServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoRiskServiceApi *sharedAPI;
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
/// Gets CrimeRiskResponse
/// Returns the crime data or crime indexes for a given address input.
///  @param address Free-form address text. 
///
///  @param type Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with 'all' as default.) (optional)
///
///  @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
///
///  @returns PBCrimeRiskResponse*
///
-(NSNumber*) getCrimeRiskByAddressWithAddress: (NSString*) address
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/crime/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (includeGeometry != nil) {
        queryParams[@"includeGeometry"] = includeGeometry;
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
                              responseType: @"PBCrimeRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBCrimeRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets CrimeRiskResponse
/// Returns the crime data or crime indexes for a given location.
///  @param longitude The longitude of the location 
///
///  @param latitude The latitude of the location 
///
///  @param type Refers to crime type. Valid values are following 11 crime types with 'all' as default (more than one can also be given as comma separated types) (optional)
///
///  @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
///
///  @returns PBCrimeRiskResponse*
///
-(NSNumber*) getCrimeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/crime/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (includeGeometry != nil) {
        queryParams[@"includeGeometry"] = includeGeometry;
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
                              responseType: @"PBCrimeRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBCrimeRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets WaterBodyResponse
/// Gets WaterBodyResponse
///  @param address The address of the location 
///
///  @param maxCandidates 1 (default value), Maximum value is 3 (optional)
///
///  @param waterBodyType all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
///
///  @param searchDistance 5000 miles (default value), minimum should be 0 (optional)
///
///  @param searchDistanceUnit miles (default value),feet, kilometers, meters (optional)
///
///  @returns PBWaterBodyResponse*
///
-(NSNumber*) getDistanceToCoastByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
    completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/shoreline/distancetocoast/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (waterBodyType != nil) {
        queryParams[@"waterBodyType"] = waterBodyType;
    }
    if (searchDistance != nil) {
        queryParams[@"searchDistance"] = searchDistance;
    }
    if (searchDistanceUnit != nil) {
        queryParams[@"searchDistanceUnit"] = searchDistanceUnit;
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
                              responseType: @"PBWaterBodyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBWaterBodyResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets WaterBodyResponse
/// Gets WaterBodyResponse
///  @param longitude The longitude of the location 
///
///  @param latitude The latitude of the location 
///
///  @param maxCandidates 1 (default value), Maximum value is 3 (optional)
///
///  @param waterBodyType all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
///
///  @param searchDistance This specifies the search distance (optional)
///
///  @param searchDistanceUnit miles (default value),feet, kilometers, meters (optional)
///
///  @returns PBWaterBodyResponse*
///
-(NSNumber*) getDistanceToCoastByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
    completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/shoreline/distancetocoast/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (waterBodyType != nil) {
        queryParams[@"waterBodyType"] = waterBodyType;
    }
    if (searchDistance != nil) {
        queryParams[@"searchDistance"] = searchDistance;
    }
    if (searchDistanceUnit != nil) {
        queryParams[@"searchDistanceUnit"] = searchDistanceUnit;
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
                              responseType: @"PBWaterBodyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBWaterBodyResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets EarthquakeHistory
/// Gets EarthquakeHistory
///  @param postCode 5 digit Postal code to search 
///
///  @param startDate Start time in milliseconds(UTC) (optional)
///
///  @param endDate End time in milliseconds(UTC) (optional)
///
///  @param minMagnitude Minimum richter scale magnitude (optional)
///
///  @param maxMagnitude Maximum Richter scale magnitude (optional)
///
///  @param maxCandidates Maximum response events (optional, default to 1)
///
///  @returns PBEarthquakeHistory*
///
-(NSNumber*) getEarthquakeHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    minMagnitude: (NSString*) minMagnitude
    maxMagnitude: (NSString*) maxMagnitude
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBEarthquakeHistory* output, NSError* error)) handler {
    // verify the required parameter 'postCode' is set
    if (postCode == nil) {
        NSParameterAssert(postCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"postCode"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/earthquakehistory"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (postCode != nil) {
        queryParams[@"postCode"] = postCode;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (minMagnitude != nil) {
        queryParams[@"minMagnitude"] = minMagnitude;
    }
    if (maxMagnitude != nil) {
        queryParams[@"maxMagnitude"] = maxMagnitude;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
                              responseType: @"PBEarthquakeHistory*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBEarthquakeHistory*)data, error);
                                }
                           }
          ];
}

///
/// Gets EarthquakeRiskResponse
/// Returns the count of earthquake events for various richter measurements and values for an input address.
///  @param address Free-form address text 
///
///  @param richterValue Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
///
///  @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
///
///  @returns PBEarthquakeRiskResponse*
///
-(NSNumber*) getEarthquakeRiskByAddressWithAddress: (NSString*) address
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/earthquake/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (richterValue != nil) {
        queryParams[@"richterValue"] = richterValue;
    }
    if (includeGeometry != nil) {
        queryParams[@"includeGeometry"] = includeGeometry;
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
                              responseType: @"PBEarthquakeRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBEarthquakeRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets EarthquakeRiskResponse
/// Gets EarthquakeRiskResponse
///  @param longitude The longitude of the location 
///
///  @param latitude The latitude of the location 
///
///  @param richterValue Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
///
///  @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
///
///  @returns PBEarthquakeRiskResponse*
///
-(NSNumber*) getEarthquakeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/earthquake/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (richterValue != nil) {
        queryParams[@"richterValue"] = richterValue;
    }
    if (includeGeometry != nil) {
        queryParams[@"includeGeometry"] = includeGeometry;
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
                              responseType: @"PBEarthquakeRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBEarthquakeRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets FireHistory
/// Gets FireHistory
///  @param postCode 5 digit Postal code to search 
///
///  @param startDate Start time in milliseconds(UTC) (optional)
///
///  @param endDate End time in milliseconds(UTC) (optional)
///
///  @param maxCandidates Maximum response events (optional, default to 1)
///
///  @returns PBFireHistory*
///
-(NSNumber*) getFireHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBFireHistory* output, NSError* error)) handler {
    // verify the required parameter 'postCode' is set
    if (postCode == nil) {
        NSParameterAssert(postCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"postCode"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/firehistory"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (postCode != nil) {
        queryParams[@"postCode"] = postCode;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
                              responseType: @"PBFireHistory*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireHistory*)data, error);
                                }
                           }
          ];
}

///
/// Gets FireRiskResponse
/// Returns the fire data based on address input.
///  @param address Free-form address text 
///
///  @returns PBFireRiskResponse*
///
-(NSNumber*) getFireRiskByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/fire/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
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
                              responseType: @"PBFireRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Batch method for getting fire risk by address
/// Batch method for getting fire risk by address
///  @param body  (optional)
///
///  @returns PBFireRiskResponseList*
///
-(NSNumber*) getFireRiskByAddressBatchWithBody: (PBFireRiskByAddressRequest*) body
    completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/fire/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBFireRiskResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireRiskResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Gets FireRiskResponse
/// Returns the fire data based on location input.
///  @param longitude Longitude of Location 
///
///  @param latitude Latitude of Location 
///
///  @returns PBFireRiskResponse*
///
-(NSNumber*) getFireRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/fire/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBFireRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Batch method for getting fire risk by location
/// Batch method for getting fire risk by location
///  @param body  (optional)
///
///  @returns PBFireRiskResponseList*
///
-(NSNumber*) getFireRiskByLocationBatchWithBody: (PBFireRiskByLocationRequest*) body
    completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/fire/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBFireRiskResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireRiskResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Gets FireStationResponse
/// Returns the nearest Firestations from an input address.
///  @param address The address to be searched. 
///
///  @param maxCandidates Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
///
///  @param travelTime Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
///
///  @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
///
///  @param travelDistance Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
///
///  @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
///
///  @param sortBy Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. (optional)
///
///  @returns PBFireStations*
///
-(NSNumber*) getFireStationByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/firestation/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (travelTime != nil) {
        queryParams[@"travelTime"] = travelTime;
    }
    if (travelTimeUnit != nil) {
        queryParams[@"travelTimeUnit"] = travelTimeUnit;
    }
    if (travelDistance != nil) {
        queryParams[@"travelDistance"] = travelDistance;
    }
    if (travelDistanceUnit != nil) {
        queryParams[@"travelDistanceUnit"] = travelDistanceUnit;
    }
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
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
                              responseType: @"PBFireStations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireStations*)data, error);
                                }
                           }
          ];
}

///
/// Gets FireStationResponse
/// Returns the nearest Firestations from an input location.
///  @param longitude Longitude of Location 
///
///  @param latitude Latitude of Location 
///
///  @param maxCandidates Specifies the maximum number of fire stations that this service retrieves. The default value is 3. The retrieved fire stations are distance ordered from the specified location. Maximum of 5 fire stations can be retrieved. (optional)
///
///  @param travelTime Maximum travel time from input location to fire station. Maximum allowed is 2 hours (optional)
///
///  @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
///
///  @param travelDistance Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
///
///  @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
///
///  @param sortBy Sorting of fire stations in result by travel time/distance (nearest first from input location). (optional)
///
///  @returns PBFireStations*
///
-(NSNumber*) getFireStationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/firestation/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (travelTime != nil) {
        queryParams[@"travelTime"] = travelTime;
    }
    if (travelTimeUnit != nil) {
        queryParams[@"travelTimeUnit"] = travelTimeUnit;
    }
    if (travelDistance != nil) {
        queryParams[@"travelDistance"] = travelDistance;
    }
    if (travelDistanceUnit != nil) {
        queryParams[@"travelDistanceUnit"] = travelDistanceUnit;
    }
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
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
                              responseType: @"PBFireStations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFireStations*)data, error);
                                }
                           }
          ];
}

///
/// Gets FloodRiskResponse
/// Returns the Flood Risk data for flood zones based on an address.
///  @param address Free-text Address 
///
///  @param includeZoneDesc Specifies primary zone description. Valid Values: 'Y' or 'N'. (optional)
///
///  @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
///
///  @returns PBFloodRiskResponse*
///
-(NSNumber*) getFloodRiskByAddressWithAddress: (NSString*) address
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/flood/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (includeZoneDesc != nil) {
        queryParams[@"includeZoneDesc"] = includeZoneDesc;
    }
    if (includeGeometry != nil) {
        queryParams[@"includeGeometry"] = includeGeometry;
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
                              responseType: @"PBFloodRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFloodRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Batch method for getting flood risk by address
/// Batch method for getting flood risk by address
///  @param body  (optional)
///
///  @returns PBFloodRiskResponseList*
///
-(NSNumber*) getFloodRiskByAddressBatchWithBody: (PBFloodRiskByAddressRequest*) body
    completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/flood/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBFloodRiskResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFloodRiskResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Gets FloodRiskResponse
/// Returns the Flood Risk data for Flood Zones and Base Flood Elevation, based on location.
///  @param longitude Longitude of Location 
///
///  @param latitude Latitude of Location 
///
///  @param includeZoneDesc Specifies primary zone description. Valid Values: 'Y' or 'N'. Default: 'Y' (optional)
///
///  @param includeGeometry Y or N (default is N) - if it is Y, then geometry will be part of response (optional)
///
///  @returns PBFloodRiskResponse*
///
-(NSNumber*) getFloodRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRiskServiceApiErrorDomain code:kPBLIAPIGeoRiskServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/flood/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (includeZoneDesc != nil) {
        queryParams[@"includeZoneDesc"] = includeZoneDesc;
    }
    if (includeGeometry != nil) {
        queryParams[@"includeGeometry"] = includeGeometry;
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
                              responseType: @"PBFloodRiskResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFloodRiskResponse*)data, error);
                                }
                           }
          ];
}

///
/// Batch method for getting flood risk by location
/// Batch method for getting flood risk by location
///  @param body  (optional)
///
///  @returns PBFloodRiskResponseList*
///
-(NSNumber*) getFloodRiskByLocationBatchWithBody: (PBFloodRiskByLocationRequest*) body
    completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georisk/v1/flood/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBFloodRiskResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBFloodRiskResponseList*)data, error);
                                }
                           }
          ];
}



@end
