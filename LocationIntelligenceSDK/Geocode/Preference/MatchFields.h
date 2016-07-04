//
//  MatchFields.h
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

#import <Foundation/Foundation.h>

@interface MatchFields : NSObject

@property (nonatomic, assign) BOOL matchOnInputFields;
@property (nonatomic, assign) BOOL matchOnPlaceName;
@property (nonatomic, assign) BOOL matchOnPostCode1;
@property (nonatomic, assign) BOOL matchOnStreetName;
@property (nonatomic, assign) BOOL matchOnAreaName3;
@property (nonatomic, assign) BOOL matchOnAllStreetFields;
@property (nonatomic, assign) BOOL matchOnStreetType;
@property (nonatomic, assign) BOOL matchOnAreaName1;
@property (nonatomic, assign) BOOL matchOnPostCode2;
@property (nonatomic, assign) BOOL matchOnAddressNumber;
@property (nonatomic, assign) BOOL matchOnAreaName4;
@property (nonatomic, assign) BOOL matchOnStreetDirectional;
@property (nonatomic, assign) BOOL matchOnAreaName2;

@end
