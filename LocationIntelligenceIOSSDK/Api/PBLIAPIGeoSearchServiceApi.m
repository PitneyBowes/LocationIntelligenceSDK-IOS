#import "PBLIAPIGeoSearchServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBLocations.h"


@interface PBLIAPIGeoSearchServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoSearchServiceApi

NSString* kPBLIAPIGeoSearchServiceApiErrorDomain = @"PBLIAPIGeoSearchServiceApiErrorDomain";
NSInteger kPBLIAPIGeoSearchServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoSearchServiceApi *sharedAPI;
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
/// Gets LocationList
/// Gets LocationList
///  @param searchText The input to be searched. 
///
///  @param latitude Latitude of the location. Either the latitude or the longitude must be provided. (optional)
///
///  @param longitude Longitude of the location. Either the latitude or the longitude must be provided. (optional)
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
///
///  @param maxCandidates Maximum number of addresses that can be retrieved. (optional)
///
///  @param country Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
///
///  @param matchOnAddressNumber Option so that we force api to match on address number (optional)
///
///  @param autoDetectLocation Option to allow API to detect origin of API request automatically (optional, default to true)
///
///  @param ipAddress  (optional)
///
///  @returns PBLocations*
///
-(NSNumber*) geoSearchWithSearchText: (NSString*) searchText
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    maxCandidates: (NSString*) maxCandidates
    country: (NSString*) country
    matchOnAddressNumber: (NSString*) matchOnAddressNumber
    autoDetectLocation: (NSString*) autoDetectLocation
    ipAddress: (NSString*) ipAddress
    completionHandler: (void (^)(PBLocations* output, NSError* error)) handler {
    // verify the required parameter 'searchText' is set
    if (searchText == nil) {
        NSParameterAssert(searchText);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"searchText"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoSearchServiceApiErrorDomain code:kPBLIAPIGeoSearchServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geosearch/v1/locations"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (searchText != nil) {
        queryParams[@"searchText"] = searchText;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (matchOnAddressNumber != nil) {
        queryParams[@"matchOnAddressNumber"] = matchOnAddressNumber;
    }
    if (autoDetectLocation != nil) {
        queryParams[@"autoDetectLocation"] = autoDetectLocation;
    }
    if (ipAddress != nil) {
        queryParams[@"ipAddress"] = ipAddress;
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
                              responseType: @"PBLocations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBLocations*)data, error);
                                }
                           }
          ];
}



@end
