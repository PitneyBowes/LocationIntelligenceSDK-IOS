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

@interface GeoLifeServiceTestCase : XCTestCase

@end

@implementation GeoLifeServiceTestCase

LIServiceManager *lbsGeoLife ;
BaseAuthService *baseOAuthServiceGeoLife;

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
       lbsGeoLife = [LIServiceManager sharedSingletonClass:baseAuthService];
    
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testgetDemographicsByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : (NSString*)@"top3ascending":@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetDemographicsByLocationOptionalParameter
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : nil:nil: ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetDemographicsByLocationWithoutFilter
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : (NSString*)@"top3ascending":@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}

- (void)testgetDemographicsByLocationWithoutProfile
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : nil:@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetDemographicsByLocationWithInvalidLatLong
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:1000] : [NSNumber numberWithDouble: 1000] : nil:@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *lbsErRes = [error liErrorResponse];
            XCTAssertTrue(lbsErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(lbsErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)lbsErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
            
        } ];
        
        
    });
    
}

- (void)testgetDemographicsByLocationWithInvalidProfile
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : (NSString*)@"invalidprprofile@#":@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *lbsErRes = [error liErrorResponse];
            XCTAssertTrue(lbsErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(lbsErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)lbsErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
            
        } ];
        
        
    });
    
}


- (void)testgetDemographicsByLocationWithInvalidFilter
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : (NSString*)@"top3ascending":@"inavlidFilter@#": ^(GeoLifeResponse *geoLife) {
            
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *lbsErRes = [error liErrorResponse];
            XCTAssertTrue(lbsErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(lbsErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)lbsErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
            
        } ];
        
        
    });
    
}




- (void)testgetDemographicsByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"1 Global View, Troy, NY" : nil:(NSString*)@"top3ascending":@"automobiletheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            NSLog(@"Geolife Response %@" ,geoLife );
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetDemographicsByAddressOptionalParameter
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"1 Global View, Troy, NY" : nil:nil: nil:^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetDemographicsByAddressWithoutFilter
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"1 Global View, Troy, NY" : nil:@"top3ascending":nil: ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}

- (void)testgetDemographicsByAddressWithoutProfile
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"1 Global View, Troy, NY" :nil: nil:@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testgetDemographicsByAddressWithInvalidAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"some address": nil: nil:@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            *done = YES;
            XCTAssertTrue(geoLife != nil);
            
            XCTAssertTrue([geoLife themes] != nil);

            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
        
    });
    
}

- (void)testgetDemographicsByAddressWithInvalidProfile
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"1 Global View, Troy, NY" :nil: (NSString*)@"invalidprprofile@#":@"AgeTheme": ^(GeoLifeResponse *geoLife) {
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *lbsErRes = [error liErrorResponse];
            XCTAssertTrue(lbsErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(lbsErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)lbsErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
            
        } ];
        
        
    });
    
}


- (void)testgetDemographicsByAddressWithInvalidFilter
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeGeoLifeByAddress service object %@" ,geoLifeService );
        
        [geoLifeService getDemographicsByAddress: @"1 Global View, Troy, NY" : nil:(NSString*)@"top3ascending":@"inavlidFilter@#": ^(GeoLifeResponse *geoLife) {
            
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTAssertTrue(error != nil);
            LIErrorResponse *lbsErRes = [error liErrorResponse];
            XCTAssertTrue(lbsErRes != nil);
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(lbsErRes.httpStatusCode == 400);
            Errors *errorGot = (Errors*)lbsErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
            
        } ];
        
        
    });
    
}
- (void)testgetSegmentationByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeSegmentationByAddress service object %@" ,lbsGeoLife );
        
        
        [geoLifeService getSegmentationByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : ^(Segmentation *segmentation) {
            
            *done = YES;
            XCTAssertTrue(segmentation != nil);
            
            XCTAssertTrue([segmentation themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}





- (void)testgetSegmentationByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoLifeService  *geoLifeService = lbsGeoLife.getGeoLifeService;
        NSLog(@"Received executeSegmentationByAddress service object %@" ,geoLifeService );
        
        
        [geoLifeService getSegmentationByAddress:@"1 Global View, Troy, NY" : @"USA": ^(Segmentation *segmentation) {
            
            *done = YES;
            XCTAssertTrue(segmentation != nil);
            
            XCTAssertTrue([segmentation themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}

@end
