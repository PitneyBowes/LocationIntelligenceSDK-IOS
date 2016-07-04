//
//  GeoTaxServiceTestCase.m
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

@interface GeoTaxServiceTestCase : XCTestCase

@end

@implementation GeoTaxServiceTestCase

LIServiceManager *liGeoTax ;
BaseAuthService *baseGeoTaxOAuthServiceSearch;

static inline void hxRunInMainLoop(void(^block)(BOOL *done)) {
    __block BOOL done = NO;
    block(&done);
    while (!done) {
        [[NSRunLoop mainRunLoop] runUntilDate:
         [NSDate dateWithTimeIntervalSinceNow:.1]];
    }
}


- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    BaseAuthServiceInternal *baseAuthService = [BaseAuthServiceInternal sharedBaseOauthObject:@"" :@""];
    liGeoTax = [LIServiceManager sharedSingletonClass:baseAuthService];

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testgeoTaxAutoRateByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
    
        [geoTaxService getGeoTaxRateByAddress:@"Auto": @"4750 Walnut st, Boulder, CO" : ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxGeneralRateByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        [geoTaxService getGeoTaxRateByAddress:@"General": @"4750 Walnut st, Boulder, CO" : ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxAutoRateByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        [geoTaxService getGeoTaxRateByLocation:@"Auto": [NSNumber numberWithDouble:40.018912] : [NSNumber numberWithDouble: -105.239771]: ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxGeneralRateByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        
        
        
        [geoTaxService getGeoTaxRateByLocation:@"general": [NSNumber numberWithDouble:40.018912] : [NSNumber numberWithDouble: -105.239771]: ^(GeoTax *geoTax) {

            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxAutoByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        [geoTaxService getGeoTaxByAddress:@"Auto": @"4750 Walnut st, Boulder, CO" :[NSNumber numberWithDouble:100]: ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxGeneralByAddress{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        [geoTaxService getGeoTaxByAddress:@"general": @"4750 Walnut st, Boulder, CO" :[NSNumber numberWithDouble:100]: ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxAutoByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        [geoTaxService getGeoTaxByLocation:@"Auto": [NSNumber numberWithDouble:40.018912] : [NSNumber numberWithDouble: -105.239771]:[NSNumber numberWithDouble:100]: ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testgeoTaxGeneralByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoTaxService *geoTaxService = liGeoTax.getGeoTaxService;
        
        [geoTaxService getGeoTaxByLocation:@"General": [NSNumber numberWithDouble:40.018912] : [NSNumber numberWithDouble: -105.239771] :[NSNumber numberWithDouble:100]: ^(GeoTax *geoTax) {
            *done = YES;
            XCTAssertTrue(geoTax != nil);
            
            XCTAssertTrue(geoTax.salesTax != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}



@end
