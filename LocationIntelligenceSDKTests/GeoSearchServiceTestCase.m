//
//  GeoSearchServiceTestCase.m
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


@interface GeoSearchServiceTestCase : XCTestCase

@end

@implementation GeoSearchServiceTestCase

LIServiceManager *liSearch ;


BaseAuthService *baseOAuthServiceSearch;

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
    
       BaseAuthServiceInternal *baseAuthService = [BaseAuthServiceInternal sharedBaseOauthObject:@"" :@""];
    liSearch = [LIServiceManager sharedSingletonClass:baseAuthService];
    
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}



/**
 *  Positive Geo Search Test case
 */

- (void)testGeoSearch
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@"1 global V" : [NSNumber numberWithDouble:40.682815] : [NSNumber numberWithDouble:-80.239771]: [NSNumber numberWithInt: 20]:(NSString*)@"KILOMETERS":[NSNumber numberWithInt: 10]: ^(GeoSearch *geoSearch ) {
            
            *done = YES;
            XCTAssertTrue(geoSearchService != nil);
            Location *loc = [[Location alloc] init];
            loc = geoSearch.location[0];
            Address * address = (Address*)(Location*)loc.address;
            
            XCTAssertTrue(address.placeName != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}




- (void)testGeoSearchWithoutOptionalParams
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@"times" : [NSNumber numberWithDouble:40.75] : [NSNumber numberWithDouble:-73.98] :nil:nil:nil:^(GeoSearch *geoSearch ) {
            
            *done = YES;
            XCTAssertTrue(geoSearchService != nil);
            Location *loc = [[Location alloc] init];
            loc = geoSearch.location[0];
            Address * poi = (Address*)(Location*)loc.address;
            
            XCTAssertTrue(poi.placeName != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}

/**
 *  Geo Search Test case with Invalid Search Text
 */
- (void)testGeoSearchWithInvalidSearchText
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@" " : [NSNumber numberWithDouble:42.682815] : [NSNumber numberWithDouble:-105.239771] :^(GeoSearch *geoSearch ) {
            *done = YES;
            XCTFail();
        } failure:^(ErrorResponse *error) {
            *done = YES;
            
            XCTAssertTrue(error != nil);
            LIErrorResponse *liSearchErRes = [error liErrorResponse];
            XCTAssertTrue(liSearchErRes != nil);
            
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liSearchErRes.httpStatusCode != 0);
            
            
            
            Errors *errorGot = (Errors*)liSearchErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
        } ];
    });
    
}


/**
 *  Geo Search Test case with Invalid Lat Long
 */
- (void)testGeoSearchWithInvalidLatLong
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@" " : [NSNumber numberWithDouble:0.0] : [NSNumber numberWithDouble:-1.0] :^(GeoSearch *geoSearch ) {
            *done = YES;
            XCTFail();
        } failure:^(ErrorResponse *error) {
            *done = YES;
            
            LIErrorResponse *liSearchErRes = [error liErrorResponse];
            
            XCTAssertTrue(error != nil);
            XCTAssertTrue(liSearchErRes != nil);
            
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liSearchErRes.httpStatusCode != 0);
            
            Errors *errorGot = (Errors*)liSearchErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
            
            
            
        } ];
    });
    
}


/**
 *  Geo Search Test case wrong Lat Longititude
 */
- (void)testGeoSearchWithWrongLatLong
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@"1 global V" : [NSNumber numberWithDouble:28.535517] : [NSNumber numberWithDouble:77.391029] :^(GeoSearch *geoSearch ) {
            *done = YES;
            XCTAssertTrue(geoSearchService != nil);
            XCTAssertTrue(geoSearch!= nil);
            XCTAssertTrue([[geoSearch location] count]== 0);
            
     } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
    });
    
}


- (void)testGeoSearchWithInvalidSearchRadius
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@"1 global V" : [NSNumber numberWithDouble:42.682815] : [NSNumber numberWithDouble:-105.239771]: [NSNumber numberWithInt: -10]:(NSString*)@"KILOMETERS":[NSNumber numberWithInt: 10]: ^(GeoSearch *geoSearch ) {
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            LIErrorResponse *liSearchErRes = [error liErrorResponse];
            
            XCTAssertTrue(error != nil);
            
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liSearchErRes.httpStatusCode != 0);
            
            Errors *errorGot = (Errors*)liSearchErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
        } ];
        
    });
    
}


- (void)testGeoSearchWithInvalidSearchRadiusUnit
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@"1 global V" : [NSNumber numberWithDouble:42.682815] : [NSNumber numberWithDouble:-105.239771]: [NSNumber numberWithInt: 10]:(NSString*)@"@#GJ":[NSNumber numberWithInt: 10]: ^(GeoSearch *geoSearch ) {
            
            *done = YES;
            XCTFail();
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            LIErrorResponse *liSearchErRes = [error liErrorResponse];
            
            XCTAssertTrue(error != nil);
            
            XCTAssertTrue(error.rootCauseErrorMessage != nil);
            XCTAssertTrue(liSearchErRes.httpStatusCode != 0);
            
            Errors *errorGot = (Errors*)liSearchErRes.error.errors[0];
            XCTAssertTrue(errorGot.errorCode != nil );
            XCTAssertTrue(errorGot.errorDescription != nil );
            
        } ];
        
    });
    
}


- (void)testGeoSearchWithInvalidMaxCandidate
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoSearchService *geoSearchService = liSearch.getGeoSearchService;
        NSLog(@"Received geoSearchService service object %@" ,geoSearchService );
        [geoSearchService geoSearch:@"1 global V" : [NSNumber numberWithDouble:42.682815] : [NSNumber numberWithDouble:-105.239771]: [NSNumber numberWithInt: 10]:(NSString*)@"KILOMETERS":[NSNumber numberWithInt: -10]: ^(GeoSearch *geoSearch ) {
            
            *done = YES;
            *done = YES;
            XCTAssertTrue(geoSearchService != nil);
            XCTAssertTrue(geoSearch!= nil);
            XCTAssertTrue([[geoSearch location] count]== 0);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
        } ];
        
    });
    
}

@end
