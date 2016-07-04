//
//  Units.h
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

@class CustomValues;

@interface Units : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *unitType;
@property (nonatomic, strong) NSString *lowUnitValue;
@property (nonatomic, strong) CustomValues *customValues;
@property (nonatomic, strong) NSString *highUnitValue;
@property (nonatomic, strong) NSString *placeName;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
