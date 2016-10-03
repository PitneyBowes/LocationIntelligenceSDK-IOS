//
//  GeoLifeServiceTestCase.m
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

@interface GeoCommServiceTestCase : XCTestCase

@end

@implementation GeoCommServiceTestCase

LIServiceManager *lbsGeoComm ;
BaseAuthService *baseOAuthServiceGeoComm;

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
    
    BaseAuthServiceInternal *baseAuthService = [BaseAuthServiceInternal sharedBaseOauthObject:@"":@""];
    lbsGeoComm = [LIServiceManager sharedSingletonClass:baseAuthService];
    
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testgetGeoCommByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService *geoCommService= lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        
        [geoCommService getRateCenterByAddress:@"363 MULIWAI DR WAILUKU, HI 96793": ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            NSLog(@"Geocomm Reponse getRateCenterByAddress %@", geoComm);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetGeoCommByAddressAndCountry
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        
        [geoCommService getRateCenterByAddressAndCountry:@"363 MULIWAI DR WAILUKU, HI 96793":@"USA": ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            NSLog(@"Geocomm Reponse testgetGeoCommByAddressAndCountry %@", geoComm);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });

    
    
}

- (void)testgetGeoCommByAddressAndRequestInfo
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        
        [geoCommService getRateCenterByAddressAndRequestInfo:@"363 MULIWAI DR WAILUKU, HI 96793":(BOOL *)YES: ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            
            NSLog(@"Geocomm Reponse getRateCenterByAddressAndRequestInfo %@", geoComm);

            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
    
}

- (void)testgetRateCenterByAddressAndLevel
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        
        [geoCommService getRateCenterByAddressAndLevel:@"363 MULIWAI DR WAILUKU, HI 96793":(BOOL *)YES:@"detail": ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            
            NSLog(@"Geocomm Reponse getRateCenterByAddressAndLevel %@", geoComm);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
    
}

- (void)testgetRateCenterByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        
        [geoCommService getRateCenterByAddressWithAllOptions:@"363 MULIWAI DR WAILUKU, HI 96793":@"USA":(BOOL *)YES:@"detail": ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            
             NSLog(@"Geocomm Reponse getRateCenterByAddressWithAllOptions %@", geoComm);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
    
}



- (void)testgetRateCenterByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        [geoCommService getRateCenterByLocation: [NSNumber numberWithDouble:40.018912] : [NSNumber numberWithDouble: -105.239771]: ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            
             NSLog(@"Geocomm Reponse getRateCenterByLocation %@", geoComm);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    

    
}

- (void)testgetRateCenterByLocationAllOptions
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        [geoCommService getRateCenterByLocationWithAllOptions:  [NSNumber numberWithDouble:40.018912]
                                                             : [NSNumber numberWithDouble: -105.239771]
                                                             : (BOOL *) YES
                                                             : @"detail": ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
            NSLog(@"Geocomm Reponse getRateCenterByLocationWithAllOptions %@", geoComm);

            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
    
    
}

- (void)testgetRateCenterByLocationAreaCodeInfo
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoCommService  *geoCommService = lbsGeoComm.getGeoCommSerivce;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoCommService );
        
        
        [geoCommService getRateCenterByLocationWithAreaCodeInfo: [NSNumber numberWithDouble:32.032] : [NSNumber numberWithDouble: -93.703]:(BOOL *) YES: ^(RateCenterResponse *geoComm) {
            
            *done = YES;
            XCTAssertTrue(geoComm != nil);
             NSLog(@"Geocomm Reponse getRateCenterByLocationWithAreaCodeInfo %@", geoComm);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
    
    
}

@end
