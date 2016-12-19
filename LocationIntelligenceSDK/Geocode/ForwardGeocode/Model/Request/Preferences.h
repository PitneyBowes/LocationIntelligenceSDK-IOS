//
//  Preferences.h
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


@class MustMatchFields, ReturnFieldsDescriptor, CustomPreferences;

@interface Preferences : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *returnAllCandidateInfo;
@property (nonatomic, assign) double maxReturnedCandidates;
@property (nonatomic, strong) NSString *fallbackToPostal;
@property (nonatomic, strong) NSArray *preferredDictionaryOrders;
@property (nonatomic, strong) NSString *fallbackToGeographic;
@property (nonatomic, assign) double cornerOffset;
@property (nonatomic, assign) double distance;
@property (nonatomic, strong) MustMatchFields *mustMatchFields;
@property (nonatomic, strong) NSString  *matchMode;
@property (nonatomic, strong) NSString *cornerOffsetUnits;
@property (nonatomic, strong) NSString *distanceUnits;
@property (nonatomic, strong) NSString *clientLocale;
@property (nonatomic, strong) NSString *streetOffsetUnits;
@property (nonatomic, strong) NSString *clientCoordSysName;
@property (nonatomic, strong) ReturnFieldsDescriptor *returnFieldsDescriptor;
@property (nonatomic, strong) NSDictionary *customPreferences;
@property (nonatomic, assign) double streetOffset;

@property (nonatomic, strong) NSString *useGeoTaxAuxiliaryFile;
@property (nonatomic, strong) NSString *latLongOffset;
@property (nonatomic, strong) NSString *squeeze;
@property (nonatomic, strong) NSString *latLongFormat;
@property (nonatomic, strong) NSString *defaultBufferWidth;
@property (nonatomic, strong) NSString *outputCasing;
@property (nonatomic, strong) NSString *returnCensusFields;
@property (nonatomic, strong) NSString *returnLatLongFields;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
