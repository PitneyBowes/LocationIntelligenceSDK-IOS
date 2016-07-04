//
//  BaseAuthService.h
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "ErrorResponse.h"
#import "OAuthService.h"
#import "NetworkService.h"
#import "UrlMaker.h"


///
/**
 *  Interface for Basic OAuth authentication in order to access all kind of LBS
 *  Services
 */
@interface BaseAuthService : NSObject



extern NSString*  _ConsumerKey;
extern NSString*  _ConsumerSecretKey;
extern AuthToken * _AuthToken;


@property(nonatomic,assign) BOOL isUserGenToken;


- (void) invalidateAuthentication;

/**
 *  To access valid authentication token
 *
 *  @param success Sucess callback
 *  @param failure Failure callback
 */
- (void)getAuthenticationToken:(void (^)(AuthToken *authToken))success
                              failure:(void (^)( ErrorResponse *errorResponse))failure;



/**
 *  This method provides Single Instance of this service
 *
 *  @param consumerKey    consumer key
 *  @param consumerSecret consumer secret
 *
 *  @return singleton instance of BaseAuthService
 */
+ (id) sharedBaseOauthObject : (NSString *) consumerKey : (NSString *) consumerSecret;



/**
 *  This method provides Single Instance of this service
 *
 *  @param userGeneratedAuthTokenedAuthToken    consumer key
 *  @param userGeneratedAuthToken consumer secret
 *
 *  @return singleton instance of BaseAuthService
 */
+ (id) sharedBaseOauthObject : (NSString *) userGeneratedAuthToken;


-(BOOL) isUserGenereatedToken;

@end
