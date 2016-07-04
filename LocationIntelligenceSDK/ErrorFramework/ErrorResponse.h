//
//  ErrorResponse.h
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
#import "LIErrorResponse.h"

/**
 *  This class is responsible for providing all kinds of exceptions and errors
 *  which may occur any time while consuming LBS services.
 */
@interface ErrorResponse : NSObject <NSCoding, NSCopying>

//TODO: Type is not needed here
@property (nonatomic, strong) NSString *errorResponseType;
@property (nonatomic, strong) LIErrorResponse *liErrorResponse;
@property (nonatomic, strong) NSString *rootCauseErrorMessage;


//Returns Http Status code
-(int) getHttpStatusCode;

//Returns Errors [] {@link Errors} or Null for Internal Errros
-(NSArray*)getLBSError;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
