//
//  NetworkService.h
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

#import "ErrorResponse.h"
#import "OAuthService.h"

@class OAuthService;
@interface NetworkService : NSObject


@property (strong, nonatomic) NetworkService  *ns;



 //
/**
 *  Post Network request
 *
 *  @param webUrl  URL
 *  @param success success callback
 *  @param failure failure callback
 */
- (void)PostRestService: (NSString *)webUrl :(void (^)(id))success
                failure:(void (^)( ErrorResponse *errorResponse))failure;

/**
 *  GET Network request
 *
 *  @param webUrl       <#webUrl description#>
 *  @param oAuthService <#oAuthService description#>
 *  @param success success callback
 *  @param failure failure callback
 */
- (void)GetRestService: (NSString *)webUrl : (OAuthService *) oAuthService :(void (^)(id))success
                failure:(void (^)( ErrorResponse *errorResponse))failure;




//
/**
 *  Post Network request
 *
 *  @param webUrl  URL
 *  @param success success callback
 *  @param failure failure callback
 */
- (void)PostRestServiceWithPayLoad: (NSString *)webUrl :(id) parameters  :(OAuthService*) oAuthService: (void (^)(id))success
                failure:(void (^)( ErrorResponse *errorResponse))failure;


@end
