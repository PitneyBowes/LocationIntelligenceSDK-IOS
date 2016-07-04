//
//  UrlMaker.m
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

#import "UrlMaker.h"

UrlStrategy * strtgy;

@implementation UrlStrategy

NSString *  BASE_URL;
NSString *  RELATIVE_PATH;


- (instancetype)init
{
    self = [super init];
    if (self) {
        BASE_URL = @"https://api.pitneybowes.com/";
        RELATIVE_PATH = @"location-intelligence";
        
    }
    return self;
}


- (NSString *) getAbsoluteUrl:(NSString *)relativeUrl {
    if ([relativeUrl rangeOfString:@"oauth"].location != NSNotFound) {
        return  relativeUrl;
    }
    return [RELATIVE_PATH stringByAppendingString:relativeUrl];
}

@end

static UrlMaker * _UrlMakerReference = nil;

@implementation UrlMaker


- (id) initWithStrategy:(UrlStrategy *)strategy {
    if (self = [super init]) {
        strtgy = strategy;
    }
    return self;
}

- (void) setUrlStrategy:(UrlStrategy *)strategy {
    if (strategy != nil) {
        strtgy = strategy;
    }
}

+(UrlStrategy*) getURLStrategy{
    return strtgy;
}


- (NSString *) getAbsoluteUrl:(NSString *)relativeUrl {
    return [strtgy getAbsoluteUrl:relativeUrl];
}


+(UrlMaker *) getInstance{
    
    if(_UrlMakerReference == nil)
        _UrlMakerReference = [[UrlMaker alloc] initWithStrategy:[[UrlStrategy alloc]init]];
    return _UrlMakerReference;
}



@end
