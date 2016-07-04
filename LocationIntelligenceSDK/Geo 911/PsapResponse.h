//
//  Geo911.h
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

@class ContactPerson, County, SiteDetails, Coverage, Address;

@interface PsapResponse : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *phone;
@property (nonatomic, strong) ContactPerson *contactPerson;
@property (nonatomic, strong) County *county;
@property (nonatomic, strong) NSString *agency;
@property (nonatomic, strong) SiteDetails *siteDetails;
@property (nonatomic, strong) NSString *fccId;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) Coverage *coverage;
@property (nonatomic, strong) Address *mailingAddress;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
