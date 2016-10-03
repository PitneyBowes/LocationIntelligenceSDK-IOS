//
//  Geo911ServiceTestcase.m
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

@interface Geo911ServiceTestcase : XCTestCase

@end

@implementation Geo911ServiceTestcase

LIServiceManager *liGeo911 ;
BaseAuthService *baseOAuthService;

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
    
    
    
    
    //------->Ralappoc Server<-------------//
       BaseAuthServiceInternal *baseAuthService = [BaseAuthServiceInternal sharedBaseOauthObject:@"":@""];
    //-------//
    
    liGeo911 = [LIServiceManager sharedSingletonClass:baseAuthService];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testgeo911ByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getPSAPByAddress: @"1 Global View, Troy, NY" : ^(PsapResponse *psapResponse) {
            *done = YES;
            XCTAssertTrue(psapResponse != nil);
            
            XCTAssertTrue([psapResponse siteDetails] != nil);
            XCTAssertTrue([psapResponse mailingAddress] != nil);
            
            Address *add=(Address*)[psapResponse mailingAddress];
            XCTAssertTrue(add.mainAddressLine != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testgeo911ByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getPSAPByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : ^(PsapResponse *psapResponse) {
            
            *done = YES;
            XCTAssertTrue(psapResponse != nil);
            
            XCTAssertTrue([psapResponse siteDetails] != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testgeo911AHJByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getAHJPlusPSAPByLocation:[NSNumber numberWithDouble:32.032] : [NSNumber numberWithDouble: -93.703] : ^(AHJPlusPSAPResponse *psapResponse) {
            
            *done = YES;
            XCTAssertTrue(psapResponse != nil);
            
            XCTAssertTrue([psapResponse psap ] != nil);
            NSLog(@"dsfsd %@",psapResponse);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testgeo911AHJByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getAHJPlusPSAPByAddress: @"4750 Walnut St, Boulder, CO" : ^(AHJPlusPSAPResponse *aHJResponse) {
            *done = YES;
            XCTAssertTrue(aHJResponse != nil);
            
            XCTAssertTrue([aHJResponse psap] != nil);
            XCTAssertTrue([aHJResponse ahjs] != nil);
              NSLog(@"dsfsd %@",aHJResponse);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeo911ByAddressWithInvalidAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getPSAPByAddress: @"" : ^(PsapResponse *psapResponse) {
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *liGeo911ErRes = [error liErrorResponse];
            XCTAssertTrue(liGeo911ErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liGeo911ErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)liGeo911ErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
        } ];
        
    });
    
}


- (void)testgeo911ByAddressWithNullAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getPSAPByAddress: nil : ^(PsapResponse *psapResponse) {
            *done = YES;
            XCTAssertTrue(psapResponse != nil);
            XCTAssertTrue([psapResponse siteDetails] != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testgeo911ByLocationWithInvalidLatitudeLongitude
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getPSAPByLocation:[NSNumber numberWithDouble:35.0118] : [NSNumber numberWithDouble: 1000] : ^(PsapResponse *psapResponse) {
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *liGeo911ErRes = [error liErrorResponse];
            XCTAssertTrue(liGeo911ErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liGeo911ErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)liGeo911ErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
        } ];
        
    });
    
}

- (void)testgeo911ByLocationWithNullLatitudeLongitude
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        Geo911Service  *geo911Service = liGeo911.getGeo911Service;
        
        [geo911Service getPSAPByLocation:nil : nil : ^(PsapResponse *psapResponse) {
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *liGeo911ErRes = [error liErrorResponse];
            XCTAssertTrue(liGeo911ErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liGeo911ErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)liGeo911ErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
        } ];
        
    });
    
}
@end
