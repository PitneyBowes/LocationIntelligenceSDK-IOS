//
//  GeoTaxService.h
//  PBSmartEarthSuiteLib
 //
 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "GeoTaxCounty.h"
#import "UseTax.h"
#import "GeoTax.h"
#import "SpdsTax.h"
#import "SalesTax.h"
#import "Spds.h"
#import "Address.h"
#import "GeoTaxPlace.h"
#import "State.h"
#import "Jurisdiction.h"
#import "OAuthService.h"



@interface GeoTaxService : OAuthService


- (void) getGeoTaxRateByLocation: (NSString *)taxRateTypeId :(NSNumber *)latitude : (NSNumber *)longitude :
  (void (^)(GeoTax *geoTax))success
  failure : (void (^)( ErrorResponse *error))failure;

- (void) getGeoTaxRateByAddress: (NSString *)taxRateTypeId : (NSString *)address :
  (void (^)(GeoTax *geoTax))success
   failure : (void (^)( ErrorResponse *error))failure;

- (void) getGeoTaxByLocation: (NSString *)taxRateTypeId  : (NSNumber *)latitude : (NSNumber *)longitude : (NSNumber *) purchaseAmount :
  (void (^)(GeoTax *geoTax))success
   failure : (void (^)( ErrorResponse *error))failure;

- (void) getGeoTaxByAddress: (NSString *)taxRateTypeId :(NSString *)address : (NSNumber *) purchaseAmount :
  (void (^)(GeoTax *geoTax))success
   failure : (void (^)( ErrorResponse *error))failure;

@end
