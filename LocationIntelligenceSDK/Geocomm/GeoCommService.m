//
//  GeoCommService.m
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

#import "GeoCommService.h"
#import "RateCenterResponse.h"

@implementation GeoCommService

NSString *geoCommURL = @"geocomm/v1";

/**
 *  <#Description#>
 *
 *  @param address <#address description#>
 *  @param success <#success description#>
 *  @param failure <#failure description#>
 */

- (void) getRateCenterByAddress:(NSString *)address :
(void (^)(RateCenterResponse *rateCenterResponse))success
                    failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoComm getGeoCommByAddress APIs");
        
        
        
        NSString *geoCommWEBURL;
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/byaddress?"];
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"address="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",address];
        
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoComm getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
    
}

/**
 *  <#Description#>
 *
 *  @param address <#address description#>
 *  @param country <#country description#>
 *  @param success <#success description#>
 *  @param failure <#failure description#>
 */

- (void) getRateCenterByAddressAndCountry:(NSString *)address
                               : (NSString *)country
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoComm getGeoCommByAddress APIs");
        
        
        NSString *geoCommWEBURL;
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/byaddress?"];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"address="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",address];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&country="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",country];
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoComm getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    

    
}

/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param requestAreaCodeInfo <#requestAreaCodeInfo description#>
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressAndRequestInfo:(NSString *)address
                               : (BOOL *) areaCodeInfo
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure
{
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoComm getGeoCommByAddress APIs");
        
        
        NSString *geoCommWEBURL;
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/byaddress?"];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"address="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",address];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&areaCodeInfo="];
        
        if (areaCodeInfo) {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"true"];
        }
        else
        {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"false"];
        }
        
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoComm getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

    
    
    
}

/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param requestAreaCodeInfo <#requestAreaCodeInfo description#>
 *  @param level               <#level description#>
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressAndLevel:(NSString *)address
                               : (BOOL *) areaCodeInfo
                               : (NSString *) level
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoComm getGeoCommByAddress APIs");
        
        
        NSString *geoCommWEBURL;
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/byaddress?"];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"address="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",address];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&areaCodeInfo="];
        
        if (areaCodeInfo) {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"true"];
        }
        else
        {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"false"];
        }
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&level="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",level];

        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoComm getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
   
}

/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param country             <#country description#>
 *  @param requestAreaCodeInfo <#requestAreaCodeInfo description#>
 *  @param level               <#level description#>
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressWithAllOptions:(NSString *)address
                               :(NSString *)country
                               : (BOOL *)areaCodeInfo
                               :(NSString *)level
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoComm getGeoCommByAddress APIs");
        
        
        NSString *geoCommWEBURL;
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/byaddress?"];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"address="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",address];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&country="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",country];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&areaCodeInfo="];
        
        if (areaCodeInfo) {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"true"];
        }
        else
        {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"false"];
        }
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&level="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",level];
        
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoComm getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

}

/**
 *  <#Description#>
 *
 *  @param address             <#address description#>
 *  @param country             <#country description#>
 *  @param requestAreaCodeInfo <#requestAreaCodeInfo description#>
 *  @param success             <#success description#>
 *  @param failure             <#failure description#>
 */
- (void) getRateCenterByAddressAndCountry:(NSString *)address
                               :(NSString *)country
                               : (BOOL *)areaCodeInfo
                               :(void (^)(RateCenterResponse *rateCenterResponse))success
                       failure : (void (^)( ErrorResponse *error))failure{
    
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoComm getGeoCommByAddress APIs");
        
        
        NSString *geoCommWEBURL;
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/byaddress?"];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"address="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",address];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&country="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",country];
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&areaCodeInfo="];
        
        if (areaCodeInfo) {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"true"];
        }
        else
        {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"false"];
        }
        
      
        
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoComm getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

}


/**
 *  <#Description#>
 *
 *  @param latitude                <#latitude description#>
 *  @param longitude               <#longitude description#>
 *  @param isAreaCodeInfoRequested <#isAreaCodeInfoRequested description#>
 *  @param success                 <#success description#>
 *  @param failure                 <#failure description#>
 */
- (void) getRateCenterByLocationWithAreaCodeInfo: (NSNumber *)latitude
                                            : (NSNumber *)longitude
                                            : (BOOL *) areaCodeInfo
                                            :(void (^)(RateCenterResponse *rateCenterResponse))success
                     failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo 911 getPSAPByAddress APIs");
        
        NSString *geoCommWEBURL;
        
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/bylocation?"];
        
        geoCommWEBURL = [geoCommWEBURL stringByAppendingString:@"latitude="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",latitude];
        
        geoCommWEBURL = [geoCommWEBURL stringByAppendingString:@"&longitude="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",longitude];
        
        
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&areaCodeInfo="];
        
        if (areaCodeInfo) {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"true"];
        }
        else
        {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"false"];
        }
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in Geo911 getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

/**
 *  <#Description#>
 *
 *  @param latitude                <#latitude description#>
 *  @param longitude               <#longitude description#>
 *  @param isAreaCodeInfoRequested <#isAreaCodeInfoRequested description#>
 *  @param level                   <#level description#>
 *  @param success                 <#success description#>
 *  @param failure                 <#failure description#>
 */
- (void) getRateCenterByLocationWithAllOptions:(NSNumber *)latitude
                                            : (NSNumber *)longitude
                                            : (BOOL *) areaCodeInfo
                                            : (NSString *) level
                             :(void (^)(RateCenterResponse *rateCenterResponse))success
                     failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo 911 getPSAPByAddress APIs");
        
        NSString *geoCommWEBURL;
        
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/bylocation?"];
        
        geoCommWEBURL = [geoCommWEBURL stringByAppendingString:@"latitude="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",latitude];
        
        geoCommWEBURL = [geoCommWEBURL stringByAppendingString:@"&longitude="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",longitude];
        
        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&areaCodeInfo="];
        
        if (areaCodeInfo) {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"true"];
        }
        else
        {
            geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",@"false"];
        }

        
        geoCommWEBURL =[geoCommWEBURL stringByAppendingString:@"&level="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",level];
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in Geo911 getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

/**
 *  <#Description#>
 *
 *  @param latitude  <#latitude description#>
 *  @param longitude <#longitude description#>
 *  @param success   <#success description#>
 *  @param failure   <#failure description#>
 */
- (void) getRateCenterByLocation: (NSNumber *)latitude :
(NSNumber *)longitude :
(void (^)(RateCenterResponse *rateCenterResponse))success
                  failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo 911 getPSAPByAddress APIs");
        
        NSString *geoCommWEBURL;
        
        
        geoCommWEBURL =[geoCommURL stringByAppendingString:@"/ratecenter/bylocation?"];
        
        geoCommWEBURL = [geoCommWEBURL stringByAppendingString:@"latitude="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",latitude];
        
        geoCommWEBURL = [geoCommWEBURL stringByAppendingString:@"&longitude="];
        geoCommWEBURL = [geoCommWEBURL stringByAppendingFormat:@"%@",longitude];
        
        [self getRateCenterResponse:geoCommWEBURL :@"getGeoCommByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in Geo911 getGeoCommByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


/**
 *  <#Description#>
 *
 *  @param url        <#url description#>
 *  @param methodName <#methodName description#>
 *  @param success    <#success description#>
 *  @param failure    <#failure description#>
 */
- (void) getRateCenterResponse:(NSString *)url :
(NSString *)methodName :
(void (^)(RateCenterResponse *rateCenterResponse))success failure : (void (^)( ErrorResponse *error))failure{
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService :urlString: self :^(id id) {
        
        RateCenterResponse *rateCenterResponse = [RateCenterResponse modelObjectWithDictionary:id];
        success(rateCenterResponse);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
}



@end
