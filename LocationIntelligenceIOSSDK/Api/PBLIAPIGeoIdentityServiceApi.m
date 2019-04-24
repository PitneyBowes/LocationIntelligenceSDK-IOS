#import "PBLIAPIGeoIdentityServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeoIdentityResponse.h"
#import "PBIdentity.h"


@interface PBLIAPIGeoIdentityServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoIdentityServiceApi

NSString* kPBLIAPIGeoIdentityServiceApiErrorDomain = @"PBLIAPIGeoIdentityServiceApiErrorDomain";
NSInteger kPBLIAPIGeoIdentityServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoIdentityServiceApi *sharedAPI;
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
/// Gets GeoIdentityResponse
/// Gets GeoIdentityResponse
///  @param address free form address text 
///
///  @param givenName This filters all the associated identities of address by given Name (optional)
///
///  @param familyName This filters all the associated identities of address by family Name (optional)
///
///  @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
///
///  @param maxCandidates Number of identities returned in response (optional)
///
///  @param includeNeighborhoodDetails Whether to include neighborhood details in the response or not. Default is Y (optional)
///
///  @returns PBGeoIdentityResponse*
///
-(NSNumber*) getIdentityByAddressWithAddress: (NSString*) address
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    includeNeighborhoodDetails: (NSString*) includeNeighborhoodDetails
    completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoIdentityServiceApiErrorDomain code:kPBLIAPIGeoIdentityServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoidentity/v1/identity/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (givenName != nil) {
        queryParams[@"givenName"] = givenName;
    }
    if (familyName != nil) {
        queryParams[@"familyName"] = familyName;
    }
    if (confidence != nil) {
        queryParams[@"confidence"] = confidence;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (includeNeighborhoodDetails != nil) {
        queryParams[@"includeNeighborhoodDetails"] = includeNeighborhoodDetails;
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
                              responseType: @"PBGeoIdentityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoIdentityResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets Identity
/// Gets Identity
///  @param email This specifies the email address 
///
///  @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
///
///  @returns PBIdentity*
///
-(NSNumber*) getIdentityByEmailWithEmail: (NSString*) email
    confidence: (NSString*) confidence
    completionHandler: (void (^)(PBIdentity* output, NSError* error)) handler {
    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoIdentityServiceApiErrorDomain code:kPBLIAPIGeoIdentityServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoidentity/v1/identity/byemail"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (email != nil) {
        queryParams[@"email"] = email;
    }
    if (confidence != nil) {
        queryParams[@"confidence"] = confidence;
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
                              responseType: @"PBIdentity*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBIdentity*)data, error);
                                }
                           }
          ];
}

///
/// Gets GeoIdentityResponse
/// Gets GeoIdentityResponse
///  @param pbKey PB specific unique key for each address 
///
///  @param givenName This filters all the associated identities of address by given Name (optional)
///
///  @param familyName This filters all the associated identities of address by family Name (optional)
///
///  @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
///
///  @param maxCandidates Number of identities returned in response (optional)
///
///  @param includeNeighborhoodDetails Whether to include neighborhood details in the response or not. Default is Y (optional)
///
///  @returns PBGeoIdentityResponse*
///
-(NSNumber*) getIdentityByPBKeyWithPbKey: (NSString*) pbKey
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    includeNeighborhoodDetails: (NSString*) includeNeighborhoodDetails
    completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler {
    // verify the required parameter 'pbKey' is set
    if (pbKey == nil) {
        NSParameterAssert(pbKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pbKey"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoIdentityServiceApiErrorDomain code:kPBLIAPIGeoIdentityServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoidentity/v1/identity/bypbkey"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (pbKey != nil) {
        queryParams[@"pbKey"] = pbKey;
    }
    if (givenName != nil) {
        queryParams[@"givenName"] = givenName;
    }
    if (familyName != nil) {
        queryParams[@"familyName"] = familyName;
    }
    if (confidence != nil) {
        queryParams[@"confidence"] = confidence;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (includeNeighborhoodDetails != nil) {
        queryParams[@"includeNeighborhoodDetails"] = includeNeighborhoodDetails;
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
                              responseType: @"PBGeoIdentityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeoIdentityResponse*)data, error);
                                }
                           }
          ];
}

///
/// Gets Identity
/// Gets Identity
///  @param twitter Twitter handle of the identity. 
///
///  @param confidence To adjust quality threshold of data returned. Default is HIGH (optional)
///
///  @returns PBIdentity*
///
-(NSNumber*) getIdentityByTwitterWithTwitter: (NSString*) twitter
    confidence: (NSString*) confidence
    completionHandler: (void (^)(PBIdentity* output, NSError* error)) handler {
    // verify the required parameter 'twitter' is set
    if (twitter == nil) {
        NSParameterAssert(twitter);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"twitter"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoIdentityServiceApiErrorDomain code:kPBLIAPIGeoIdentityServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geoidentity/v1/identity/bytwitter"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (twitter != nil) {
        queryParams[@"twitter"] = twitter;
    }
    if (confidence != nil) {
        queryParams[@"confidence"] = confidence;
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
                              responseType: @"PBIdentity*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBIdentity*)data, error);
                                }
                           }
          ];
}



@end
