#import "PBLIAPIGeoRouteServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeoRouteResponse.h"
#import "PBTravelCostMatrixResponse.h"


@interface PBLIAPIGeoRouteServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoRouteServiceApi

NSString* kPBLIAPIGeoRouteServiceApiErrorDomain = @"PBLIAPIGeoRouteServiceApiErrorDomain";
NSInteger kPBLIAPIGeoRouteServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoRouteServiceApi *sharedAPI;
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
/// Gets Route by Address
/// Routing Directions for Single and Multiple Origin & Destination Inputs. Accepts addresses as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.
///  @param startAddress Starting address of the route. 
///
///  @param endAddress Ending address of the route. 
///
///  @param db Mode of commute. (optional, default to driving)
///
///  @param country Three digit ISO country code (optional, default to USA)
///
///  @param intermediateAddresses List of intermediate addresses of the route. (optional)
///
///  @param oip Specifies whether waypoints need to be optimized. (optional, default to false)
///
///  @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
///
///  @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional, default to time)
///
///  @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional, default to true)
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to m)
///
///  @param returnTime Specifies whether time needs to be part of direction information in response. (optional, default to true)
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to min)
///
///  @param language Language of travel directions. (optional, default to en)
///
///  @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional, default to None)
///
///  @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional, default to none)
///
///  @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional, default to false)
///
///  @param majorRoads Whether to include all roads in route calculation or just major roads. (optional, default to false)
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to None)
///
///  @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional, default to false)
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional, default to N)
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route (optional, default to Y)
///
///  @param vehicleType vehicle type (optional, default to ALL)
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional, default to kg)
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @returns PBGeoRouteResponse*
///
-(NSNumber*) getRouteByAddressWithStartAddress: (NSString*) startAddress
    endAddress: (NSString*) endAddress
    db: (NSString*) db
    country: (NSString*) country
    intermediateAddresses: (NSString*) intermediateAddresses
    oip: (NSString*) oip
    destinationSrs: (NSString*) destinationSrs
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    language: (NSString*) language
    directionsStyle: (NSString*) directionsStyle
    segmentGeometryStyle: (NSString*) segmentGeometryStyle
    primaryNameOnly: (NSString*) primaryNameOnly
    majorRoads: (NSString*) majorRoads
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    returnDirectionGeometry: (NSString*) returnDirectionGeometry
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
    completionHandler: (void (^)(PBGeoRouteResponse* output, NSError* error)) handler {
    // verify the required parameter 'startAddress' is set
    if (startAddress == nil) {
        NSParameterAssert(startAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startAddress"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endAddress' is set
    if (endAddress == nil) {
        NSParameterAssert(endAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endAddress"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georoute/v1/route/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startAddress != nil) {
        queryParams[@"startAddress"] = startAddress;
    }
    if (endAddress != nil) {
        queryParams[@"endAddress"] = endAddress;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (intermediateAddresses != nil) {
        queryParams[@"intermediateAddresses"] = intermediateAddresses;
    }
    if (oip != nil) {
        queryParams[@"oip"] = oip;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (directionsStyle != nil) {
        queryParams[@"directionsStyle"] = directionsStyle;
    }
    if (segmentGeometryStyle != nil) {
        queryParams[@"segmentGeometryStyle"] = segmentGeometryStyle;
    }
    if (primaryNameOnly != nil) {
        queryParams[@"primaryNameOnly"] = primaryNameOnly;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (returnDirectionGeometry != nil) {
        queryParams[@"returnDirectionGeometry"] = returnDirectionGeometry;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
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
                              responseType: @"PBGeoRouteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoRouteResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets Route by Location
/// Returns the fastest or shortest route based on a starting and ending location with optional intermediate points as input.
///  @param startPoint Start Point in 'Lat,Long,coordsys' format 
///
///  @param endPoint End Point in 'Lat,Long,coordsys' format 
///
///  @param db Mode of commute. (optional, default to driving)
///
///  @param intermediatePoints List of intermediate points of the route. (optional)
///
///  @param oip Specifies whether waypoints need to be optimized. (optional, default to false)
///
///  @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
///
///  @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional, default to time)
///
///  @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional, default to true)
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to m)
///
///  @param returnTime Specifies whether time needs to be part of direction information in response. (optional, default to true)
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to min)
///
///  @param language Specifies the language of travel directions. (optional, default to en)
///
///  @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional, default to None)
///
///  @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional, default to none)
///
///  @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional, default to false)
///
///  @param majorRoads Whether to include all roads in route calculation or just major roads. (optional, default to false)
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to None)
///
///  @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional, default to false)
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional, default to N)
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route (optional, default to Y)
///
///  @param vehicleType vehicle type (optional, default to ALL)
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional, default to kg)
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @returns PBGeoRouteResponse*
///
-(NSNumber*) getRouteByLocationWithStartPoint: (NSString*) startPoint
    endPoint: (NSString*) endPoint
    db: (NSString*) db
    intermediatePoints: (NSString*) intermediatePoints
    oip: (NSString*) oip
    destinationSrs: (NSString*) destinationSrs
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    language: (NSString*) language
    directionsStyle: (NSString*) directionsStyle
    segmentGeometryStyle: (NSString*) segmentGeometryStyle
    primaryNameOnly: (NSString*) primaryNameOnly
    majorRoads: (NSString*) majorRoads
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    returnDirectionGeometry: (NSString*) returnDirectionGeometry
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
    completionHandler: (void (^)(PBGeoRouteResponse* output, NSError* error)) handler {
    // verify the required parameter 'startPoint' is set
    if (startPoint == nil) {
        NSParameterAssert(startPoint);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startPoint"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endPoint' is set
    if (endPoint == nil) {
        NSParameterAssert(endPoint);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endPoint"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georoute/v1/route/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startPoint != nil) {
        queryParams[@"startPoint"] = startPoint;
    }
    if (endPoint != nil) {
        queryParams[@"endPoint"] = endPoint;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (intermediatePoints != nil) {
        queryParams[@"intermediatePoints"] = intermediatePoints;
    }
    if (oip != nil) {
        queryParams[@"oip"] = oip;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (directionsStyle != nil) {
        queryParams[@"directionsStyle"] = directionsStyle;
    }
    if (segmentGeometryStyle != nil) {
        queryParams[@"segmentGeometryStyle"] = segmentGeometryStyle;
    }
    if (primaryNameOnly != nil) {
        queryParams[@"primaryNameOnly"] = primaryNameOnly;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (returnDirectionGeometry != nil) {
        queryParams[@"returnDirectionGeometry"] = returnDirectionGeometry;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
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
                              responseType: @"PBGeoRouteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoRouteResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets Cost Matrix by Address
/// Calculates the travel time and distances between an array of start and end addresses.
///  @param startAddresses Start locations in text based addresses. 
///
///  @param endAddresses End locations in text based addresses. 
///
///  @param db Mode of commute. (optional, default to driving)
///
///  @param country 3 Digit ISO country code. (optional, default to USA)
///
///  @param optimizeBy Specifies the type of optimizing to use for the route (time/distance). (optional, default to time)
///
///  @param returnDistance Specifies whether to return the travel distance in the response or not. (optional, default to true)
///
///  @param destinationSrs Coordinate system used for the returned routes. (optional)
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to m)
///
///  @param returnTime Specifies whether to return the travel time in the response or not. (optional, default to true)
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to min)
///
///  @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional, default to false)
///
///  @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional, default to true)
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to None)
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional, default to N)
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route (optional, default to Y)
///
///  @param vehicleType vehicle type (optional, default to ALL)
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional, default to kg)
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @returns PBTravelCostMatrixResponse*
///
-(NSNumber*) getTravelCostMatrixByAddressWithStartAddresses: (NSString*) startAddresses
    endAddresses: (NSString*) endAddresses
    db: (NSString*) db
    country: (NSString*) country
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    destinationSrs: (NSString*) destinationSrs
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    majorRoads: (NSString*) majorRoads
    returnOptimalRoutesOnly: (NSString*) returnOptimalRoutesOnly
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
    completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler {
    // verify the required parameter 'startAddresses' is set
    if (startAddresses == nil) {
        NSParameterAssert(startAddresses);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startAddresses"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endAddresses' is set
    if (endAddresses == nil) {
        NSParameterAssert(endAddresses);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endAddresses"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georoute/v1/travelcostmatrix/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startAddresses != nil) {
        queryParams[@"startAddresses"] = startAddresses;
    }
    if (endAddresses != nil) {
        queryParams[@"endAddresses"] = endAddresses;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (returnOptimalRoutesOnly != nil) {
        queryParams[@"returnOptimalRoutesOnly"] = returnOptimalRoutesOnly;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
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
                              responseType: @"PBTravelCostMatrixResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTravelCostMatrixResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets Cost Matrix by Location
/// GeoRoute's 'Travel Cost Matrix By Location' service calculates the travel time and distances between an array of start and end points based on location coordinates.
///  @param startPoints The address to be searched. 
///
///  @param endPoints The address to be searched. 
///
///  @param db Mode of commute. (optional, default to driving)
///
///  @param optimizeBy Specifies whether routes should be optimized by time or distance. (optional, default to time)
///
///  @param returnDistance Specifies whether distance needs to be returned in response. (optional, default to true)
///
///  @param destinationSrs Specifies the desired coordinate system of returned routes. (optional)
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to m)
///
///  @param returnTime Specifies whether time needs to be returned in response. (optional, default to true)
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to min)
///
///  @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional, default to false)
///
///  @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional, default to true)
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to None)
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional, default to N)
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route (optional, default to Y)
///
///  @param vehicleType vehicle type (optional, default to ALL)
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional, default to kg)
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional, default to ft)
///
///  @returns PBTravelCostMatrixResponse*
///
-(NSNumber*) getTravelCostMatrixByLocationWithStartPoints: (NSString*) startPoints
    endPoints: (NSString*) endPoints
    db: (NSString*) db
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    destinationSrs: (NSString*) destinationSrs
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    majorRoads: (NSString*) majorRoads
    returnOptimalRoutesOnly: (NSString*) returnOptimalRoutesOnly
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
    completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler {
    // verify the required parameter 'startPoints' is set
    if (startPoints == nil) {
        NSParameterAssert(startPoints);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startPoints"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endPoints' is set
    if (endPoints == nil) {
        NSParameterAssert(endPoints);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endPoints"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoRouteServiceApiErrorDomain code:kPBLIAPIGeoRouteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/georoute/v1/travelcostmatrix/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startPoints != nil) {
        queryParams[@"startPoints"] = startPoints;
    }
    if (endPoints != nil) {
        queryParams[@"endPoints"] = endPoints;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (returnOptimalRoutesOnly != nil) {
        queryParams[@"returnOptimalRoutesOnly"] = returnOptimalRoutesOnly;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
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
                              responseType: @"PBTravelCostMatrixResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTravelCostMatrixResponse*)data, error);
                                }
                           }
          ];
}



@end
