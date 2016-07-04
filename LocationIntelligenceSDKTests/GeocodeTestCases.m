//
//  DictionaryTests.m
//  LocationIntelligenceSDK
//
 
/*Copyright 2016 Pitney Bowes Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file 
except in compliance with the License.  You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the 
License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  
See the License for the specific language governing permissions and limitations under the License. */
//

#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <LocationIntelligenceSDK/LocationIntelligenceSDK.h>


@interface GeocodeTestCases : XCTestCase

@end

@implementation GeocodeTestCases

LIServiceManager *liDictionary ;


static inline void hxRunInMainLoop(void(^block)(BOOL *done)) {
    __block BOOL done = NO;
    block(&done);
    while (!done) {
        [[NSRunLoop mainRunLoop] runUntilDate:
         [NSDate dateWithTimeIntervalSinceNow:.1]];
    }
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    
    BaseAuthServiceInternal *baseAuthService = [BaseAuthServiceInternal sharedBaseOauthObject:@"" :@""];
    liDictionary = [LIServiceManager sharedSingletonClass:baseAuthService];
    
    
    

}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDictionaries
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        [geocodeService getConfiguredDictionary:(Countries)UNITED_STATES :(BundleType)Premium: ^(ConfiguredDictionaryResponse *dictionaryResp) {
            *done = YES;
            XCTAssertTrue(dictionaryResp != nil);
            
           
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testDictionariesBundle
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        [geocodeService getConfiguredDictionary:(BundleType)Premium: ^(ConfiguredDictionaryResponse *dictionaryResp) {
            *done = YES;
            XCTAssertTrue(dictionaryResp != nil);
            
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testCapabilitiesBundle
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        [geocodeService getCapabilities:(BundleType)Premium: ^(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse) {
            *done = YES;
            XCTAssertTrue(geocodeCapabilitiesResponse != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testCapabilitiesCountry
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        [geocodeService getCapabilitiesCountry:(Countries)UNITED_STATES:(BundleType)Premium: ^(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse) {
            *done = YES;
            XCTAssertTrue(geocodeCapabilitiesResponse != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testCapabilitiesOperation
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        [geocodeService getCapabilitiesOperation:(OperationType)Geocode:(BundleType)Premium: ^(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse) {
            *done = YES;
            XCTAssertTrue(geocodeCapabilitiesResponse != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testCapabilitiesAllParams
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        
        [geocodeService getCapabilities:(Countries)UNITED_STATES: (OperationType)Geocode:(BundleType)Premium:^(GeocodeCapabilitiesResponse *geocodeCapabilitiesResponse) {
            *done = YES;
            XCTAssertTrue(geocodeCapabilitiesResponse != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testGeocode
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        AddressGeocode *address= [[AddressGeocode alloc] init];
        
        address.mainAddressLine=@"One Global View Troy NY 12180";
        address.country=@"USA";
        
       
        
        [geocodeService getGeocode:address:(BundleType)Premium: (GeocodeType)AddressLevel:^(GeocodeResponse *geocodeResponse) {
            *done = YES;
            XCTAssertTrue(geocodeResponse != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}
- (void)testGeocodeAdvanceBatch
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        AddressGeocode *address= [[AddressGeocode alloc] init];
        
        address.mainAddressLine=@"One Global View Troy NY 12180";
        address.country=@"USA";
        
        NSArray *addresses=[[NSArray arrayWithObject:address] init];
        
        
        // Making Preference Object
        GeocodePreferenceBuilder *preferenceBuilder= [[GeocodePreferenceBuilder alloc]init];
        
        
        //Geocode Preference
        GeocodePreference *geocodePreference= [[GeocodePreference alloc]init];
        geocodePreference.cornerOffset=8;
        geocodePreference.fallbackToPostal=true;
        
        //Must Matching Fields
        MustMatchFields *mustMatchFields = [[MustMatchFields alloc]init];
        mustMatchFields.matchOnPostCode1=@"true";
        
        
        
        //ReturnFieldsDescription
        GeocodeReturnFieldDescriptor *geocodeReturnFieldDescriptor = [[GeocodeReturnFieldDescriptor alloc]init];
        geocodeReturnFieldDescriptor.ReturnedCustomFieldKeys =@[ @"CTYST_KEY"];
        preferenceBuilder.geocodeReturnFieldDescriptor=geocodeReturnFieldDescriptor;
        
        //Custom Preference
        CustomPreference *customPreference= [[CustomPreference alloc]init];
        customPreference.FALLBACK_TO_WORLD=YES;
        customPreference.distance=@"10";
        
        NSMutableArray *customPreferenceArray= [[NSMutableArray alloc]init];
        [customPreferenceArray addObject:customPreference];
        
        preferenceBuilder.customPreferences=customPreferenceArray;
        
        preferenceBuilder.geocodePreference=geocodePreference;
        
        [geocodeService getGeocodeAdvanceBatch :addresses:(BundleType)Premium:(GeocodeType)AddressLevel:preferenceBuilder: ^(GeocodeResponse *geocodeResponse) {
            *done = YES;
            XCTAssertTrue(geocodeResponse != nil);
            
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}

- (void)testGeocodeBatch
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        AddressGeocode *address= [[AddressGeocode alloc] init];
        
        address.mainAddressLine=@"One Global View Troy NY 12180";
        address.country=@"USA";
        
        NSArray *addresses=[[NSArray arrayWithObject:address] init];
        
        [geocodeService getGeocodeBatch:addresses:(BundleType)Premium: (GeocodeType)AddressLevel: ^(GeocodeResponse *geocodeResponse) {
            *done = YES;
            XCTAssertTrue(geocodeResponse != nil);
            
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}




- (void)testReverseGeocode
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        Points *point =[[Points alloc]init];
        point.country=@"AUS";
        
        //Geometry
        GeocodeGeometry *geometry= [[GeocodeGeometry alloc]init];
        geometry.type=@"point";
        geometry.coordinates = @[ @(151.196036), @(-33.879637) ];
        
        Crs *crs= [[Crs alloc]init];
        crs.type=@"name";
        GeocodeProperties *geocodeProperties= [[GeocodeProperties alloc]init];
        geocodeProperties.name=@"EPSG:4326";
        crs.properties=geocodeProperties;
        
        geometry.crs=crs;
        
        point.geometry=geometry;
        
      
        
        [geocodeService getReverseGeocode:point:(BundleType)Premium:^(GeocodeResponse *geocodeResponse) {
            *done = YES;
            XCTAssertTrue(geocodeResponse != nil);
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}
- (void)testReverseGeocodeBatch
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        Points *point =[[Points alloc]init];
        point.country=@"USA";
        
        //Geometry
        GeocodeGeometry *geometry= [[GeocodeGeometry alloc]init];
        geometry.type=@"point";
        geometry.coordinates = @[ @(151.196036), @(-33.879637) ];
        
        Crs *crs= [[Crs alloc]init];
        crs.type=@"name";
        GeocodeProperties *geocodeProperties= [[GeocodeProperties alloc]init];
        geocodeProperties.name=@"EPSG:4326";
        crs.properties=geocodeProperties;
        
        geometry.crs=crs;
        
        point.geometry=geometry;
        
        NSArray *points=[[NSArray arrayWithObject:point] init];
        
        [geocodeService getReverseGeocodeBatch:points:(BundleType)Premium: ^(GeocodeResponse *geocodeResponse) {
            *done = YES;
            XCTAssertTrue(geocodeResponse != nil);
            
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}


- (void)testReverseGeocodeAdvanceBatch
{
    
    hxRunInMainLoop(^(BOOL *done) {
        
        GeocodeService *geocodeService = liDictionary.getGeocodeService;
        
        Points *point =[[Points alloc]init];
        point.country=@"USA";
        
        //Geometry
        GeocodeGeometry *geometry= [[GeocodeGeometry alloc]init];
        geometry.type=@"point";
        geometry.coordinates = @[ @(151.196036), @(-33.879637) ];
        
        Crs *crs= [[Crs alloc]init];
        crs.type=@"name";
        GeocodeProperties *geocodeProperties= [[GeocodeProperties alloc]init];
        geocodeProperties.name=@"EPSG:4326";
        crs.properties=geocodeProperties;
        
        geometry.crs=crs;
        
        point.geometry=geometry;
        
        NSArray *points=[[NSArray arrayWithObject:point] init];
        
        
        
        // Making Preference Object
        GeocodePreferenceBuilder *preferenceBuilder= [[GeocodePreferenceBuilder alloc]init];
        
        
        //Geocode Preference
        GeocodePreference *reversergeocodePreference= [[GeocodePreference alloc]init];
        reversergeocodePreference.cornerOffset=8;
        reversergeocodePreference.fallbackToPostal=true;
        
        //Must Matching Fields
        MustMatchFields *mustMatchFields = [[MustMatchFields alloc]init];
        mustMatchFields.matchOnPostCode1=@"true";
        
        
        
        //ReturnFieldsDescription
        GeocodeReturnFieldDescriptor *geocodeReturnFieldDescriptor = [[GeocodeReturnFieldDescriptor alloc]init];
        geocodeReturnFieldDescriptor.ReturnedCustomFieldKeys =@[ @"CTYST_KEY"];
        preferenceBuilder.geocodeReturnFieldDescriptor=geocodeReturnFieldDescriptor;
        
        //Custom Preference
        CustomPreferences *customPreference= [[CustomPreferences alloc]init];
        
        NSMutableArray *customPreferenceArray= [[NSMutableArray alloc]init];
        [customPreferenceArray addObject:customPreference];
        
        
        
        preferenceBuilder.geocodePreference=reversergeocodePreference;
        preferenceBuilder.customPreferences=customPreferenceArray;
        
        
        [geocodeService getReverseGeocodeAdvanceBatch:points:(BundleType)Premium:preferenceBuilder: ^(GeocodeResponse *geocodeResponse) {
            *done = YES;
            XCTAssertTrue(geocodeResponse != nil);
            
            
            
        } failure:^(ErrorResponse *error) {
            *done = YES;
            XCTFail();
            
        } ];
        
    });
    
}



@end
