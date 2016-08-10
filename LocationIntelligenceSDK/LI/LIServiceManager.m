//
//  LIServiceManager.m
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


#import "LIServiceManager.h"

@implementation LIServiceManager

static LIServiceManager *singletonObject = nil;



+ (id) sharedSingletonClass : (NSString *) consumerKey : (NSString *) consumerSecret
{
    if (! singletonObject) {
        
        NSLog(@"It seems LIServiceManager object is not yet created, going for new one");
        
        singletonObject = [[LIServiceManager alloc] init];
        
        BaseAuthService *baseOauthObject = [BaseAuthService sharedBaseOauthObject:consumerKey :consumerSecret];
        
        [OAuthFactory sharedOAuthServiceInstance:baseOauthObject];
    }
       
    NSLog(@"LIServiceManager Instance is being already created ");

    
    return singletonObject;
}


+ (id) sharedSingletonClass : (BaseAuthService*) baseOAuthService;
{
    if (! singletonObject) {
        
        NSLog(@"It seems LIServiceManager object is not yet created, going for new one");
        
        singletonObject = [[LIServiceManager alloc] init];
        
        [OAuthFactory sharedOAuthServiceInstance:baseOAuthService];
    }
    
   
    NSLog(@"LIServiceManager Instance is being already created ");
    
    
    return singletonObject;
}


+ (id) sharedSingletonClassByAuthToken : (NSString*) authToken;
{
    if (! singletonObject) {
        
        NSLog(@"It seems LIServiceManager object is not yet created, going for new one");
        
        singletonObject = [[LIServiceManager alloc] init];
        
        
        BaseAuthService *baseOauthObject = [BaseAuthService sharedBaseOauthObject:authToken];
        
        [OAuthFactory sharedOAuthServiceInstance:baseOauthObject];
        
    }
    
    
    NSLog(@"LIServiceManager Instance is being already created ");
    
    
    return singletonObject;
}



- (id)init : (NSString *) consumerKey : (NSString *) consumerSecret
{
    if (! singletonObject) {
        
        singletonObject = [super init];
        
        
        NSLog(@"%s", __PRETTY_FUNCTION__);
    }
    
    return singletonObject;
}

-(BaseAuthService *)getBaseOAuthService{
    
    BaseAuthService *baseOauthService;
    baseOauthService = [[BaseAuthService alloc] init];
    return baseOauthService;
    
}


-(GeoSearchService *)getGeoSearchService{
    
    GeoSearchService *geoSearchService;
    geoSearchService = [[GeoSearchService alloc] init];
    return geoSearchService;
    
}



-(GeoEnhanceService *) getGeoEnhanceService{
    
    GeoEnhanceService *geoEnhanceService;
    geoEnhanceService = [[GeoEnhanceService alloc] init];
    return geoEnhanceService;
}


-(GeoLifeService *) getGeoLifeService{
    
    GeoLifeService *geoLifeService;
    geoLifeService = [[GeoLifeService alloc] init];
    return geoLifeService;
}


-(Geo911Service *) getGeo911Service{
    
    Geo911Service *geo911Service;
    geo911Service = [[Geo911Service alloc] init];
    return geo911Service;
}



-(void) invalidateLIServiceManagerInstance{
    
    if(singletonObject){
        singletonObject = nil;
        NSLog(@"LIServiceManagerInstance has been invalidated");
    }
    
}

-(GeoTaxService *) getGeoTaxService{
    
    GeoTaxService *geoTaxService;
    geoTaxService = [[GeoTaxService alloc] init];
    return geoTaxService;
}

-(GeocodeService *) getGeocodeService{
    
    GeocodeService *geoCodeService;
    geoCodeService = [[GeocodeService alloc] init];
    return geoCodeService;
}




@end
