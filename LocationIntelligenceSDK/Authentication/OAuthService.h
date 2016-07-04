//
//  OAuthService.h
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

#import <Foundation/Foundation.h>

#import "AuthToken.h"
#import "OAuthFactory.h"
#import "ErrorResponse.h"


/**
 *  Interface to provide authentication token @Link BaseAuthService:getAuthenticationToken
 */

@interface OAuthService : NSObject


@property(nonatomic, readonly) BOOL tokenAvailable;


-(void) invalidateAuthenticationToken;

/**
 *  Provides valid authentication token @Link BaseAuthService:getAuthenticationToken
 *
 *  @param success success callback
 *  @param failure failure callback
 */
- (void)getAuthenticationToken:(void (^)(AuthToken *authToken))success
                       failure:(void (^)( ErrorResponse *errorResponse))failure;


-(BOOL) isTokenAvailable;



-(BOOL) isUserGenereatedToken;

@end
