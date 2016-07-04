//
//  MustMatchFields.h
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



@interface MustMatchFields : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *matchOnInputFields;
@property (nonatomic, strong) NSString *matchOnPlaceName;
@property (nonatomic, strong) NSString *matchOnPostCode1;
@property (nonatomic, strong) NSString *matchOnStreetName;
@property (nonatomic, strong) NSString *matchOnAreaName3;
@property (nonatomic, strong) NSString *matchOnAllStreetFields;
@property (nonatomic, strong) NSString *matchOnStreetType;
@property (nonatomic, strong) NSString *matchOnAreaName1;
@property (nonatomic, strong) NSString *matchOnPostCode2;
@property (nonatomic, strong) NSString *matchOnAddressNumber;
@property (nonatomic, strong) NSString *matchOnAreaName4;
@property (nonatomic, strong) NSString *matchOnStreetDirectional;
@property (nonatomic, strong) NSString *matchOnAreaName2;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
