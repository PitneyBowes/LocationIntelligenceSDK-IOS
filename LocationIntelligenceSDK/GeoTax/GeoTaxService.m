//
//  GeoTaxService.m
//  PBSmartEarthSuiteLib
 //
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeoTaxService.h"

@implementation GeoTaxService

NSString *geoTaxURL=@"/geotax/v1/";
NSString * const TAX_RATE=@"taxrate/";
NSString * const TAX=@"tax/";

- (void) getGeoTaxRateByLocation:(NSString *)taxRateTypeId :(NSNumber *)latitude :
    (NSNumber *)longitude :
    (void (^)(GeoTax *geoTax))success
     failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoTax Rate APIs getGeoTaxRateByLocation");
        
        NSString *geoTaxWEBURL=geoTaxURL;
        
         geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:TAX_RATE];
         geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:taxRateTypeId];
        
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:@"/bylocation?"];
        
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingString:@"latitude="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",latitude];
        
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingString:@"&longitude="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",longitude];
        
        [self getGeoTaxResponse:geoTaxWEBURL :@"getGeoTaxRateByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"Failure in GeoTax getGeoTaxRateByLocation and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}

- (void) getGeoTaxRateByAddress:(NSString *)taxRateTypeId :(NSString *)address :
(void (^)(GeoTax *geo911))success
                 failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Tax getGeoTaxRateByAddress APIs");
        
        NSString *geoTaxWEBURL=geoTaxURL;
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:TAX_RATE];
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:taxRateTypeId];
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:@"/byaddress?"];
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:@"address="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",address];
        
        
        [self getGeoTaxResponse:geoTaxWEBURL :@"getGeoTaxRateByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoTax getGeoTaxRateByAddress and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
    
}


- (void) getGeoTaxByLocation: (NSString *)taxRateTypeId : (NSNumber *)latitude :
(NSNumber *)longitude :(NSNumber *)purchaseAmount :
(void (^)(GeoTax *geoTax))success
                        failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call GeoTax Rate APIs getGeoTaxByLocation");
        NSString *geoTaxWEBURL=geoTaxURL;
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:TAX];
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:taxRateTypeId];
        
        
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:@"/bylocation?"];
        
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingString:@"latitude="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",latitude];
        
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingString:@"&longitude="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",longitude];
        
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingString:@"&purchaseAmount="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",purchaseAmount];
        
        [self getGeoTaxResponse:geoTaxWEBURL :@"getGeoTaxByLocation" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoTax getGeoTaxByLocation and the error is %@",error.rootCauseErrorMessage);
        failure(error);
        
    }];
    
}


- (void) getGeoTaxByAddress:(NSString *)taxRateTypeId :(NSString *)address :(NSNumber *)purchaseAmount :
(void (^)(GeoTax *geo911))success
                   failure : (void (^)( ErrorResponse *error))failure{
    
    
    [self getAuthenticationToken:^(AuthToken *authToken) {
        //Sucess case
        
        NSLog(@"Authentication is sucessfull, Its time to call Geo Tax getGeoTaxByAddress APIs");
        
        NSString *geoTaxWEBURL=geoTaxURL;
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:TAX];
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:taxRateTypeId];
        
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:@"/byaddress?"];
        
        geoTaxWEBURL =[geoTaxWEBURL stringByAppendingString:@"address="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",address];
        
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingString:@"&purchaseAmount="];
        geoTaxWEBURL = [geoTaxWEBURL stringByAppendingFormat:@"%@",purchaseAmount];
        
        [self getGeoTaxResponse:geoTaxWEBURL :@"getGeoTaxByAddress" :success failure:failure];
        
        
        
    } failure:^(ErrorResponse *error) {
        
        //Failure case
        NSLog(@"It failure in GeoTax getGeoTaxByAddress and the error is %@",error.rootCauseErrorMessage);
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
- (void) getGeoTaxResponse:(NSString *)url :
(NSString *)methodName :
(void (^)(GeoTax *geoTax))success failure : (void (^)( ErrorResponse *error))failure{
    
    UrlMaker *urlMake = [UrlMaker getInstance];
    NSString * urlString = [urlMake getAbsoluteUrl:url];
    
    NetworkService *ns = [[NetworkService alloc] init];
    
    
    [ ns GetRestService: urlString : self : ^(id id) {
        
        GeoTax *geoTax = [GeoTax modelObjectWithDictionary:id];
        success(geoTax);
        
    } failure:^(ErrorResponse *error) {
        failure(error);
        
    }];
    
    
}


@end
