//
//  SalesTax.h
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



@interface SalesTax : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double totalTaxAmount;
@property (nonatomic, assign) double totalTaxRate;
@property (nonatomic, assign) double municipalTaxAmount;
@property (nonatomic, assign) double countyTaxAmount;
@property (nonatomic, assign) double stateTaxAmount;
@property (nonatomic, assign) double stateTaxRate;
@property (nonatomic, assign) double countyTaxRate;
@property (nonatomic, assign) double municipalTaxRate;
@property (nonatomic, strong) NSArray *spdsTax;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
