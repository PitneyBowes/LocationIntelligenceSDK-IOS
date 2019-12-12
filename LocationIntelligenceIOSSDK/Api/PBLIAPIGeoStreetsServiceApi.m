#import "PBLIAPIGeoStreetsServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBIntersectionResponse.h"


@interface PBLIAPIGeoStreetsServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoStreetsServiceApi

NSString* kPBLIAPIGeoStreetsServiceApiErrorDomain = @"PBLIAPIGeoStreetsServiceApiErrorDomain";
NSInteger kPBLIAPIGeoStreetsServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoStreetsServiceApi *sharedAPI;
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
/// Gets NearestIntersection of major roads
/// Gets NearestIntersection of major roads
///  @param address Address 
///
///  @param roadClass Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
///
///  @param driveTime Returns Intersection in specified drive time (optional)
///
///  @param driveTimeUnit Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
///
///  @param searchRadius Search radius within which user wants to search, default is 50 miles (optional)
///
///  @param searchRadiusUnit Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
///
///  @param historicSpeed Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
///
///  @param maxCandidates max candidates to be returned default is 1 (optional)
///
///  @returns PBIntersectionResponse*
///
-(NSNumber*) getIntersectionByAddressWithAddress: (NSString*) address
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoStreetsServiceApiErrorDomain code:kPBLIAPIGeoStreetsServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geostreets/v1/intersection/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (roadClass != nil) {
        queryParams[@"roadClass"] = roadClass;
    }
    if (driveTime != nil) {
        queryParams[@"driveTime"] = driveTime;
    }
    if (driveTimeUnit != nil) {
        queryParams[@"driveTimeUnit"] = driveTimeUnit;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (historicSpeed != nil) {
        queryParams[@"historicSpeed"] = historicSpeed;
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
                              responseType: @"PBIntersectionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBIntersectionResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets NearestIntersection of major roads
/// Gets NearestIntersection of major roads
///  @param longitude Longitude of the location. 
///
///  @param latitude Latitude of the location. 
///
///  @param roadClass Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
///
///  @param driveTime Returns Intersection in specified drive time (optional)
///
///  @param driveTimeUnit Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
///
///  @param searchRadius Search radius within which user wants to search, default is 50 miles (optional)
///
///  @param searchRadiusUnit Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
///
///  @param historicSpeed Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
///
///  @param maxCandidates max candidates to be returned default is 1 (optional)
///
///  @returns PBIntersectionResponse*
///
-(NSNumber*) getIntersectionByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoStreetsServiceApiErrorDomain code:kPBLIAPIGeoStreetsServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoStreetsServiceApiErrorDomain code:kPBLIAPIGeoStreetsServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geostreets/v1/intersection/bylocation"];

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
    if (roadClass != nil) {
        queryParams[@"roadClass"] = roadClass;
    }
    if (driveTime != nil) {
        queryParams[@"driveTime"] = driveTime;
    }
    if (driveTimeUnit != nil) {
        queryParams[@"driveTimeUnit"] = driveTimeUnit;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (historicSpeed != nil) {
        queryParams[@"historicSpeed"] = historicSpeed;
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
                              responseType: @"PBIntersectionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBIntersectionResponse*)data, error);
                                }
                           }
          ];
}



@end
