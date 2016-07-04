//
//  SegmentationServiceTestCase.m
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

@interface SegmentationTestCase : XCTestCase

@end

@implementation SegmentationTestCase

LIServiceManager *lbsSegmentation ;
BaseAuthService *baseOAuthServiceSegmentation;

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
    BaseAuthServiceInternal *baseAuthService = [BaseAuthServiceInternal sharedBaseOauthObject:@"" :@""];
    //-------//
  
    
    lbsSegmentation = [LIServiceManager sharedSingletonClass:baseAuthService];
    
    
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testgetSegmentationByLocation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        SegmentationService  *segmentationService = lbsSegmentation.getSegmentationService;
        NSLog(@"Received executeSegmentationByAddress service object %@" ,segmentationService );
        
       
        [segmentationService getSegmentationByLocation:[NSNumber numberWithDouble:42.5309] : [NSNumber numberWithDouble: -73.6572] : ^(Segmentation *segmentation) {
            
            *done = YES;
            XCTAssertTrue(segmentation != nil);
            
            XCTAssertTrue([segmentation themes] != nil);
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
    
}





- (void)testgetDemographicsByAddress
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        SegmentationService  *segmentationService = lbsSegmentation.getSegmentationService;
        NSLog(@"Received executeSegmentationByAddress service object %@" ,segmentationService );
        
        
        [segmentationService getSegmentationByAddress:@"1 Global View, Troy, NY" : @"USA": ^(Segmentation *segmentation) {
            
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
