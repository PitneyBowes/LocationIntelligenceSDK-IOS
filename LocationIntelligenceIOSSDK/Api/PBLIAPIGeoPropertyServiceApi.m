#import "PBLIAPIGeoPropertyServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeoPropertyResponse.h"
#import "PBGeoPropertyResponses.h"
#import "PBGeoPropertyAddressRequest.h"
#import "PBGeoPropertyPBKeyResponse.h"
#import "PBGeoPropertyPBKeyResponses.h"
#import "PBGeoPropertyPBKeyRequest.h"
#import "PBSchoolsNearByResponse.h"


@interface PBLIAPIGeoPropertyServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoPropertyServiceApi

NSString* kPBLIAPIGeoPropertyServiceApiErrorDomain = @"PBLIAPIGeoPropertyServiceApiErrorDomain";
NSInteger kPBLIAPIGeoPropertyServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoPropertyServiceApi *sharedAPI;
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
/// Gets GeoPropertyResponse
/// Gets GeoPropertyResponse
///  @param address free form address text 
///
///  @returns PBGeoPropertyResponse*
///
-(NSNumber*) getGeoPropertyByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBGeoPropertyResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPropertyServiceApiErrorDomain code:kPBLIAPIGeoPropertyServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoproperty/v1/all/attributes/byaddress"];

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
                              responseType: @"PBGeoPropertyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoPropertyResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets GeoPropertyResponses
/// Gets GeoPropertyResponses
///  @param body  (optional)
///
///  @returns PBGeoPropertyResponses*
///
-(NSNumber*) getGeoPropertyByAddressBatchWithBody: (PBGeoPropertyAddressRequest*) body
    completionHandler: (void (^)(PBGeoPropertyResponses* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoproperty/v1/all/attributes/byaddress"];

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
                              responseType: @"PBGeoPropertyResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoPropertyResponses*)data, error);
                                }
                           }
          ];
}

///
/// Gets GeoPropertyResponse
/// Gets GeoPropertyResponse
///  @param pbKey free form text 
///
///  @returns PBGeoPropertyPBKeyResponse*
///
-(NSNumber*) getGeoPropertyByPBKeyWithPbKey: (NSString*) pbKey
    completionHandler: (void (^)(PBGeoPropertyPBKeyResponse* output, NSError* error)) handler {
    // verify the required parameter 'pbKey' is set
    if (pbKey == nil) {
        NSParameterAssert(pbKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pbKey"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPropertyServiceApiErrorDomain code:kPBLIAPIGeoPropertyServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoproperty/v1/all/attributes/bypbkey"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (pbKey != nil) {
        queryParams[@"pbKey"] = pbKey;
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
                              responseType: @"PBGeoPropertyPBKeyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoPropertyPBKeyResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets GeoPropertyResponses
/// Gets GeoPropertyResponses
///  @param body  (optional)
///
///  @returns PBGeoPropertyPBKeyResponses*
///
-(NSNumber*) getGeoPropertyByPBKeyBatchWithBody: (PBGeoPropertyPBKeyRequest*) body
    completionHandler: (void (^)(PBGeoPropertyPBKeyResponses* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoproperty/v1/all/attributes/bypbkey"];

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
                              responseType: @"PBGeoPropertyPBKeyResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoPropertyPBKeyResponses*)data, error);
                                }
                           }
          ];
}

///
/// Search Nearby Schools by Address
/// Search Nearby Schools by Address
///  @param address free form address text 
///
///  @param edLevel Single digit code for education level applicable values are P -> primary, M -> Middle, H -> High, O -> Mixed Grades for public school type andE -> Elementary , S -> Secondary , O -> Others mixed grades for private schools  (optional)
///
///  @param schoolType Single digit code for schoolTypes applicable values are PRI and PUB (optional)
///
///  @param schoolSubType Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
///
///  @param gender Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) (optional)
///
///  @param assignedSchoolsOnly Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
///
///  @param districtSchoolsOnly Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
///
///  @param searchRadius Search Radius within which schools are searched (optional)
///
///  @param searchRadiusUnit Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
///
///  @param travelTime Travel Time based on ‘travelMode’ within which schools are searched. (optional)
///
///  @param travelTimeUnit Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
///
///  @param travelDistance Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
///
///  @param travelDistanceUnit Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
///
///  @param travelMode Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
///
///  @param maxCandidates Max result to search  (optional, default to 10)
///
///  @returns PBSchoolsNearByResponse*
///
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
    completionHandler: (void (^)(PBSchoolsNearByResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPropertyServiceApiErrorDomain code:kPBLIAPIGeoPropertyServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoproperty/v1/school/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (edLevel != nil) {
        queryParams[@"edLevel"] = edLevel;
    }
    if (schoolType != nil) {
        queryParams[@"schoolType"] = schoolType;
    }
    if (schoolSubType != nil) {
        queryParams[@"schoolSubType"] = schoolSubType;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (assignedSchoolsOnly != nil) {
        queryParams[@"assignedSchoolsOnly"] = assignedSchoolsOnly;
    }
    if (districtSchoolsOnly != nil) {
        queryParams[@"districtSchoolsOnly"] = districtSchoolsOnly;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
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
    if (travelMode != nil) {
        queryParams[@"travelMode"] = travelMode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
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
                              responseType: @"PBSchoolsNearByResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBSchoolsNearByResponse*)data, error);
                                }
                           }
          ];
}

///
/// Search Nearby Schools by PBKey
/// Search Nearby Schools by PBKey
///  @param pbKey free form text 
///
///  @param edLevel Single digit code for education level applicable values are P -> primary, M -> Middle, H -> High, O -> Mixed Grades for public school type andE -> Elementary , S -> Secondary , O -> Others mixed grades for private schools  (optional)
///
///  @param schoolType Single digit code for schoolTypes applicable values are PRI and PUB (optional)
///
///  @param schoolSubType Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
///
///  @param gender Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) (optional)
///
///  @param assignedSchoolsOnly Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
///
///  @param districtSchoolsOnly Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
///
///  @param searchRadius Search Radius within which schools are searched (optional)
///
///  @param searchRadiusUnit Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
///
///  @param travelTime Travel Time based on ‘travelMode’ within which schools are searched. (optional)
///
///  @param travelTimeUnit Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
///
///  @param travelDistance Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
///
///  @param travelDistanceUnit Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
///
///  @param travelMode Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
///
///  @param maxCandidates Max result to search  (optional, default to 10)
///
///  @returns PBSchoolsNearByResponse*
///
-(NSNumber*) getSchoolsNearByUsingPBKeyWithPbKey: (NSString*) pbKey
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
    completionHandler: (void (^)(PBSchoolsNearByResponse* output, NSError* error)) handler {
    // verify the required parameter 'pbKey' is set
    if (pbKey == nil) {
        NSParameterAssert(pbKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pbKey"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPropertyServiceApiErrorDomain code:kPBLIAPIGeoPropertyServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoproperty/v1/school/bypbkey"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (pbKey != nil) {
        queryParams[@"pbKey"] = pbKey;
    }
    if (edLevel != nil) {
        queryParams[@"edLevel"] = edLevel;
    }
    if (schoolType != nil) {
        queryParams[@"schoolType"] = schoolType;
    }
    if (schoolSubType != nil) {
        queryParams[@"schoolSubType"] = schoolSubType;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (assignedSchoolsOnly != nil) {
        queryParams[@"assignedSchoolsOnly"] = assignedSchoolsOnly;
    }
    if (districtSchoolsOnly != nil) {
        queryParams[@"districtSchoolsOnly"] = districtSchoolsOnly;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
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
    if (travelMode != nil) {
        queryParams[@"travelMode"] = travelMode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
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
                              responseType: @"PBSchoolsNearByResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBSchoolsNearByResponse*)data, error);
                                }
                           }
          ];
}



@end
