//
//  DictionaryService.m
//  LocationIntelligenceSDK
//
//  Created by Gaurav Jain on 12/02/16.
//  Copyright © 2016 PB. All rights reserved.
//

#import "DictionaryService.h"
#import "DictionaryResponse.h"

@implementation  DictionaryService
NSString *dictionryURL = @"/Geocode/rest/GeocodeService/dictionaries?";

- (void) getDictionaries: (NSString *)country :
(void (^)(DictionaryResponse *dictionaryResponse))success
                failure : (void (^)( ErrorResponse *error))failure
{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Life getAddress APIs");
        
        NSString *dictionaryWEBURL;
        
        if(country != nil){
            dictionaryWEBURL = [dictionryURL stringByAppendingString:@"country="];
            dictionaryWEBURL = [dictionaryWEBURL stringByAppendingFormat:@"%@",country];
        }
        
        
        
        
        [self getDictionaryResponse:dictionaryWEBURL :@"dictionaries?" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoLife getAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


/**
 *  <#Description#>
 *
 *  @param url
 *  @param methodName <#methodName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getDictionaryResponse:(NSString *)url :
(NSString *)methodName :
(void (^)(DictionaryResponse *dictionary))success failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        DictionaryResponse *dictionary = [DictionaryResponse modelObjectWithDictionary:id];
        success(dictionary);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
    
    
    
}


@end