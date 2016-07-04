//
//  NetworkService.m
//  PBSmartEarthSuite
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "NetworkService.h"
#import "AFNetworking.h"
#include "LIServiceManager.h"
#include "BaseAuthService.h"
#include "JSONResponseSerializerWithData.h"
#include "ErrorResponse.h"
#include "Errors.h"
#include "LIErrorResponse.h"

//TODO : Need to split this file in modular functions
@implementation NetworkService

- (void)PostRestServiceWithPayLoad: (NSString *)webUrl :(id) parameters: (void (^)(id))success
failure:(void (^)( ErrorResponse *errorResponse))failure{
    
    NSURL *baseLIURL = [NSURL URLWithString:BASE_URL];
    
    
    NSLog(@"Post request URL is  %@",webUrl);
    
    
   
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseLIURL];
    
    [manager setRequestSerializer:[AFJSONRequestSerializer serializer]];
    manager.responseSerializer = [JSONResponseSerializerWithData serializer];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setAuthorizationHeaderFieldWithUsername:_ConsumerKey password:_ConsumerSecretKey];
    
    [manager POST:webUrl parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSLog(@"PostRestService - Successfull request");
        
        //here is place for code executed in success case
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        ErrorResponse *erRes = [[ErrorResponse alloc] init];
        
        if (task.response==nil) {
            
            NSString * localdescription = [error localizedDescription ];
            //Root cause error
            erRes.rootCauseErrorMessage = localdescription;
            
            LIErrorResponse *liErRes = [[LIErrorResponse alloc] init];
            
            //HTTP Response Status code
            liErRes.httpStatusCode = error.code;
            
            // Messhery Specific error handling
            Error *liEr = [[Error alloc]init];
            NSMutableArray *errorsArray = [[NSMutableArray alloc]init];
            Errors *errors= [[Errors alloc]init];
            errors.errorDescription=localdescription;
            errors.errorCode=[@(error.code) stringValue];
            [errorsArray addObject:errors];
            liEr.errors = errorsArray;
            liErRes.error = liEr;
            erRes.liErrorResponse = liErRes;
        }
        else
        {
            
            // get the json here
            id json = error.userInfo[JSONResponseSerializerWithDataKey];
            
            NSLog(@"Failure in Post request %@", json);
            
            NSHTTPURLResponse* codeResponse = (NSHTTPURLResponse*)task.response;
            
            
            
            NSDictionary *responseDict = json;
            NSError* errors = nil;
            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:responseDict options:NSJSONWritingPrettyPrinted error:&errors];
            NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
            
            //ErrorResponse *erRes = [[ErrorResponse alloc] init];
            NSString * localdescription = [error localizedDescription ];
            erRes.rootCauseErrorMessage = localdescription;
            LIErrorResponse *liErRes = [[LIErrorResponse alloc] init];
            liErRes.httpStatusCode = codeResponse.statusCode;
            
            NSLog(@"PostRestService Error in request %@ ",jsonString);
            NSLog(@"The http status code is %d ",liErRes.httpStatusCode);
            NSLog(@"The root cause error message is %@ ",erRes.rootCauseErrorMessage);
            
            if (json[@"error"]) {
                
                Error *liEr = [[Error alloc]init];
                NSMutableDictionary *errorArray = [NSMutableDictionary dictionary];
                NSString * erMessage = json [@"error"];
                [errorArray setObject: erMessage  forKey: @"errorMessage"];
                liEr.errors = (NSArray *)errorArray;
                liErRes.error = liEr;
                erRes.liErrorResponse = liErRes;
                
            }
            else if (json[@"errors"]){
                
                //LBS specific error handling
                
                Error *liErr = [Error modelObjectWithDictionary: json];
                liErRes.error = liErr;
                erRes.liErrorResponse = liErRes;
            }
        }
        failure(erRes);
    }];
    
    
}
/**
 *  Post - network request
 *
 *  @param webUrl  <#webUrl description#>
 *  @param success <#success description#>
 *  @param failure <#failure description#>
 */
-(void)PostRestService: (NSString *)webUrl :(void (^)(id))success
               failure:(void (^)( ErrorResponse *errorResponse))failure{
    
    NSURL *baseLIURL = [NSURL URLWithString:BASE_URL];
    
    
    NSLog(@"Post request URL is  %@",webUrl);
    
    
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameters setObject:@"client_credentials" forKey:@"grant_type"];
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseLIURL];
    
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    manager.responseSerializer = [JSONResponseSerializerWithData serializer];
    
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager.requestSerializer setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    
    
    [manager.requestSerializer setAuthorizationHeaderFieldWithUsername:_ConsumerKey password:_ConsumerSecretKey];
    
    
    [manager POST:webUrl parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSLog(@"PostRestService - Successfull request");

        //here is place for code executed in success case
        success(responseObject);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        ErrorResponse *erRes = [[ErrorResponse alloc] init];
        
        if (task.response==nil) {
            
            NSString * localdescription = [error localizedDescription ];
            //Root cause error
            erRes.rootCauseErrorMessage = localdescription;
            
            LIErrorResponse *liErRes = [[LIErrorResponse alloc] init];
            
            //HTTP Response Status code
            liErRes.httpStatusCode = error.code;
            
            // Messhery Specific error handling
            Error *liEr = [[Error alloc]init];
            NSMutableArray *errorsArray = [[NSMutableArray alloc]init];
            Errors *errors= [[Errors alloc]init];
            errors.errorDescription=localdescription;
            errors.errorCode=[@(error.code) stringValue];
            [errorsArray addObject:errors];
            liEr.errors = errorsArray;
            liErRes.error = liEr;
            erRes.liErrorResponse = liErRes;
        }
        else
        {

        // get the json here
        id json = error.userInfo[JSONResponseSerializerWithDataKey];
        
        NSLog(@"Failure in Post request %@", json);
        
        NSHTTPURLResponse* codeResponse = (NSHTTPURLResponse*)task.response;
        
        
        
        NSDictionary *responseDict = json;
        NSError* errors = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:responseDict options:NSJSONWritingPrettyPrinted error:&errors];
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        //ErrorResponse *erRes = [[ErrorResponse alloc] init];
        NSString * localdescription = [error localizedDescription ];
        erRes.rootCauseErrorMessage = localdescription;
        LIErrorResponse *liErRes = [[LIErrorResponse alloc] init];
        liErRes.httpStatusCode = codeResponse.statusCode;
        
        NSLog(@"PostRestService Error in request %@ ",jsonString);
        NSLog(@"The http status code is %d ",liErRes.httpStatusCode);
        NSLog(@"The root cause error message is %@ ",erRes.rootCauseErrorMessage);
    
        if (json[@"error"]) {
            
            Error *liEr = [[Error alloc]init];
            NSMutableDictionary *errorArray = [NSMutableDictionary dictionary];
            NSString * erMessage = json [@"error"];
            [errorArray setObject: erMessage  forKey: @"errorMessage"];
            liEr.errors = (NSArray *)errorArray;
            liErRes.error = liEr;
            erRes.liErrorResponse = liErRes;
            
        }
        else if (json[@"errors"]){
            
            //LBS specific error handling
            
            Error *liErr = [Error modelObjectWithDictionary: json];
            liErRes.error = liErr;
            erRes.liErrorResponse = liErRes;
        }
        }
        failure(erRes);
    }];
    
    
}

/**
 *  Get - Network Request
 *
 *  @param webUrl       <#webUrl description#>
 *  @param oAuthService <#oAuthService description#>
 *  @param success      <#success description#>
 *  @param failure      <#failure description#>
 */
-(void)GetRestService: (NSString *)webUrl : (OAuthService*) oAuthService :(void (^)(id))success
              failure:(void (^)( ErrorResponse *error))failure{
    
    
    NSLog(@"GET request URL is  %@",webUrl);

    
    NSURL *baseLIURL = [NSURL URLWithString:BASE_URL];
    
    NSString *webUrlWOSpace = [webUrl stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    
    
    
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    [parameters setObject:@"client_credentials" forKey:@"grant_type"];
    
    
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithBaseURL:baseLIURL];
    
    [manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    [manager setResponseSerializer:[JSONResponseSerializerWithData serializer]];
    
    
    
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Application-Type"];
    
    
    //SSL CERTIFICATE ENABLE-DISABLE
    
    AFSecurityPolicy *securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    securityPolicy.allowInvalidCertificates = !_AuthToken._SSLVAL;
    manager.securityPolicy = securityPolicy;
    
    NSLog(@"HTTPS SSL Certifcate has been %d for WIN server request",!_AuthToken._SSLVAL);
    
    
    if(oAuthService.isTokenAvailable){
        
    [manager.requestSerializer setValue: [_AuthToken toString] forHTTPHeaderField:@"Authorization"];
    
    }
    
    
    [manager GET:webUrlWOSpace parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSLog(@"GetRestService - Successfull request");
        
        NSDictionary *responseDict = responseObject;
        success(responseDict);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        ErrorResponse *erRes = [[ErrorResponse alloc] init];
        if (task.response==nil) {
            
            NSString * localdescription = [error localizedDescription ];
            //Root cause error
            erRes.rootCauseErrorMessage = localdescription;
            
            LIErrorResponse *liErRes = [[LIErrorResponse alloc] init];
            
            //HTTP Response Status code
            liErRes.httpStatusCode = error.code;
            
            // Messhery Specific error handling
               Error *liEr = [[Error alloc]init];
                NSMutableArray *errorsArray = [[NSMutableArray alloc]init];
                Errors *errors= [[Errors alloc]init];
                errors.errorDescription=localdescription;
                errors.errorCode=[@(error.code) stringValue];
                [errorsArray addObject:errors];
                liEr.errors = errorsArray;
                liErRes.error = liEr;
                erRes.liErrorResponse = liErRes;
        }
        else
        {
        NSHTTPURLResponse* codeResponse = (NSHTTPURLResponse*)task.response;
        
        // get the json here
        id json = error.userInfo[JSONResponseSerializerWithDataKey];
        
        NSDictionary *responseDict = json;
        NSError* errors = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:responseDict options:NSJSONWritingPrettyPrinted error:&errors];
        NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        
        NSString * localdescription = [error localizedDescription ];
        //Root cause error
        erRes.rootCauseErrorMessage = localdescription;
        
        LIErrorResponse *liErRes = [[LIErrorResponse alloc] init];
        
        //HTTP Response Status code
        liErRes.httpStatusCode = codeResponse.statusCode;

        NSLog(@"GetRestService - Error in request %@ ",jsonString);
        NSLog(@"The http status code is %d ",liErRes.httpStatusCode);
        NSLog(@"The root cause error message is %@ ",erRes.rootCauseErrorMessage);

        
        
        if (json[@"error"]) {
            
            // Messhery Specific error handling
            
            Error *liEr = [[Error alloc]init];
            NSMutableDictionary *errorArray = [NSMutableDictionary dictionary];
            NSString * erMessage = json [@"error"];
            [errorArray setObject: erMessage  forKey: @"errorMessage"];
            liEr.errors = (NSArray *)errorArray;
            liErRes.error = liEr;
            erRes.liErrorResponse = liErRes;
            
        }else if (json[@"errors"]){
            
            //LBS specific error handling
            
            Error *liErr = [Error modelObjectWithDictionary: json];
            liErRes.error = liErr;
            erRes.liErrorResponse = liErRes;
            
        
        }
        
        // Renew the Tokens If they are expired 
        if(codeResponse.statusCode == 401 && ![oAuthService isUserGenereatedToken]){
            
            //Time to renew tokens now

            NSLog(@"It seems Auth token has been expired, Its time to regenarate the new tokens");
            
            //Token expired, It's time to regenrate the tocken
            [oAuthService invalidateAuthenticationToken];
            
            [oAuthService getAuthenticationToken:^(AuthToken *authToken) {
                //Again new auth token has been generated
                
                NSLog(@"OAuth token has been regenerated successfully, it time to resume services");
                [self GetRestService:webUrl : oAuthService :success failure:failure];
                
            } failure:^(ErrorResponse *errorResponse) {
                
                NSLog(@"OAuth token regeneration has been failed again, going back");
                failure(errorResponse);

            }];

            return;

        }
        }

        failure(erRes);
        
    }];
}

@end
