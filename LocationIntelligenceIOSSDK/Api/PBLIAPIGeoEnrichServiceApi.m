#import "PBLIAPIGeoEnrichServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeoEnrichMetadataResponse.h"
#import "PBPOIPlaces.h"
#import "PBGeoEnrichResponse.h"
#import "PBPois.h"
#import "PBPOIByGeometryRequest.h"
#import "PBPoiCountRequest.h"
#import "PBPoiCount.h"
#import "PBPlaceByLocations.h"


@interface PBLIAPIGeoEnrichServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoEnrichServiceApi

NSString* kPBLIAPIGeoEnrichServiceApiErrorDomain = @"PBLIAPIGeoEnrichServiceApiErrorDomain";
NSInteger kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoEnrichServiceApi *sharedAPI;
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
///  @param level Allowed values are 1,2,3. If level=1, then only 4 digits category codes will be returned, level=2 means only 6 digits category codes   will be returned, level=3 means only 11 digits category codes will be returned. Multiple comma-separated values will also be accepted. So level='1,2' means return 4 digits and 6 digits category codes. (optional)
///
///  @returns PBGeoEnrichMetadataResponse*
///
-(NSNumber*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    level: (NSString*) level
    completionHandler: (void (^)(PBGeoEnrichMetadataResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/metadata/category"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (level != nil) {
        queryParams[@"level"] = level;
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
                              responseType: @"PBGeoEnrichMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoEnrichMetadataResponse*)data, error);
                                }
                           }
          ];
}

///
/// Point of Interest By Id.
/// 
///  @param _id POI unique Identifier. Accepts only numbers. 
///
///  @returns PBPOIPlaces*
///
-(NSNumber*) getPOIByIdWithId: (NSString*) _id
    completionHandler: (void (^)(PBPOIPlaces* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poi/{id}"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

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
                              responseType: @"PBPOIPlaces*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPOIPlaces*)data, error);
                                }
                           }
          ];
}

///
/// Points of Interest By Address.
/// Accepts address as an input to retrieve nearby points of interest.
///  @param address Address 
///
///  @param country Country (optional)
///
///  @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
///
///  @param type Matched against the content which defines the type of the poi.  (optional)
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
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
///  @param fuzzyOnName Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
///
///  @param page Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
///
///  @returns PBGeoEnrichResponse*
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
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poi/byaddress"];

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
    if (fuzzyOnName != nil) {
        queryParams[@"fuzzyOnName"] = fuzzyOnName;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
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
                              responseType: @"PBGeoEnrichResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoEnrichResponse*)data, error);
                                }
                           }
          ];
}

///
/// Points of Interest By Area.
/// Accepts postcode or city as an input to retrieve nearby points of interest.
///  @param country Country 
///
///  @param areaName3 Either areaName3 or postcode is required (optional)
///
///  @param postcode1 Either areaName3 or postcode is required (optional)
///
///  @param postcode2 postcode extension (optional)
///
///  @param name Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
///
///  @param type Matched against the content which defines the type of the poi.  (optional)
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
///
///  @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
///
///  @param fuzzyOnName Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
///
///  @param page Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
///
///  @returns PBGeoEnrichResponse*
///
-(NSNumber*) getPOIsByAreaWithCountry: (NSString*) country
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler {
    // verify the required parameter 'country' is set
    if (country == nil) {
        NSParameterAssert(country);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"country"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poi/byarea"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (postcode1 != nil) {
        queryParams[@"postcode1"] = postcode1;
    }
    if (postcode2 != nil) {
        queryParams[@"postcode2"] = postcode2;
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
    if (fuzzyOnName != nil) {
        queryParams[@"fuzzyOnName"] = fuzzyOnName;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
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
                              responseType: @"PBGeoEnrichResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoEnrichResponse*)data, error);
                                }
                           }
          ];
}

///
/// Point of Interests By Geometry.
/// Accepts geometry as an input to retrieve nearby point of interests.
///  @param accept  (optional)
///
///  @param contentType  (optional)
///
///  @param body  (optional)
///
///  @returns PBPois*
///
-(NSNumber*) getPOIsByGeometryWithAccept: (NSString*) accept
    contentType: (NSString*) contentType
    body: (PBPOIByGeometryRequest*) body
    completionHandler: (void (^)(PBPois* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poi/byboundary"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
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
                              responseType: @"PBPois*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPois*)data, error);
                                }
                           }
          ];
}

///
/// Points of Interest By Location.
/// Accepts longitude and latitude as an input to retrieve nearby points of interest.
///  @param longitude Longitude of the location. 
///
///  @param latitude Latitude of the location. 
///
///  @param searchText Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
///
///  @param type Matched against the content which defines the type of the poi.  (optional)
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
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
///  @param fuzzyOnName Allowed values are Y/N. If N, the search on name will not allow fuzziness. (optional)
///
///  @param page Will support pagination, by default 1st page with maxCandidates results are returned. (optional)
///
///  @param searchOnNameOnly search name description (optional)
///
///  @returns PBGeoEnrichResponse*
///
-(NSNumber*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
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
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    searchOnNameOnly: (NSString*) searchOnNameOnly
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poi/bylocation"];

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
    if (searchText != nil) {
        queryParams[@"searchText"] = searchText;
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
    if (fuzzyOnName != nil) {
        queryParams[@"fuzzyOnName"] = fuzzyOnName;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (searchOnNameOnly != nil) {
        queryParams[@"searchOnNameOnly"] = searchOnNameOnly;
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
                              responseType: @"PBGeoEnrichResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoEnrichResponse*)data, error);
                                }
                           }
          ];
}

///
/// Point of Interests count By Geometry.
/// Accepts geometry/loc/address as an input to count nearby point of interests.
///  @param contentType  (optional)
///
///  @param body  (optional)
///
///  @returns PBPoiCount*
///
-(NSNumber*) getPOIsCountWithContentType: (NSString*) contentType
    body: (PBPoiCountRequest*) body
    completionHandler: (void (^)(PBPoiCount* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poicount"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
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
                              responseType: @"PBPoiCount*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPoiCount*)data, error);
                                }
                           }
          ];
}

///
/// Place By Location.
/// Identifies and retrieves the nearest neighborhood around a specific location. This GeoEnrich service accepts latitude & longitude as input and returns a place name.
///  @param longitude Longitude of the location. 
///
///  @param latitude Latitude of the location. 
///
///  @param levelHint Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 (optional)
///
///  @returns PBPlaceByLocations*
///
-(NSNumber*) getPlaceByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    levelHint: (NSString*) levelHint
    completionHandler: (void (^)(PBPlaceByLocations* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoEnrichServiceApiErrorDomain code:kPBLIAPIGeoEnrichServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/place/bylocation"];

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
    if (levelHint != nil) {
        queryParams[@"levelHint"] = levelHint;
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
                              responseType: @"PBPlaceByLocations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPlaceByLocations*)data, error);
                                }
                           }
          ];
}

///
/// Returns SIC Codes with their Industry Titles and Category Codes mapping
/// Accepts first few partial digits or full SIC codes to filter the response
///  @param sicCode Specify starting digits or full sic code to filter the response (optional)
///
///  @param level Allowed values are 1,2. If level=1, then only 4 digits sic codes will be returned, level=2 means only 8 digits sic codes will be returned. Multiple comma-separated values will also be accepted. So level='1,2' means return both 4 digits and 8 digits sic codes. (optional)
///
///  @returns PBGeoEnrichMetadataResponse*
///
-(NSNumber*) getSICMetadataWithSicCode: (NSString*) sicCode
    level: (NSString*) level
    completionHandler: (void (^)(PBGeoEnrichMetadataResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/metadata/sic"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (level != nil) {
        queryParams[@"level"] = level;
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
                              responseType: @"PBGeoEnrichMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoEnrichMetadataResponse*)data, error);
                                }
                           }
          ];
}

///
/// Points of Interest Autocomplete.
/// POIs-Autocomplete will return POIs predictions based on the full or partial words specified in the search.The search can then be narrowed based on Location, IP Address or Country along with other supporting filters.
///  @param longitude Longitude of the location. (optional)
///
///  @param latitude Latitude of the location. (optional)
///
///  @param searchText Matched against Name, BrandName and Trade Name. Partial terms are also matched with fuzziness (max edit distance is 1) (optional)
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
///  @param country Country (optional)
///
///  @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
///
///  @param areaName3 Specifies the name of the city or town.  (optional)
///
///  @param postcode1 Postal Code of the input to be searched (optional)
///
///  @param postcode2 Postcode2 (optional)
///
///  @param ipAddress IP address of network connected device in standard IPv4 octet and a valid external address. (optional)
///
///  @param autoDetectLocation Specifies whether to auto-detect location from IP address. If 'True' is set, the location is detected from the specified ip address. If 'False' is set. the search will happen according to country or location. (optional)
///
///  @param type Matched against the content which defines the type of the poi.  (optional)
///
///  @param categoryCode Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. https://locate.pitneybowes.com/downloads/location-intelligence/v1/CategoryCodes.xlsx  (optional)
///
///  @param sicCode Specific SIC Codes/Codes for the desired POIs. Accepts a mix of 4 digit (Top Category) and 8 digit (Low-Level Category) SIC Codes. (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
///
///  @param sortBy Specifies the order in which POIs are retrieved. (optional, default to distance)
///
///  @param searchOnNameOnly specifies search on name (optional)
///
///  @returns PBGeoEnrichResponse*
///
-(NSNumber*) poisAutocompleteWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    ipAddress: (NSString*) ipAddress
    autoDetectLocation: (NSString*) autoDetectLocation
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    sortBy: (NSString*) sortBy
    searchOnNameOnly: (NSString*) searchOnNameOnly
    completionHandler: (void (^)(PBGeoEnrichResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoenrich/v1/poi/autocomplete"];

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
    if (searchText != nil) {
        queryParams[@"searchText"] = searchText;
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
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (areaName1 != nil) {
        queryParams[@"areaName1"] = areaName1;
    }
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (postcode1 != nil) {
        queryParams[@"postcode1"] = postcode1;
    }
    if (postcode2 != nil) {
        queryParams[@"postcode2"] = postcode2;
    }
    if (ipAddress != nil) {
        queryParams[@"ipAddress"] = ipAddress;
    }
    if (autoDetectLocation != nil) {
        queryParams[@"autoDetectLocation"] = autoDetectLocation;
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
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    if (searchOnNameOnly != nil) {
        queryParams[@"searchOnNameOnly"] = searchOnNameOnly;
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
                              responseType: @"PBGeoEnrichResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoEnrichResponse*)data, error);
                                }
                           }
          ];
}



@end
