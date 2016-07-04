//
//  Addresses.h
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



@interface AddressGeocode : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *areaName4;
@property (nonatomic, strong) NSString *postCode1;
@property (nonatomic, strong) NSString *areaName1;
@property (nonatomic, strong) NSString *unitType;
@property (nonatomic, strong) NSString *placeName;
@property (nonatomic, strong) NSString *postCode2;
@property (nonatomic, strong) NSString *addressLastLine;
@property (nonatomic, strong) NSString *areaName2;
@property (nonatomic, strong) NSString *streetName;
@property (nonatomic, strong) NSString *addressNumber;
@property (nonatomic, strong) NSString *areaName3;
@property (nonatomic, strong) NSString *unitValue;
@property (nonatomic, strong) NSString *mainAddressLine;
@property (nonatomic, strong) NSString *country;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
