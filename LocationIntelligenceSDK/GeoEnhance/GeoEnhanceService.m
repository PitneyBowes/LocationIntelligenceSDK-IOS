//
//  GeoEnhanceService.m
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

#import "GeoEnhanceService.h"
#import "GeoEnhance.h"
#import "Timezone.h"

@implementation GeoEnhanceService

NSString *geoEnhanceURL = @"/geoenhance/v1";



/**
 *  <#Description#>
 *
 *  @param latitude         <#latitude description#>
 *  @param longitude        <#longitude description#>
 *  @param searchRadius     <#searchRadius description#>
 *  @param searchRadiusUnit <#searchRadiusUnit description#>
 *  @param success          <#success description#>
 *  @param failure          <#failure description#>
 */
- (void) getAddress:(NSNumber *)latitude :
                    (NSNumber *)longitude :
                    (NSNumber *)searchRadius :
                    (NSString *)searchRadiusUnit :
                    (void (^)(GeoEnhance *geoEnhance))success failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Enhance getAddress APIs");
        
        NSString *geoEnhanceWEBURL;
        
        geoEnhanceWEBURL =[geoEnhanceURL stringByAppendingString:@"/address/bylocation?"];
        geoEnhanceWEBURL =[geoEnhanceWEBURL stringByAppendingString:@"latitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",latitude];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&longitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",longitude];
    
        
        if(searchRadius != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&searchRadius="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",searchRadius];
        }
        
        if(searchRadiusUnit != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&searchRadiusUnit="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",searchRadiusUnit];
        }
        
        [self getGeoEnhanceResponse:geoEnhanceWEBURL :@"getaddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoEnhance getAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


- (void) getPlace: (NSNumber *)latitude :
                    (NSNumber *)longitude :
                    (NSNumber *)levelHint :
                    (void (^)(GeoEnhance *geoEnhance))success
                    failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Enhance getPlace APIs");
        
        NSString *geoEnhanceWEBURL;

        
        geoEnhanceWEBURL =[geoEnhanceURL stringByAppendingString:@"/place/bylocation?"];
        geoEnhanceWEBURL =[geoEnhanceWEBURL stringByAppendingString:@"latitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",latitude];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&longitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",longitude];
        
        
        if(levelHint != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&levelHint="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",levelHint];
        }
        
        [self getGeoEnhanceResponse:geoEnhanceWEBURL :@"getPlace" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoEnhance getPlace and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

}



-(void) getPOI: (NSNumber *)latitude :
                (NSNumber *)longitude :
                (NSString *)category :(NSNumber *)maxCandidates :
                (NSNumber *)searchRadius :
                (NSString *)searchRadiusUnit :
                (NSString *)searchDataset :
                (NSString *)searchByPriority :
                (void (^)(GeoEnhance *geoEnhance))success failure : (void (^)( ErrorResponse *error))failure{


    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Enhance getPOI APIs");
        NSString *geoEnhanceWEBURL;

        
        geoEnhanceWEBURL =[geoEnhanceURL stringByAppendingString:@"/poi/bylocation?"];
        geoEnhanceWEBURL =[geoEnhanceWEBURL stringByAppendingString:@"latitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",latitude];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&longitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",longitude];
        
        
        if(category != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&category="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",category];
        }
        
        if(maxCandidates != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&maxCandidates="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",maxCandidates];
        }
        
        if(searchRadius != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&searchRadius="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",searchRadius];
        }
        
        if(searchRadiusUnit != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&searchRadiusUnit="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",searchRadiusUnit];
        }
        
        if(searchDataset != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&searchDataset="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",searchDataset];
        }
        
        if(searchByPriority != nil){
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&searchByPriority="];
            geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",searchByPriority];
        }
        
        [self getGeoEnhanceResponse:geoEnhanceWEBURL :@"getPOI" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoEnhance getPlace and the error is %@",error.rootCauseErrorMessage);
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
- (void) getGeoEnhanceResponse:(NSString *)url :
                                (NSString *)methodName :
                                (void (^)(GeoEnhance *geoEnhance))success failure : (void (^)( ErrorResponse *error))failure{
    
   
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        
        GeoEnhance *geoEnahnce = [GeoEnhance modelObjectWithDictionary:id];
        success(geoEnahnce);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
}



/**
 *  <#Description#>
 *
 *  @param timestamp <#timestamp description#>
 *  @param latitude  <#latitude description#>
 *  @param longitude <#longitude description#>
 *  @param success   <#success description#>
 *  @param failure   <#failure description#>
 */
- (void) getTimezone:(NSNumber *) timestamp : (NSNumber *)latitude : (NSNumber *)longitude :
(void (^)(Timezone *timezoneResponse))success failure :
(void (^)( ErrorResponse *error))failure
{
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Enhance getPlace APIs");
        
        NSString *geoEnhanceWEBURL;
        
        
        geoEnhanceWEBURL =[geoEnhanceURL stringByAppendingString:@"/timezone/bylocation?"];
        geoEnhanceWEBURL =[geoEnhanceWEBURL stringByAppendingString:@"timestamp="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",timestamp];
        geoEnhanceWEBURL =[geoEnhanceWEBURL stringByAppendingString:@"&latitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",latitude];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingString:@"&longitude="];
        geoEnhanceWEBURL = [geoEnhanceWEBURL stringByAppendingFormat:@"%@",longitude];
        
        [self getGeoEnhanceTimezoneResponse:geoEnhanceWEBURL :@"getTimeZone" :success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoEnhance getPlace and the error is %@",error.rootCauseErrorMessage);
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
- (void) getGeoEnhanceTimezoneResponse:(NSString *)url :
(NSString *)methodName :
(void (^)(Timezone *timezoneResponse))success failure : (void (^)( ErrorResponse *error))failure{
    
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        
        Timezone *timezoneResponse = [Timezone modelObjectWithDictionary:id];
        success(timezoneResponse);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
}


@end
