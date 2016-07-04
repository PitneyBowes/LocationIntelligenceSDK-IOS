//
//  Address.h
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



@interface Address : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) id addressLine1;
@property (nonatomic, strong) id businessName;
@property (nonatomic, strong) id status;
@property (nonatomic, strong) id country;
@property (nonatomic, strong) id postCodeExt;
@property (nonatomic, strong) id displayName;
@property (nonatomic, strong) id urbanizationName;
@property (nonatomic, strong) id formattedAddress;
@property (nonatomic, strong) id areaName1;
@property (nonatomic, strong) id latitude;
@property (nonatomic, strong) id addressNumber;
@property (nonatomic, strong) id streetSide;
@property (nonatomic, strong) id streetName;
@property (nonatomic, strong) id city;
@property (nonatomic, strong) id areaName3;
@property (nonatomic, strong) id mainAddressLine;
@property (nonatomic, strong) id unitType;
@property (nonatomic, strong) id placeName;
@property (nonatomic, strong) id longitude;
@property (nonatomic, strong) id addressLastLine;
@property (nonatomic, strong) id stateProvince;
@property (nonatomic, strong) id postalCode;
@property (nonatomic, strong) id postCode;
@property (nonatomic, strong) NSArray *additionalProperties;
@property (nonatomic, strong) id areaName2;
@property (nonatomic, strong) id areaName4;
@property (nonatomic, strong) id addressLine3;
@property (nonatomic, strong) id addressLine2;
@property (nonatomic, strong) id unitValue;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
