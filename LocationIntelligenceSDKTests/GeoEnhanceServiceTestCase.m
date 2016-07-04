//
//  GeoEnhanceServiceTestCase.m
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

@interface GeoEnhanceServiceTestCase : XCTestCase

@end

@implementation GeoEnhanceServiceTestCase

LIServiceManager *serviceManager ;

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
    
    
        BaseAuthServiceInternal *baseAuthServiceGeoEnhance = [BaseAuthServiceInternal sharedBaseOauthObject:@"" :@""];
    serviceManager = [LIServiceManager sharedSingletonClass:baseAuthServiceGeoEnhance];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testGetAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getAddress:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : [NSNumber numberWithInt:1]:(NSString *)@"MILES":^(GeoEnhance *geoEnhanceAddress) {
            
            *done = YES;
            XCTAssertTrue(geoEnhanceAddress != nil);
            XCTAssertTrue([[geoEnhanceAddress location] count] != 0);
            Location *loc = [geoEnhanceAddress location][0];
            XCTAssertTrue(loc.geometry !=nil);
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}


- (void)testGetAddressWithoutSearchRadius
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getAddress:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : nil:nil: ^(GeoEnhance *geoEnhanceAddress) {
            
            *done = YES;
            XCTAssertTrue(geoEnhanceAddress != nil);
            XCTAssertTrue([[geoEnhanceAddress location] count] != 0);
            Location *loc = [geoEnhanceAddress location][0];
            XCTAssertTrue(loc.geometry !=nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
}

- (void)testGetAddressWithInvalidLatLong
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getAddress:[NSNumber numberWithDouble:1000] : [NSNumber numberWithDouble: 1000] : nil:nil: ^(GeoEnhance *geoEnhance) {
            
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

- (void)testGetAddressWithOutOfRangeSearchRadius
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getAddress:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572]: [NSNumber numberWithInt:5281]:nil: ^(GeoEnhance *geoEnhance) {
            
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

- (void)testGetWithInvalidSearchRadius
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getAddress:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572]: [NSNumber numberWithInt:-2]:nil: ^(GeoEnhance *geoEnhance) {
            
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


- (void)testGetPlace
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPlace:[NSNumber numberWithDouble:34.59667] : [NSNumber numberWithDouble: -86.96556] : [NSNumber numberWithInt: 1]: ^(GeoEnhance *geoEnhance) {
            
            *done = YES;
            XCTAssertTrue(geoEnhance != nil);
            
            Location *loc = [[Location alloc] init];
            loc = [geoEnhance location][0];
            
            PlaceByLocationResponse * place = (PlaceByLocationResponse*)[loc place];
            
            NeighbourhoodName *name = [place name][0]	;
            //name = [place name];
            
            //NSDictionary *value = [place objectForKey:@"level"];
            
            XCTAssertTrue(name != nil);
            XCTAssertTrue(place != nil);
            NSLog(@"Received geoSearchService service object %@" ,place );
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}



- (void)testGetPlaceWithoutLevelHint
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPlace:[NSNumber numberWithDouble:34.59667] : [NSNumber numberWithDouble: -86.96556] : nil: ^(GeoEnhance *geoEnhance) {
            
            *done = YES;
            XCTAssertTrue(geoEnhance != nil);
            
            Location *loc = [[Location alloc] init];
            loc = [geoEnhance location][0];
            
            PlaceByLocationResponse * place = (PlaceByLocationResponse*)loc.place;
            NeighbourhoodName *name = [[NeighbourhoodName alloc]init];
            name = [place name][0];
            
            XCTAssertTrue(name != nil);
            XCTAssertTrue(name.value != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testGetPlaceWithInvalidLatLong
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPlace:[NSNumber numberWithDouble:1000] : [NSNumber numberWithDouble: 1000] : nil: ^(GeoEnhance *geoEnhance) {
            
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


- (void)testGetPlaceWithInvalidLevelHint
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPlace:[NSNumber numberWithDouble:34.59667] : [NSNumber numberWithDouble: -86.96556] : [NSNumber numberWithInt: -2]: ^(GeoEnhance *geoEnhance) {
            
            *done = YES;
            XCTAssertTrue(geoEnhance != nil);
            XCTAssertTrue([[geoEnhance location] count]==0);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
            
            
        } ];
        
    });
    
}


- (void)testGetPoi
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] :
         (NSString*)@"1023": [NSNumber numberWithInt: 10]: [NSNumber numberWithInt: 10560]:(NSString*)@"FEET":(NSString*)@"PBData": (NSString*)@"N": ^(GeoEnhance *geoEnhance) {
             
             
             *done = YES;
             XCTAssertTrue(geoEnhance != nil);
             Location *loc = [[Location alloc] init];
             loc = [geoEnhance location][0];
             Poi * poi = (Poi*)loc.poi;
             
             XCTAssertTrue(poi.contactDetails.address.formattedAddress!= nil);
             
         } failure:^(ErrorResponse *error) {
             *done = YES;
             XCTFail();
             
         } ];
        
    });
    
    
}


- (void)testGetPoiWithoutOptionalParams
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] :
                              nil: nil: nil:nil:nil:nil: ^(GeoEnhance *geoEnhance) {
                                  
                                  
                                  *done = YES;
                                  XCTAssertTrue(geoEnhance != nil);
                                  Location *loc = [[Location alloc] init];
                                  loc = [geoEnhance location][0];
                                  Poi * poi = (Poi*)loc.poi;
                                  
                                  
                                  XCTAssertTrue(poi != nil);
                                  XCTAssertTrue(poi.categoryCode != NAN);
                                  XCTAssertTrue(poi.contactDetails.address.mainAddressLine != nil);
                                  
                              } failure:^(ErrorResponse *error) {
                                  *done = YES;
                                  XCTFail();
                                  
                              } ];
        
    });
    
    
}

- (void)testGetPoiWithInvalidLatLong
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:1000] : [NSNumber numberWithDouble: 1000] :
         (NSString*)@"1023": [NSNumber numberWithInt: 10]: [NSNumber numberWithInt: 2]:(NSString*)@"KILOMETERS":(NSString*)@"PBData": (NSString*)@"N": ^(GeoEnhance *geoEnhance) {
             
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

- (void)testGetPoiWithInvalidCategory
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] :
         (NSString*)@"-@#GJ": [NSNumber numberWithInt: 10]: [NSNumber numberWithInt: 2]:(NSString*)@"KILOMETERS":(NSString*)@"PBData": (NSString*)@"N": ^(GeoEnhance *geoEnhance) {
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


- (void)testGetPoiWithInvalidMaxCandidates
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] :
         (NSString*)@"1023": [NSNumber numberWithInt: -1]: [NSNumber numberWithInt: 2]:(NSString*)@"KILOMETERS" :(NSString*)@"PBData": (NSString*)@"N": ^(GeoEnhance *geoEnhance) {
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


- (void)testGetPoiWithInvalidSearchRadius
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] :
         (NSString*)@"1023": [NSNumber numberWithInt: 10]: [NSNumber numberWithInt: -2]:(NSString*)@"KILOMETERS":(NSString*)@"PBData": (NSString*)@"N": ^(GeoEnhance *geoEnhance) {
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


- (void)testGetPoiWithInvalidSearchRadiusUnit
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoSearchService service object %@" ,geoEnhanceService );
        [geoEnhanceService getPOI:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] :
         (NSString*)@"1023": [NSNumber numberWithInt: 10]: [NSNumber numberWithInt: 2]:(NSString*)@"@#GJ" :(NSString*)@"PBData": (NSString*)@"N": ^(GeoEnhance *geoEnhance) {
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

-   (void) testGetTimezoneWith
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoEnhance service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getTimezone:[NSNumber numberWithDouble: 1435123310816]:[NSNumber numberWithDouble:42.5309]:[NSNumber numberWithDouble: -73.6572]   : ^(Timezone *timezone) {
            
            *done = YES;
            XCTAssertTrue(timezone != nil);
            XCTAssertTrue(timezone.dstOffset != NAN);
            XCTAssertTrue(timezone.timestamp != NAN);
            XCTAssertTrue(timezone.timezoneName != nil);
            XCTAssertTrue(timezone.utcOffset!= NAN);
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

-   (void) testGetTimezoneWithInvalidParam
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeoEnhanceService  *geoEnhanceService = serviceManager.getGeoEnhanceService;
        NSLog(@"Received geoEnhance service object %@" ,geoEnhanceService );
        
        [geoEnhanceService getTimezone:[NSNumber numberWithDouble:34.59667] : [NSNumber numberWithDouble: -86.96556] : nil: ^(Timezone *timezone) {
            
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

@end
