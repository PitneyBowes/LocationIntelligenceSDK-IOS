//
//  Poi.h
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

@class ContactDetails, Distance;

@interface Poi : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) id customField8;
@property (nonatomic, strong) id customField7;
@property (nonatomic, strong) id customField6;
@property (nonatomic, strong) id customField5;
@property (nonatomic, strong) id open24Hours;
@property (nonatomic, strong) id displayName;
@property (nonatomic, strong) id customField4;
@property (nonatomic, strong) id latitude;
@property (nonatomic, strong) id customField3;
@property (nonatomic, strong) id alias;
@property (nonatomic, strong) id name;
@property (nonatomic, strong) id customField2;
@property (nonatomic, strong) id customField1;
@property (nonatomic, strong) id langType;
@property (nonatomic, strong) id brandName;
@property (nonatomic, strong) ContactDetails *contactDetails;
@property (nonatomic, strong) id longitude;
@property (nonatomic, strong) Distance *distance;
@property (nonatomic, strong) id customField10;
@property (nonatomic, assign) double categoryCode;
@property (nonatomic, strong) id langISOCode;
@property (nonatomic, strong) id customField9;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
