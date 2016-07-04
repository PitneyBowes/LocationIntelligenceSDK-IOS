//
//  OAuthFactory.m
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


#import "OAuthFactory.h"


@implementation OAuthFactory

static OAuthFactory *singletonObject = nil;
static BaseAuthService *INSTANCE;


+ (id) sharedOAuthServiceInstance : (BaseAuthService *)service
{
    if (! singletonObject) {
        singletonObject = [[OAuthFactory alloc] init];
        INSTANCE = service;
    }
    
    
    
    return singletonObject;
}

- (id)init
{
    if (! singletonObject) {
        
        singletonObject = [super init];
        
    }
    
    return singletonObject;
}


+(BaseAuthService*) getBaseOAuthServiceInstance{
    return INSTANCE;
    
}




@end
