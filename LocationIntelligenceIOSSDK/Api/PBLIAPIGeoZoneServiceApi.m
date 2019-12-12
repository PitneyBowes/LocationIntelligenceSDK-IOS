#import "PBLIAPIGeoZoneServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBBasicBoundaryAddress.h"
#import "PBBasicBoundary.h"
#import "PBPoiBoundary.h"
#import "PBTravelBoundaries.h"


@interface PBLIAPIGeoZoneServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoZoneServiceApi

NSString* kPBLIAPIGeoZoneServiceApiErrorDomain = @"PBLIAPIGeoZoneServiceApiErrorDomain";
NSInteger kPBLIAPIGeoZoneServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoZoneServiceApi *sharedAPI;
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
/// Gets Basic Boundary by Address
/// Gets Basic Boundary by Address
///  @param address Address around which Basic Boundary is requested 
///
///  @param distance This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number. 
///
///  @param country Three digit ISO country code (optional, default to USA)
///
///  @param distanceUnit Longitude around which Basic Boundary is requested (optional, default to feet)
///
///  @param resolution This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
///
///  @param responseSrs The spatial reference system to express the response in. By default, it would be epsg:4326 (optional, default to epsg:4326)
///
///  @returns PBBasicBoundaryAddress*
///
-(NSNumber*) getBasicBoundaryByAddressWithAddress: (NSString*) address
    distance: (NSString*) distance
    country: (NSString*) country
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
    completionHandler: (void (^)(PBBasicBoundaryAddress* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'distance' is set
    if (distance == nil) {
        NSParameterAssert(distance);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"distance"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/basicboundary/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (resolution != nil) {
        queryParams[@"resolution"] = resolution;
    }
    if (responseSrs != nil) {
        queryParams[@"responseSrs"] = responseSrs;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"PBBasicBoundaryAddress*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBBasicBoundaryAddress*)data, error);
                                }
                           }
          ];
}

///
/// Gets Basic Boundary by Location
/// Gets Basic Boundary by Location
///  @param latitude Latitude around which Basic Boundary is requested 
///
///  @param longitude Longitude around which Basic Boundary is requested 
///
///  @param distance This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number. 
///
///  @param distanceUnit Longitude around which Basic Boundary is requested (optional, default to feet)
///
///  @param resolution This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
///
///  @param responseSrs The spatial reference system to express the response in. By default, it would be epsg:4326 (optional, default to epsg:4326)
///
///  @param srsName The spatial reference system for input. By default, it would be epsg:4326 (optional, default to epsg:4326)
///
///  @returns PBBasicBoundary*
///
-(NSNumber*) getBasicBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    distance: (NSString*) distance
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
    srsName: (NSString*) srsName
    completionHandler: (void (^)(PBBasicBoundary* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'distance' is set
    if (distance == nil) {
        NSParameterAssert(distance);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"distance"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/basicboundary/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (resolution != nil) {
        queryParams[@"resolution"] = resolution;
    }
    if (responseSrs != nil) {
        queryParams[@"responseSrs"] = responseSrs;
    }
    if (srsName != nil) {
        queryParams[@"srsName"] = srsName;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"PBBasicBoundary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBBasicBoundary*)data, error);
                                }
                           }
          ];
}

///
/// Get Point of Interests Boundary by Address
/// Gets Point of Interests Boundary by Address
///  @param address Address around which POI Boundary is requested 
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. (optional)
///
///  @param sicCode Specify starting digits or full sic code to filter the response (optional)
///
///  @param naicsCode Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)
///
///  @returns PBPoiBoundary*
///
-(NSNumber*) getPOIBoundaryByAddressWithAddress: (NSString*) address
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
    completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/poiboundary/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (naicsCode != nil) {
        queryParams[@"naicsCode"] = naicsCode;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"PBPoiBoundary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPoiBoundary*)data, error);
                                }
                           }
          ];
}

///
/// Get Point of Interests Boundary by Location
/// Get Point of Interests Boundary by Location
///  @param latitude Latitude around which POI Boundary is requested 
///
///  @param longitude Longitude around which POI Boundary is requested 
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes (optional)
///
///  @param sicCode Specify starting digits or full sic code to filter the response (optional)
///
///  @param naicsCode Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)
///
///  @returns PBPoiBoundary*
///
-(NSNumber*) getPOIBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
    completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler {
    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/poiboundary/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (naicsCode != nil) {
        queryParams[@"naicsCode"] = naicsCode;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"PBPoiBoundary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPoiBoundary*)data, error);
                                }
                           }
          ];
}

///
/// Gets Point of Interests Boundary by PBKey
/// Gets Point of Interests Boundary by PBKey
///  @param pbKey PBKey for which POI Boundary is requested 
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. (optional)
///
///  @param sicCode Specify starting digits or full sic code to filter the response (optional)
///
///  @param naicsCode Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)
///
///  @returns PBPoiBoundary*
///
-(NSNumber*) getPOIBoundaryByPBKeyWithPbKey: (NSString*) pbKey
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
    completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler {
    // verify the required parameter 'pbKey' is set
    if (pbKey == nil) {
        NSParameterAssert(pbKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pbKey"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/poiboundary/bypbkey"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (pbKey != nil) {
        queryParams[@"pbKey"] = pbKey;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (naicsCode != nil) {
        queryParams[@"naicsCode"] = naicsCode;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

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
                              responseType: @"PBPoiBoundary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPoiBoundary*)data, error);
                                }
                           }
          ];
}

///
/// Gets travel Boundary by Distance
/// Returns the travel boundary based on travel distance.
///  @param costs Travel distance(s) 
///
///  @param point Starting point from where the travel boundary is calculated. Point in 'Lat,Long,coordsys' format (optional)
///
///  @param address Starting address from where the travel boundary is calculated. (optional)
///
///  @param costUnit Travel distance such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to m)
///
///  @param db Mode of commute. (optional, default to driving)
///
///  @param country Three digit ISO country code. (optional, default to USA)
///
///  @param maxOffroadDistance Maximum distance to allow travel off the road network. (optional)
///
///  @param maxOffroadDistanceUnit MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
///
///  @param destinationSrs Desired coordinate system of the travel boundary. (optional)
///
///  @param majorRoads Whether to include all roads in the calculation or just major roads. (optional, default to false)
///
///  @param returnHoles Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired distance. (optional, default to false)
///
///  @param returnIslands Whether to return islands, which are small areas outside the main boundary that can be reached within the desired distance. (optional, default to false)
///
///  @param simplificationFactor Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. (optional, default to 0.5)
///
///  @param bandingStyle Style of banding to be used in the result. (optional, default to Donut)
///
///  @param historicTrafficTimeBucket Whether routing calculation uses the historic traffic speeds. (optional, default to None)
///
///  @param defaultAmbientSpeed The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
///
///  @param ambientSpeedUnit The unit of measure to use to calculate the ambient speed. (optional, default to MPH)
///
///  @returns PBTravelBoundaries*
///
-(NSNumber*) getTravelBoundaryByDistanceWithCosts: (NSString*) costs
    point: (NSString*) point
    address: (NSString*) address
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
    completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler {
    // verify the required parameter 'costs' is set
    if (costs == nil) {
        NSParameterAssert(costs);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"costs"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/travelboundary/bydistance"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (point != nil) {
        queryParams[@"point"] = point;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (costs != nil) {
        queryParams[@"costs"] = costs;
    }
    if (costUnit != nil) {
        queryParams[@"costUnit"] = costUnit;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (maxOffroadDistance != nil) {
        queryParams[@"maxOffroadDistance"] = maxOffroadDistance;
    }
    if (maxOffroadDistanceUnit != nil) {
        queryParams[@"maxOffroadDistanceUnit"] = maxOffroadDistanceUnit;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (returnHoles != nil) {
        queryParams[@"returnHoles"] = returnHoles;
    }
    if (returnIslands != nil) {
        queryParams[@"returnIslands"] = returnIslands;
    }
    if (simplificationFactor != nil) {
        queryParams[@"simplificationFactor"] = simplificationFactor;
    }
    if (bandingStyle != nil) {
        queryParams[@"bandingStyle"] = bandingStyle;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (defaultAmbientSpeed != nil) {
        queryParams[@"defaultAmbientSpeed"] = defaultAmbientSpeed;
    }
    if (ambientSpeedUnit != nil) {
        queryParams[@"ambientSpeedUnit"] = ambientSpeedUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"PBTravelBoundaries*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTravelBoundaries*)data, error);
                                }
                           }
          ];
}

///
/// Gets travel Boundary by Time
/// Travel boundary based on travel time.
///  @param costs Travel time used to calculate the travel boundary. 
///
///  @param point Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format (optional)
///
///  @param address Starting address from where the travel boundary is calculated. (optional)
///
///  @param costUnit Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to min)
///
///  @param db Mode of commute. (optional, default to driving)
///
///  @param country 3 character ISO code or country name. (optional, default to USA)
///
///  @param maxOffroadDistance Maximum distance to allow travel off the road network. (optional)
///
///  @param maxOffroadDistanceUnit MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
///
///  @param destinationSrs Desired coordinate system of the travel boundary. (optional)
///
///  @param majorRoads Whether to include all roads in the calculation or just major roads. (optional, default to false)
///
///  @param returnHoles Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time. (optional, default to false)
///
///  @param returnIslands Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time. (optional, default to false)
///
///  @param simplificationFactor Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex. (optional, default to 0.5)
///
///  @param bandingStyle Style of banding to be used in the result. (optional, default to Donut)
///
///  @param historicTrafficTimeBucket Whether routing calculation uses the historic traffic speeds. (optional, default to None)
///
///  @param defaultAmbientSpeed The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
///
///  @param ambientSpeedUnit The unit of measure to use to calculate the ambient speed. (optional, default to MPH)
///
///  @returns PBTravelBoundaries*
///
-(NSNumber*) getTravelBoundaryByTimeWithCosts: (NSString*) costs
    point: (NSString*) point
    address: (NSString*) address
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
    completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler {
    // verify the required parameter 'costs' is set
    if (costs == nil) {
        NSParameterAssert(costs);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"costs"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoZoneServiceApiErrorDomain code:kPBLIAPIGeoZoneServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geozone/v1/travelboundary/bytime"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (point != nil) {
        queryParams[@"point"] = point;
    }
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (costs != nil) {
        queryParams[@"costs"] = costs;
    }
    if (costUnit != nil) {
        queryParams[@"costUnit"] = costUnit;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (maxOffroadDistance != nil) {
        queryParams[@"maxOffroadDistance"] = maxOffroadDistance;
    }
    if (maxOffroadDistanceUnit != nil) {
        queryParams[@"maxOffroadDistanceUnit"] = maxOffroadDistanceUnit;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (returnHoles != nil) {
        queryParams[@"returnHoles"] = returnHoles;
    }
    if (returnIslands != nil) {
        queryParams[@"returnIslands"] = returnIslands;
    }
    if (simplificationFactor != nil) {
        queryParams[@"simplificationFactor"] = simplificationFactor;
    }
    if (bandingStyle != nil) {
        queryParams[@"bandingStyle"] = bandingStyle;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (defaultAmbientSpeed != nil) {
        queryParams[@"defaultAmbientSpeed"] = defaultAmbientSpeed;
    }
    if (ambientSpeedUnit != nil) {
        queryParams[@"ambientSpeedUnit"] = ambientSpeedUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"PBTravelBoundaries*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTravelBoundaries*)data, error);
                                }
                           }
          ];
}



@end
