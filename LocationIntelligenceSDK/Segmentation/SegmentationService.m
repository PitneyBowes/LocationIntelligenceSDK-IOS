//
//  SegmentationService.m
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

#import "SegmentationService.h"

@implementation SegmentationService

NSString *segmentationURL = @"/geolife/v1/segmentation";



-(void) getSegmentationByAddress: (NSString *)address :
(NSString *)country :
(void (^)(Segmentation *geoLife))success
failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Life getAddress APIs");
        
        NSString *geoLifeWEBURL;
        
        geoLifeWEBURL =[segmentationURL stringByAppendingString:@"/byaddress?"];
        geoLifeWEBURL =[geoLifeWEBURL stringByAppendingString:@"address="];
        geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",address];
        
        
        if(country != nil){
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&country="];
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",country];
        }
        
        
      
        
        [self getGeoLifeResponse:geoLifeWEBURL :@"getSegmentationByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoLife getAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
    
}



- (void) getSegmentationByLocation: (NSNumber *)latitude :
(NSNumber *)longitude :
(void (^)(Segmentation *geoLife))success
                          failure : (void (^)( ErrorResponse *error))failure {
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Life getAddress APIs");
        
        NSString *segmentationWEBURL;
        
        segmentationWEBURL =[segmentationURL stringByAppendingString:@"/bylocation?"];
        
        segmentationWEBURL = [segmentationWEBURL stringByAppendingString:@"&latitude="];
        segmentationWEBURL = [segmentationWEBURL stringByAppendingFormat:@"%@",latitude];
        
        segmentationWEBURL = [segmentationWEBURL stringByAppendingString:@"&longitude="];
        segmentationWEBURL = [segmentationWEBURL stringByAppendingFormat:@"%@",longitude];
        
        [self getGeoLifeResponse:segmentationWEBURL :@"getSegmentationByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoLife getDemographicsByLocation and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
    
    
}




/**
 *  <#Description#>
 *
 *  @param url
 *  @param methodName <#methodName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getGeoLifeResponse:(NSString *)url :
(NSString *)methodName :
(void (^)(Segmentation *geoLofe))success failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        Segmentation *segmentation = [Segmentation modelObjectWithDictionary:id];
        success(segmentation);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
    
    
    
}

@end
