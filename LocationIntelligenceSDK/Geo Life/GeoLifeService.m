//
//  GeoLifeService.m
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

#import "GeoLifeService.h"

@implementation GeoLifeService

NSString *geoLifeURL = @"/geolife/v1/demographics";



- (void) getDemographicsByAddress: (NSString *)address :
                                    (NSString *)country :
                                    (NSString *)profile :
                                    (NSString *)filter :
                                    (void (^)(GeoLifeResponse *geoLife))success
                                        failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Life getAddress APIs");
        
        NSString *geoLifeWEBURL;
        
        geoLifeWEBURL =[geoLifeURL stringByAppendingString:@"/byaddress?"];
        geoLifeWEBURL =[geoLifeWEBURL stringByAppendingString:@"address="];
        geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",address];

        
        if(country != nil){
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&country="];
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",country];
        }
        
        
        if(profile != nil){
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&profile="];
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",profile];
        }
        
        if(filter != nil){
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&filter="];
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",filter];
        }
        
        [self getGeoLifeResponse:geoLifeWEBURL :@"getDemographicsByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoLife getAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

    
}



- (void) getDemographicsByLocation: (NSNumber *)latitude :
                                     (NSNumber *)longitude :
                                     (NSString *)profile :(NSString *)filter :
                                     (void (^)(GeoLifeResponse *geoLife))success
                                          failure : (void (^)( ErrorResponse *error))failure {
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Life getAddress APIs");
        
        NSString *geoLifeWEBURL;

        geoLifeWEBURL =[geoLifeURL stringByAppendingString:@"/bylocation?"];
        
        geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&latitude="];
        geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",latitude];
        
        geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&longitude="];
        geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",longitude];
   
        if(profile != nil){
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&profile="];
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",profile];
        }
        
        if(filter != nil){
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingString:@"&filter="];
            geoLifeWEBURL = [geoLifeWEBURL stringByAppendingFormat:@"%@",filter];
        }
        
        [self getGeoLifeResponse:geoLifeWEBURL :@"getDemographicsByLocation" :success failure:failure];
        
        
        
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
                            (void (^)(GeoLifeResponse *geoLofe))success failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        GeoLifeResponse *geoLife = [GeoLifeResponse modelObjectWithDictionary:id];
        success(geoLife);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
    
    
    
}

@end
