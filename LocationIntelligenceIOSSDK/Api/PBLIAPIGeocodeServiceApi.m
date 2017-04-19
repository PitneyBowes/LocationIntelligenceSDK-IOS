#import "PBLIAPIGeocodeServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBReverseGeocodeRequest.h"
#import "PBGeocodeCapabilitiesResponse.h"
#import "PBConfiguredDictionaryResponse.h"


@interface PBLIAPIGeocodeServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeocodeServiceApi

NSString* kPBLIAPIGeocodeServiceApiErrorDomain = @"PBLIAPIGeocodeServiceApiErrorDomain";
NSInteger kPBLIAPIGeocodeServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeocodeServiceApi *sharedAPI;
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
/// Gets Geocode
/// Gets Geocode
///  @param datapackBundle value of datapackBundle 
///
///  @param country Country name or ISO code. (optional, default to USA)
///
///  @param placeName Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
///
///  @param mainAddress Single line input, treated as collection of field elements. (optional, default to 4750 Walnut St., Boulder CO, 80301)
///
///  @param lastLine The last line of the address. (optional)
///
///  @param areaName1 Specifies the largest geographic area, typically a state or province. (optional)
///
///  @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
///
///  @param areaName3 Specifies a city or town name. (optional)
///
///  @param areaName4 Specifies a city subdivision or locality. (optional)
///
///  @param postalCode The postal code in the appropriate format for the country. (optional)
///
///  @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional, default to Standard)
///
///  @param fallbackGeo Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional, default to true)
///
///  @param fallbackPostal Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional, default to true)
///
///  @param maxCands The maximum number of candidates to return. Must be an integer value. (optional, default to 1)
///
///  @param streetOffset Indicates the offset distance from the street segments to use in street-level geocoding. (optional, default to 7)
///
///  @param streetOffsetUnits Specifies the unit of measurement for the street offset. (optional, default to METERS)
///
///  @param cornerOffset Specifies the distance to offset the street end points in street-level matching. (optional, default to 7)
///
///  @param cornerOffsetUnits Specifies the unit of measurement for the corner offset. (optional, default to METERS)
///
///  @returns PBGeocodeServiceResponse*
///
-(NSNumber*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    placeName: (NSString*) placeName
    mainAddress: (NSString*) mainAddress
    lastLine: (NSString*) lastLine
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postalCode: (NSNumber*) postalCode
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSNumber*) fallbackGeo
    fallbackPostal: (NSNumber*) fallbackPostal
    maxCands: (NSNumber*) maxCands
    streetOffset: (NSNumber*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSNumber*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode-service/v1/transient/{datapackBundle}/geocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (placeName != nil) {
        queryParams[@"placeName"] = placeName;
    }
    if (mainAddress != nil) {
        queryParams[@"mainAddress"] = mainAddress;
    }
    if (lastLine != nil) {
        queryParams[@"lastLine"] = lastLine;
    }
    if (areaName1 != nil) {
        queryParams[@"areaName1"] = areaName1;
    }
    if (areaName2 != nil) {
        queryParams[@"areaName2"] = areaName2;
    }
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (areaName4 != nil) {
        queryParams[@"areaName4"] = areaName4;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (fallbackGeo != nil) {
        queryParams[@"fallbackGeo"] = fallbackGeo;
    }
    if (fallbackPostal != nil) {
        queryParams[@"fallbackPostal"] = fallbackPostal;
    }
    if (maxCands != nil) {
        queryParams[@"maxCands"] = maxCands;
    }
    if (streetOffset != nil) {
        queryParams[@"streetOffset"] = streetOffset;
    }
    if (streetOffsetUnits != nil) {
        queryParams[@"streetOffsetUnits"] = streetOffsetUnits;
    }
    if (cornerOffset != nil) {
        queryParams[@"cornerOffset"] = cornerOffset;
    }
    if (cornerOffsetUnits != nil) {
        queryParams[@"cornerOffsetUnits"] = cornerOffsetUnits;
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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets Geocode
/// Gets Geocode
///  @param datapackBundle value of datapackBundle 
///
///  @param body Geocode Request Object (optional)
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSNumber*) geocodeBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBGeocodeRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode-service/v1/transient/{datapackBundle}/geocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

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
                              responseType: @"PBGeocodeServiceResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponseList*)data, error);
                                }
                           }
          ];
}

///
/// reverse Geocode
/// reverse Geocode
///  @param datapackBundle value of datapackBundle 
///
///  @param body Reverse Geocode Request object (optional)
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSNumber*) geocodeServiceV1TransientDatapackBundleReverseGeocodePostWithDatapackBundle: (NSString*) datapackBundle
    body: (PBReverseGeocodeRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode-service/v1/transient/{datapackBundle}/reverseGeocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

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
                              responseType: @"PBGeocodeServiceResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Gets Capabilities
/// Gets Capabilities
///  @param datapackBundle value of datapackBundle 
///
///  @param operation Geocode or ReverseGeocode Operation. (optional, default to geocode)
///
///  @param country Country name or ISO code. (optional, default to USA)
///
///  @returns PBGeocodeCapabilitiesResponse*
///
-(NSNumber*) getCapabilitiesWithDatapackBundle: (NSString*) datapackBundle
    operation: (NSString*) operation
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeCapabilitiesResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode-service/v1/transient/{datapackBundle}/capabilities"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (operation != nil) {
        queryParams[@"operation"] = operation;
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
                              responseType: @"PBGeocodeCapabilitiesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeCapabilitiesResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets installed Dictionaries
/// Gets installed Dictionaries
///  @param datapackBundle value of datapackBundle 
///
///  @param country Three Letter ISO Country code (optional, default to USA)
///
///  @returns PBConfiguredDictionaryResponse*
///
-(NSNumber*) getDictionariesWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    completionHandler: (void (^)(PBConfiguredDictionaryResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode-service/v1/transient/{datapackBundle}/dictionaries"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBConfiguredDictionaryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBConfiguredDictionaryResponse*)data, error);
                                }
                           }
          ];
}

///
/// reverse Geocode
/// reverse Geocode
///  @param datapackBundle value of datapackBundle 
///
///  @param x Longitude of the location. 
///
///  @param y Latitude of the location. 
///
///  @param country Country name or ISO code. (optional)
///
///  @param coordSysName Coordinate system to convert geometry in format codespace:code. (optional, default to EPSG:4326)
///
///  @param distance Radius in which search is performed. (optional, default to 150)
///
///  @param distanceUnits Unit of measurement for the search distance. (optional, default to METERS)
///
///  @returns PBGeocodeServiceResponse*
///
-(NSNumber*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSNumber*) x
    y: (NSNumber*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSNumber*) distance
    distanceUnits: (NSString*) distanceUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'x' is set
    if (x == nil) {
        NSParameterAssert(x);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"x"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'y' is set
    if (y == nil) {
        NSParameterAssert(y);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"y"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeocodeServiceApiErrorDomain code:kPBLIAPIGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode-service/v1/transient/{datapackBundle}/reverseGeocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (x != nil) {
        queryParams[@"x"] = x;
    }
    if (y != nil) {
        queryParams[@"y"] = y;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (coordSysName != nil) {
        queryParams[@"coordSysName"] = coordSysName;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (distanceUnits != nil) {
        queryParams[@"distanceUnits"] = distanceUnits;
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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                           }
          ];
}



@end
