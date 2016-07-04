//
//  BaseAuthServiceInternal.m
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

#import "BaseAuthServiceInternal.h"
#import "UrlMaker.h"
#import "AFNetworking.h"




@implementation BaseAuthServiceInternal

+ (id) sharedBaseOauthObject : (NSString *) userGeneratedAuthToken : (NSString*) webUrl{
   
    BaseAuthService *baseOAuthObj;
    baseOAuthObj = [[BaseAuthService alloc] init];
    
    //Creating object
    _AuthToken = [[AuthToken alloc] init];
    _AuthToken.access_token = userGeneratedAuthToken;


    _AuthToken._mechanism = @"Bearer";
    _AuthToken._SSLVAL = FALSE;

    [[UrlMaker getInstance] setUrlStrategy: [[UrlStrategyInternal alloc ]init]];
    
    BASE_URL = webUrl;
    
    NSLog(@"The user generated auth token is %@",_AuthToken.access_token);
   
    return baseOAuthObj;
}


@end



@implementation UrlStrategyInternal

- (NSString *) getAbsoluteUrl:(NSString *)relativeUrl {
    if ([relativeUrl rangeOfString:@"geotax"].location != NSNotFound) {
        return  [@"geotax/services/" stringByAppendingString:relativeUrl];
        //return relativeUrl;
    }
    else if ([relativeUrl rangeOfString:@"geosearch"].location != NSNotFound) {
        return  [@"geosearch/services/" stringByAppendingString:relativeUrl];
    }
    else if ([relativeUrl rangeOfString:@"dictionaries"].location != NSNotFound) {
        return  [@"" stringByAppendingString:relativeUrl];
    }
    else if ([relativeUrl rangeOfString:@"geocode-service"].location != NSNotFound) {
        return  [@"geocodeapis/services" stringByAppendingString:relativeUrl];
    }

    else
    {
      return  [@"geoapis/services" stringByAppendingString:relativeUrl];
        //return relativeUrl;
    }
    
    //return relativeUrl;
}


- (void)getAuthenticationToken:(void (^)(AuthToken *authToken))success
                       failure:(void (^)( ErrorResponse *errorResponse))failure{
        
    success(_AuthToken);

}



@end
