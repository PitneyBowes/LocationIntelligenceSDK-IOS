//
//  BaseAuthService.m
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import <Foundation/Foundation.h>


#import "BaseAuthService.h"


@implementation BaseAuthService

// OAuth URL 
NSString  *url = @"oauth/token";

NSString*  _ConsumerKey;
NSString*  _ConsumerSecretKey;
AuthToken * _AuthToken;
BOOL isUserGenToken;


+ (id) sharedBaseOauthObject : (NSString *) consumerKey : (NSString *) consumerSecret
{
    BaseAuthService *baseOAuthObj;
    baseOAuthObj = [[BaseAuthService alloc] init];
    
    _ConsumerKey = consumerKey;
    _ConsumerSecretKey = consumerSecret;
    isUserGenToken = FALSE;
    return baseOAuthObj;
    
}


+ (id) sharedBaseOauthObject : (NSString *) userGeneratedAuthToken{
    
    BaseAuthService *baseOAuthObj;
    baseOAuthObj = [[BaseAuthService alloc] init];

    //Creating object
    _AuthToken = [[AuthToken alloc] init];
    _AuthToken.access_token = userGeneratedAuthToken;
    isUserGenToken = TRUE;
    
    return baseOAuthObj;
    
}



-(BOOL) isUserGenereatedToken{
    
    return isUserGenToken;
}





- (void)getAuthenticationToken:(void (^)(AuthToken *authToken))success
                       failure:(void (^)( ErrorResponse *error))failure{
    
  
    
    if(_AuthToken){
        NSLog(@" Base Auth Service - Token is already generated");
        success(_AuthToken);
        return;
    }
    

    
    NSLog(@"It seems token is not genereated yet, Going for OAuth mechanism");
    
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];

    
    [ ns PostRestService:urlString:^(id id) {
        
        
        NSString *acessTk = [id valueForKey:@"access_token"];
        
        //Creating object
        _AuthToken = [[AuthToken alloc] init];
        _AuthToken.access_token = acessTk;
        
        success(_AuthToken);
        
        
    } failure:^(ErrorResponse *error) {
        NSLog(@"getAuthenticationToken - its failure %@",error.rootCauseErrorMessage);
        failure(error);
    }];
    
    
    
}

-(void) invalidateAuthentication{
    
    if(_AuthToken){
        _AuthToken = nil;
        NSLog(@"Auth Token has been invalidated");
    }
    
}


@end
