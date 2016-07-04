//
//  OAuthTestCase.m
//  LocationIntelligenceSDK
//
 
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <LocationIntelligenceSDK/LocationIntelligenceSDK.h>

@interface OAuthTestCase : XCTestCase

@end

@implementation OAuthTestCase

LIServiceManager *lbsOAuth , *lbsInst;


BaseAuthService *baseOAuthServiceOAuth, *baseOAuthServiceF;




static inline void hxRunInMainLoop(void(^block)(BOOL *done)) {
    __block BOOL done = NO;
    block(&done);
    while (!done) {
        [[NSRunLoop mainRunLoop] runUntilDate:
         [NSDate dateWithTimeIntervalSinceNow:.1]];
    }
}


- (void)setUp
{
    [super setUp];
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

/**
 *  Positive Test case for Authentication
 */

- (void)testBaseOauthPositive
{
    
    if(lbsInst)
        [lbsInst invalidateLIServiceManagerInstance];
    lbsOAuth = [LIServiceManager sharedSingletonClass :@"" :@""];
    
    
    baseOAuthServiceOAuth=  lbsOAuth.getBaseOAuthService;
    
    
    hxRunInMainLoop(^(BOOL *done) {
        
        [baseOAuthServiceOAuth getAuthenticationToken:^(AuthToken *authToken) {
            *done = YES;
            
            XCTAssertTrue(authToken!=nil);
            XCTAssertTrue(authToken.access_token!=nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        }];
        
        
    });
    
    
}

/**
 *  Negative Test case for Authentication
 */

- (void)testBaseOauthNegative
{
    
    if(lbsOAuth)
        [lbsOAuth invalidateLIServiceManagerInstance];
    
    
    lbsInst = [LIServiceManager sharedSingletonClass :@"" :@""];
    
    baseOAuthServiceF = lbsInst.getBaseOAuthService;
    
    hxRunInMainLoop(^(BOOL *done) {
        
        
        
        
        [baseOAuthServiceF getAuthenticationToken:^(AuthToken *authToken) {
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            
            LIErrorResponse *lbsErRes = [error liErrorResponse];
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(lbsErRes.httpStatusCode != 0);
            Errors *errorGot = (Errors*)lbsErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
        }];
        
        
    });
    
    
}

@end
