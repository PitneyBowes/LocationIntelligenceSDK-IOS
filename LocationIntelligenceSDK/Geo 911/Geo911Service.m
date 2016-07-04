//
//  Geo911Service.m
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

#import "Geo911Service.h"
#import "PsapResponse.h"

@implementation Geo911Service

NSString *geo911URL = @"/geo911/v1/psap";


- (void) getPSAPByAddress:(NSString *)address :
                            (void (^)(PsapResponse *geo911))success
                                failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo 911 getPSAPByAddress APIs");
        
        
        NSString *geo911WEBURL;
        
        geo911WEBURL =[geo911URL stringByAppendingString:@"/byaddress?"];
        geo911WEBURL =[geo911WEBURL stringByAppendingString:@"address="];
        geo911WEBURL = [geo911WEBURL stringByAppendingFormat:@"%@",address];

        
        [self getGeo911Response:geo911WEBURL :@"getPSAPByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in Geo911 getPSAPByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];

    
}





- (void) getPSAPByLocation: (NSNumber *)latitude :
                            (NSNumber *)longitude :
                            (void (^)(PsapResponse *psapResponse))success
                                failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo 911 getPSAPByAddress APIs");
        
        NSString *geo911WEBURL;

        
        geo911WEBURL =[geo911URL stringByAppendingString:@"/bylocation?"];
        
        geo911WEBURL = [geo911WEBURL stringByAppendingString:@"latitude="];
        geo911WEBURL = [geo911WEBURL stringByAppendingFormat:@"%@",latitude];
        
        geo911WEBURL = [geo911WEBURL stringByAppendingString:@"&longitude="];
        geo911WEBURL = [geo911WEBURL stringByAppendingFormat:@"%@",longitude];
        
        [self getGeo911Response:geo911WEBURL :@"getPSAPByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in Geo911 getPSAPByLocation and the error is %@",error.rootCauseErrorMessage);
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
- (void) getGeo911Response:(NSString *)url :
                            (NSString *)methodName :
                            (void (^)(PsapResponse *psapResponse))success failure : (void (^)( ErrorResponse *error))failure{
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService :urlString: self :^(id id) {
        
        PsapResponse *psapResponse = [PsapResponse modelObjectWithDictionary:id];
        success(psapResponse);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
}


@end
