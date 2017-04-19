#import "PBLIAPIGeoZoneServiceApi.h"
#import "PBQueryParamCollection.h"
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
