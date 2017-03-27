# KnetikCloud::Object::ClientResource

## Load the model package
```perl
use KnetikCloud::Object::ClientResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token_validity_seconds** | **int** | The expiration time of an initial oauth token in seconds | [optional] 
**client_key** | **string** | The client_id field of the oauth token request | 
**grant_types** | **ARRAY[string]** | The oauth grant type as in: password (username/password auth), client_credentials (server-to-server, private clients), refresh_token (to allow clients to refresh their initial token), facebook, google, etc) See documentation for a compelte list. | [optional] 
**id** | **int** | Generated unique ID for the client | [optional] 
**is_public** | **boolean** | Set to true if the client is public i.e the secret key can be secured | [optional] 
**locked** | **boolean** | Used to flag system clients that are not meant to be tinkered with | [optional] 
**name** | **string** | The friendly name of the client | 
**redirect_uris** | **ARRAY[string]** | A redirection URL to use when granting access to third-parties (seldomly used) | [optional] 
**refresh_token_validity_seconds** | **int** | The expiration time of a refresh oauth token in seconds | [optional] 
**secret** | **string** | The client-secret field of the oauth request when creating a private client | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


