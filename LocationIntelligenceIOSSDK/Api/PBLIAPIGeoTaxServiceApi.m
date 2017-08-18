#import "PBLIAPIGeoTaxServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBTaxResponses.h"
#import "PBTaxAddressRequest.h"
#import "PBTaxLocationRequest.h"
#import "PBTaxRateAddressRequest.h"
#import "PBTaxRateLocationRequest.h"
#import "PBTaxDistrictResponse.h"
#import "PBTaxDistrictResponseList.h"
#import "PBIPDTaxByAddressBatchRequest.h"
#import "PBTaxResponse.h"


@interface PBLIAPIGeoTaxServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBLIAPIGeoTaxServiceApi

NSString* kPBLIAPIGeoTaxServiceApiErrorDomain = @"PBLIAPIGeoTaxServiceApiErrorDomain";
NSInteger kPBLIAPIGeoTaxServiceApiMissingParamErrorCode = 234513;

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
    static PBLIAPIGeoTaxServiceApi *sharedAPI;
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
/// Post Tax By Address
/// This is a Batch offering for 'Tax By Address' service. It accepts a single address, purchase amount or a list of addresses, purchase amounts and retrieve applicable taxes.
///  @param taxRateTypeId The tax rate id. 
///
///  @param body TaxAddressRequest Class Object having tax request. 
///
///  @returns PBTaxResponses*
///
-(NSNumber*) getBatchTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxAddressRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/tax/{taxRateTypeId}/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                           }
          ];
}

///
/// Post Tax By Location
/// This is a Batch offering for 'Tax By Location' service. It accepts a single location coordinate, purchase amount or a list of location coordinates, purchase amounts and retrieve applicable tax.
///  @param taxRateTypeId The tax rate id. 
///
///  @param body TaxAddressRequest Class Object having tax request. 
///
///  @returns PBTaxResponses*
///
-(NSNumber*) getBatchTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxLocationRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/tax/{taxRateTypeId}/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                           }
          ];
}

///
/// Post Taxrate By Address
/// This is a Batch offering for 'Taxrate By Address' service. It accepts a single address or a list of addresses and retrieve applicable tax rates.
///  @param taxRateTypeId The tax rate id. 
///
///  @param body TaxRateAddressRequest Class Object having tax rate request. 
///
///  @returns PBTaxResponses*
///
-(NSNumber*) getBatchTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxRateAddressRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/taxrate/{taxRateTypeId}/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/xml", @"application/json"]];

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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                           }
          ];
}

///
/// Post Taxrate By Location
/// This is a Batch offering for 'Taxrate By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve applicable tax rates.
///  @param taxRateTypeId The tax rate id. 
///
///  @param body TaxRateLocationRequest Class Object having tax rate request. 
///
///  @returns PBTaxResponses*
///
-(NSNumber*) getBatchTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    body: (PBTaxRateLocationRequest*) body
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/taxrate/{taxRateTypeId}/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/xml", @"application/json"]];

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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                           }
          ];
}

///
/// Get IPD Tax by Address
/// This will accept 'address' as a parameter and will return one or many IPDs details for that region in which address will fall.
///  @param address The address to be searched. 
///
///  @returns PBTaxDistrictResponse*
///
-(NSNumber*) getIPDTaxByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBTaxDistrictResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/taxdistrict/ipd/byaddress"];

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
                              responseType: @"PBTaxDistrictResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxDistrictResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get IPD Tax for batch requests
/// Get IPD Tax for batch requests
///  @param body IPDTaxByAddressBatchRequest Class Object having IPD tax request 
///
///  @returns PBTaxDistrictResponseList*
///
-(NSNumber*) getIPDTaxByAddressBatchWithBody: (PBIPDTaxByAddressBatchRequest*) body
    completionHandler: (void (^)(PBTaxDistrictResponseList* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/taxdistrict/ipd/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
                              responseType: @"PBTaxDistrictResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxDistrictResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Get Tax By Address
/// This service calculates and returns taxes applicable at a specific address. Address, purchase amount and supported tax rate type are inputs to the service.
///  @param taxRateTypeId The tax rate id. 
///
///  @param address The address to be searched. 
///
///  @param purchaseAmount The amount on which tax to be calculated. 
///
///  @returns PBTaxResponse*
///
-(NSNumber*) getSpecificTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    purchaseAmount: (NSString*) purchaseAmount
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseAmount' is set
    if (purchaseAmount == nil) {
        NSParameterAssert(purchaseAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseAmount"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/tax/{taxRateTypeId}/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (purchaseAmount != nil) {
        queryParams[@"purchaseAmount"] = purchaseAmount;
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
                              responseType: @"PBTaxResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get Tax By Location
/// This service calculates and returns tax applicable at a specific location. Longitude, latitude, purchase amount and supported tax rate type are inputs to the service.
///  @param taxRateTypeId The tax rate id. 
///
///  @param latitude Latitude of the location. 
///
///  @param longitude Longitude of the location. 
///
///  @param purchaseAmount The amount on which tax to be calculated. 
///
///  @returns PBTaxResponse*
///
-(NSNumber*) getSpecificTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    purchaseAmount: (NSString*) purchaseAmount
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseAmount' is set
    if (purchaseAmount == nil) {
        NSParameterAssert(purchaseAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseAmount"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/tax/{taxRateTypeId}/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (purchaseAmount != nil) {
        queryParams[@"purchaseAmount"] = purchaseAmount;
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
                              responseType: @"PBTaxResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get Taxrate By Address
/// Retrieves tax rates applicable to a specific address. This service accepts address and supported tax rate type as inputs to retrieve applicable tax rates.
///  @param taxRateTypeId The tax rate id. 
///
///  @param address The address to be searched. 
///
///  @returns PBTaxResponse*
///
-(NSNumber*) getSpecificTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/taxrate/{taxRateTypeId}/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
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
                              responseType: @"PBTaxResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get Taxrate By Location
/// Retrieves tax rates applicable to a specific location. This service accepts longitude, latitude and supported tax rate type as inputs to retrieve applicable tax rates.
///  @param taxRateTypeId The tax rate id. 
///
///  @param latitude Latitude of the location. 
///
///  @param longitude Longitude of the location. 
///
///  @returns PBTaxResponse*
///
-(NSNumber*) getSpecificTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    completionHandler: (void (^)(PBTaxResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLIAPIGeoTaxServiceApiErrorDomain code:kPBLIAPIGeoTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geotax/v1/taxrate/{taxRateTypeId}/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
                              responseType: @"PBTaxResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponse*)data, error);
                                }
                           }
          ];
}



@end
