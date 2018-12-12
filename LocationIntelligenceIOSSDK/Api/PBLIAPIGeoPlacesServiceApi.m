#import "PBLIAPIGeoPlacesServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeoPlaceMetadataResponse.h"
#import "PBGeoplacesResponse.h"


@interface PBLIAPIGeoPlacesServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoPlacesServiceApi

NSString* kPBLIAPIGeoPlacesServiceApiErrorDomain = @"PBLIAPIGeoPlacesServiceApiErrorDomain";
NSInteger kPBLIAPIGeoPlacesServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoPlacesServiceApi *sharedAPI;
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
/// Returns Category Codes with their sub-categories (if exist), descriptions and SIC Codes mapping
/// Accepts first partial digits or full category codes to filter the response
///  @param categoryCode Specify starting digits or full category code to filter the response (optional)
///
///  @returns PBGeoPlaceMetadataResponse*
///
-(NSNumber*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    completionHandler: (void (^)(PBGeoPlaceMetadataResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoplaces/v1/metadata/category"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
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
                              responseType: @"PBGeoPlaceMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoPlaceMetadataResponse*)data, error);
                                }
                           }
          ];
}

///
/// Point of Interests By Address.
/// Accepts address as an input to retrieve nearby point of interests.
///  @param address Address 
///
///  @param country Country (optional)
///
///  @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
///
///  @param type Matched against the content which defines the type of the poi.  (optional)
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://developer2.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  (optional)
///
///  @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
///
///  @param travelTime Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in 'travelTimeUnit'. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
///
///  @param travelTimeUnit Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
///
///  @param travelDistance Specifies the search boundary in terms of distance mentioned in 'travelDistanceUnit'. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
///
///  @param travelDistanceUnit Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
///
///  @param travelMode Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
///
///  @param sortBy Specifies the order in which POIs are retrieved. (optional, default to distance)
///
///  @returns PBGeoplacesResponse*
///
-(NSNumber*) getPOIsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBGeoplacesResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPlacesServiceApiErrorDomain code:kPBLIAPIGeoPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoplaces/v1/poi/byaddress"];

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
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
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
                              responseType: @"PBGeoplacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoplacesResponse*)data, error);
                                }
                           }
          ];
}

///
/// Point of Interests By Location.
/// Accepts longitude and latitude as an input to retrieve nearby point of interests.
///  @param longitude Longitude of the location. 
///
///  @param latitude Latitude of the location. 
///
///  @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
///
///  @param type Matched against the content which defines the type of the poi.  (optional)
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/docs/location-intelligence/v1/en/poicategory/LiApiPOICategoryCodes.xlsx  (optional)
///
///  @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
///
///  @param travelTime Specifies the travel time within which method searches for results (POIs which can be reached within travel time)the search boundary in terms of time mentioned in 'travelTimeUnit'. The results are retrieved from the polygon formed based on the travel time specified. This means search can be done in the mentioned time results be from the mentioned time. (optional)
///
///  @param travelTimeUnit Specifies acceptable time units.Allowed values Minutes,Hours,Seconds and Milliseconds (optional)
///
///  @param travelDistance Specifies the search boundary in terms of distance mentioned in 'travelDistanceUnit'. The results are retrieved from the polygon formed based on the travel distance specified. (optional)
///
///  @param travelDistanceUnit Specifies acceptable time units.Allowed values Feet,Kilometers,Miles and Meters (optional)
///
///  @param travelMode Specifies the available mode of commute. This is required when u r trying to do search by travel distance or travel time. Allowed values driving and walking (optional)
///
///  @param sortBy Specifies the order in which POIs are retrieved. (optional, default to distance)
///
///  @returns PBGeoplacesResponse*
///
-(NSNumber*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    completionHandler: (void (^)(PBGeoplacesResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPlacesServiceApiErrorDomain code:kPBLIAPIGeoPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoPlacesServiceApiErrorDomain code:kPBLIAPIGeoPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoplaces/v1/poi/bylocation"];

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
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
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
                              responseType: @"PBGeoplacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoplacesResponse*)data, error);
                                }
                           }
          ];
}

///
/// Returns SIC Codes with their Industry Titles and Category Codes mapping
/// Accepts first few partial digits or full SIC codes to filter the response
///  @param sicCode Specify starting digits or full sic code to filter the response (optional)
///
///  @returns PBGeoPlaceMetadataResponse*
///
-(NSNumber*) getSICMetadataWithSicCode: (NSString*) sicCode
    completionHandler: (void (^)(PBGeoPlaceMetadataResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoplaces/v1/metadata/sic"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
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
                              responseType: @"PBGeoPlaceMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoPlaceMetadataResponse*)data, error);
                                }
                           }
          ];
}



@end
