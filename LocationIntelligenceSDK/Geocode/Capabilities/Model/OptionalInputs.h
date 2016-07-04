//
//  OptionalInputs.h
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

@class AllowedValuesWithDescriptions;

@interface OptionalInputs : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) id lowBoundary;
@property (nonatomic, strong) NSString *defaultValue;
@property (nonatomic, assign) id highBoundary;
@property (nonatomic, strong) NSString *optionalInputsDescription;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) AllowedValuesWithDescriptions *allowedValuesWithDescriptions;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
