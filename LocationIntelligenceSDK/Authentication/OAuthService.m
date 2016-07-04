//
//  OAuthService.m
//
  
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "OAuthService.h"
#import "BaseAuthService.h"



@implementation OAuthService

@synthesize tokenAvailable;




-(void)getAuthenticationToken:(void (^)(AuthToken *authToken))success
                      failure:(void (^)( ErrorResponse *errorResponse))failure{
    
    if (_AuthToken != nil) {
        NSLog(@"Token is already generated");
        success(_AuthToken);
        return;
    }
    
    BaseAuthService * baseAuth = [OAuthFactory getBaseOAuthServiceInstance];
    [baseAuth getAuthenticationToken:success failure:failure];
}


-(BOOL) isUserGenereatedToken{
    
    BaseAuthService * baseAuth = [OAuthFactory getBaseOAuthServiceInstance];
    BOOL tkSt =[baseAuth isUserGenereatedToken];
    NSLog(@"In OAuthService Checking whether it is user generated token or not %hhd ", tkSt);
    return tkSt ;
}


- (void) invalidateAuthenticationToken {
  if (_AuthToken != nil) {
    _AuthToken = nil;
    NSLog(@"Token has been deleted");
  }
}






-(BOOL) isTokenAvailable{
    bool st = (_AuthToken == nil)?FALSE:TRUE;
    return st && ![_AuthToken.access_token isEqualToString:@""];
}

@end
