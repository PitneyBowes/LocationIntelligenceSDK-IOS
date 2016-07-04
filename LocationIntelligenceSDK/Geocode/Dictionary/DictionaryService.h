//
//  DictionaryService.h
//  LocationIntelligenceSDK
//
//  Created by Gaurav Jain on 12/02/16.
//  Copyright © 2016 PB. All rights reserved.
//

#import "OAuthService.h"
#import "DictionaryResponse.h"

@interface DictionaryService :OAuthService

- (void) getDictionaries: (NSString *)country :
(void (^)(DictionaryResponse *dictionaryResponse))success
                failure : (void (^)( ErrorResponse *error))failure;


@end
