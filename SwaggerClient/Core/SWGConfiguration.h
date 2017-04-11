#import <Foundation/Foundation.h>
#import "SWGApiClient.h"
#import "SWGLogger.h"

/**
* Location Intelligence APIs
* Incorporate our extensive geodata into everyday applications, business processes and workflows.
*
* OpenAPI spec version: 3.0.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

@class SWGApiClient;

@interface SWGConfiguration : NSObject

/**
 * Default api logger
 */
@property (nonatomic, strong) SWGLogger * logger;

/**
 * Default api client
 */
@property (nonatomic) SWGApiClient *apiClient;

/**
 * Default base url
 */
@property (nonatomic) NSString *host;

/**
 * Api key values for Api Key type Authentication
 *
 * To add or remove api key, use `setApiKey:forApiKeyIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKey;

/**
 * Api key prefix values to be prepend to the respective api key
 *
 * To add or remove prefix, use `setApiKeyPrefix:forApiKeyPrefixIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKeyPrefix;

/**
 * Username for HTTP Basic Authentication
 */
 @property (nonatomic) NSString *username;

/**
 * Password for HTTP Basic Authentication
 */
@property (nonatomic) NSString *password;

/**
 * Access token for OAuth
 */
@property (nonatomic) NSString *accessToken;

/**
 * Temp folder for file download
 */
@property (nonatomic) NSString *tempFolderPath;

/**
 * Debug switch, default false
 */
@property (nonatomic) BOOL debug;

/**
 * Gets configuration singleton instance
 */
+ (instancetype) sharedConfig;

/**
 * SSL/TLS verification
 * Set this to NO to skip verifying SSL certificate when calling API from https server
 */
@property (nonatomic) BOOL verifySSL;

/**
 * SSL/TLS verification
 * Set this to customize the certificate file to verify the peer
 */
@property (nonatomic) NSString *sslCaCert;

/**
 * Sets API key
 *
 * To remove a apiKey for an identifier, just set the apiKey to nil.
 *
 * @param apiKey     API key or token.
 * @param identifier API key identifier (authentication schema).
 *
 */
- (void) setApiKey:(NSString *)apiKey forApiKeyIdentifier:(NSString*)identifier;

/**
 * Removes api key
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKey:(NSString *)identifier;

/**
 * Sets the prefix for API key
 *
 * @param apiKeyPrefix API key prefix.
 * @param identifier   API key identifier.
 */
- (void) setApiKeyPrefix:(NSString *)prefix forApiKeyPrefixIdentifier:(NSString *)identifier;

/**
 * Removes api key prefix
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKeyPrefix:(NSString *)identifier;

/**
 * Gets API key (with prefix if set)
 */
- (NSString *) getApiKeyWithPrefix:(NSString *) key;

/**
 * Gets Basic Auth token
 */
- (NSString *) getBasicAuthToken;

/**
 * Gets OAuth access token
 */
- (NSString *) getAccessToken;

/**
 * Gets Authentication Settings
 */
- (NSDictionary *) authSettings;

/**
* Default headers for all services
*/
@property (readonly, nonatomic, strong) NSDictionary *defaultHeaders;

/**
* Removes header from defaultHeaders
*
* @param Header name.
*/
-(void) removeDefaultHeaderForKey:(NSString*)key;

/**
* Sets the header for key
*
* @param value         Value for header name
* @param key           Header name
*/
-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key;

/**
* @param Header key name.
*/
-(NSString*) defaultHeaderForKey:(NSString*)key;

@end
