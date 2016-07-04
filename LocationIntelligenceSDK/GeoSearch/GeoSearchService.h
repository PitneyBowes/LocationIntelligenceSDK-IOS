//
//  GeoSearchService.h
//  PBSmartEarthSuite
//

 /*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import "OAuthService.h"
#import "NetworkService.h"
#import "GeoSearch.h"

@interface GeoSearchService : OAuthService


/**
 Geo Search provides local search capabilities into your apps and services.
 GeoSearch provides both independent and neutral local search information based
 on the input of search text and location coordinate w.r.t
 Lattitude-Longitude
 
 @param searchText Mandatory - The input to be searched.
 @param originLatitude Mandatory - The latitude of the location.
 @param originLongitude Mandatory -The longitude of the location.
 
 @param success The block to be executed on the completion of a successful request.
 
 @param failure The block to be executed on the completion of an unsuccessful request.
 
 **/


- (void) geoSearch: (NSString*) searchText :
                    (NSNumber*) originLatitude :
                    (NSNumber*) originLongitude :
                    (void (^)(GeoSearch *geoSearch))success failure : (void (^)( ErrorResponse *error))failure;


/**
 Geo Search provides local search capabilities into your apps and services.
 GeoSearch provides both independent and neutral local search information based
 on the input of search text and location coordinate w.r.t
 Lattitude-Longitude
 
 @param searchText Mandatory - The input to be searched.
 @param originLatitude Mandatory - The latitude of the location.
 @param originLongitude Mandatory -The longitude of the location.
 @param searchRadius Optional - The radiius from the given co-ordinates in which
                                to search for results
 @param searchRadiusUnit Optional - Unit used for searchRadius
 @param maxCandidate Optional - Maximum number of results to return
 
 @param success The block to be executed on the completion of a successful request.
 
 @param failure The block to be executed on the completion of an unsuccessful request.
 
 **/


- (void) geoSearch: (NSString*) searchText :
                    (NSNumber*) originLatitude :
                    (NSNumber*) originLongitude :
                    (NSNumber*) searchRadius :
                    (NSString*) searchRadiusUnit :
                    (NSNumber*) maxCandidate :
                    (void (^)(GeoSearch *geoSearch))success failure : (void (^)( ErrorResponse *error))failure;



@end
