//
//  GeoSearchService.m
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

#import "GeoSearchService.h"
#include "GeoSearch.h"
#import "Location.h"
#import "UrlMaker.h"
#include "OAuthService.h"


@implementation GeoSearchService


NSString *geoSearchURL = @"/geosearch/v1/locations?";



/**
 *  Geo Search with Manadatory Parameters
 *
 *  @param searchText      <#searchText description#>
 *  @param originLatitude  <#originLatitude description#>
 *  @param originLongitude <#originLongitude description#>
 *  @param success         <#success description#>
 *  @param failure         <#failure description#>
 */

- (void)geoSearch: (NSString*) searchText :
                    (NSNumber*) originLatitude :
                    (NSNumber*) originLongitude :
                    (void (^)(GeoSearch *GeoSearch))success
                        failure:(void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        NSLog(@"Authentication is sucessfull, It's time to call Geo Search APIs");
        [self geoSearchInternal:searchText :nil:originLatitude :originLongitude :nil:nil:nil:success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        //Failure case
        failure(error);
    }];
    
}



/**
 *  GeaSearch with Optional parameters
 *
 *  @param searchText       <#searchText description#>
 *  @param originLatitude   <#originLatitude description#>
 *  @param originLongitude  <#originLongitude description#>
 *  @param searchRadius     <#searchRadius description#>
 *  @param searchRadiusUnit <#searchRadiusUnit description#>
 *  @param maxCandidate     <#maxCandidate description#>
 *  @param success          <#success description#>
 *  @param failure          <#failure description#>
 */
- (void) geoSearch: (NSString*) searchText :
                    (NSNumber*) originLatitude :
                    (NSNumber*) originLongitude :
                    (NSNumber*) searchRadius :
                    (NSString*) searchRadiusUnit :
                    (NSNumber*) maxCandidate :
                    (void (^)(GeoSearch *geoSearch))success
                        failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        NSLog(@"Authentication is sucessfull, It's time to call Geo Search APIs");
        
        [self geoSearchInternal:searchText :nil:originLatitude :originLongitude :searchRadius:searchRadiusUnit:maxCandidate:success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        
        NSLog(@"It failure in geoSearch and the error is %@",error.rootCauseErrorMessage);

        failure(error);
        
    }];
    
    
    
}


- (void) geoSearch: (NSString*) searchText :
(NSString*) country :
(void (^)(GeoSearch *geoSearch))success
          failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        NSLog(@"Authentication is sucessfull, It's time to call Geo Search APIs");
        
        [self geoSearchInternal:searchText:country:nil :nil :nil:nil:nil:success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        
        NSLog(@"It failure in geoSearch and the error is %@",error.rootCauseErrorMessage);
        
        failure(error);
        
    }];
    
    
    
}


- (void) geoSearch: (NSString*) searchText :
(NSString*) country :
(NSNumber*) originLatitude :
(NSNumber*) originLongitude :
(void (^)(GeoSearch *geoSearch))success
          failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        NSLog(@"Authentication is sucessfull, It's time to call Geo Search APIs");
        
        [self geoSearchInternal:searchText :country:originLatitude :originLongitude :nil:nil:nil:success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        
        NSLog(@"It failure in geoSearch and the error is %@",error.rootCauseErrorMessage);
        
        failure(error);
        
    }];
    
    
    
}



- (void) geoSearch: (NSString*) searchText :
(NSString*) country :
(NSNumber*) originLatitude :
(NSNumber*) originLongitude :
(NSNumber*) searchRadius :
(NSString*) searchRadiusUnit :
(NSNumber*) maxCandidate :
(void (^)(GeoSearch *geoSearch))success
          failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        NSLog(@"Authentication is sucessfull, It's time to call Geo Search APIs");
        
        [self geoSearchInternal:searchText :country:originLatitude :originLongitude :searchRadius:searchRadiusUnit:maxCandidate:success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        
        NSLog(@"It failure in geoSearch and the error is %@",error.rootCauseErrorMessage);
        
        failure(error);
        
    }];
    
    
    
}

- (void) geoSearch: (NSString*) searchText :
(NSString*) country :
(NSNumber*) searchRadius :
(NSString*) searchRadiusUnit :
(NSNumber*) maxCandidate :
(void (^)(GeoSearch *geoSearch))success failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        NSLog(@"Authentication is sucessfull, It's time to call Geo Search APIs");
        
        [self geoSearchInternal:searchText :country:nil :nil :searchRadius:searchRadiusUnit:maxCandidate:success failure:failure];
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        
        NSLog(@"It failure in geoSearch and the error is %@",error.rootCauseErrorMessage);
        
        failure(error);
        
    }];
    
    
    
}


-  (void)geoSearchInternal: (NSString*) searchText :
                            (NSString*) country :
                            (NSNumber*) originLatitude :
                            (NSNumber*) originLongitude :
                            (NSNumber*) searchRadius :
                            (NSString*) searchRadiusUnit :
                            (NSNumber*) maxCandidate :
                            (void (^)(GeoSearch *geoSearch))success
                                failure:(void (^)( ErrorResponse *error))failure{
    
    NSString *geoSearchWEBURL;
    
    
    if(searchText != nil){
    geoSearchWEBURL = [geoSearchURL stringByAppendingString:@"searchText="];
    geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:searchText];
       }
    
      if(country != nil){
          geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:@"&country="];
          geoSearchWEBURL = [geoSearchWEBURL stringByAppendingFormat:@"%@",country];
        
      }
    
     if(originLongitude != nil){
    geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:@"&longitude="];
    geoSearchWEBURL = [geoSearchWEBURL stringByAppendingFormat:@"%@",originLongitude];
     }
    
     if(originLatitude != nil){
    geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:@"&latitude="];
    geoSearchWEBURL = [geoSearchWEBURL stringByAppendingFormat:@"%@",originLatitude];
     }
    
    
    if(searchRadius != nil){
        geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:@"&searchRadius="];
        geoSearchWEBURL = [geoSearchWEBURL stringByAppendingFormat:@"%@",searchRadius];
    }
    
    if(searchRadiusUnit != nil){
        
        geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:@"&searchRadiusUnit="];
        geoSearchWEBURL = [geoSearchWEBURL stringByAppendingFormat:@"%@",searchRadiusUnit];
    }
    
    if(maxCandidate != nil){
        
        geoSearchWEBURL = [geoSearchWEBURL stringByAppendingString:@"&maxCandidate="];
        geoSearchWEBURL = [geoSearchWEBURL stringByAppendingFormat:@"%@",maxCandidate];
        
    }
    NSLog(@"****value of URL when Finak Appended %@",geoSearchWEBURL);
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:geoSearchWEBURL];
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService:urlString: self :^(id id) {
        
        GeoSearch *geoSearch = [GeoSearch modelObjectWithDictionary:id];
        success(geoSearch);
        
    } failure:^(ErrorResponse *error) {
        
        failure(error);
        
    }];
                   
    
}


@end
