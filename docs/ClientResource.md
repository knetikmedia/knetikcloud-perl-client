# KnetikCloud::Object::ClientResource

## Load the model package
```perl
use KnetikCloud::Object::ClientResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token_validity_seconds** | **int** | The time limit of the token in seconds | [optional] 
**client_key** | **string** | The client key, cannot be edited once created | 
**grant_types** | **ARRAY[string]** | The grant types of the client | [optional] 
**id** | **int** | The id of the client | [optional] 
**is_public** | **boolean** | Whether the client is public or not | [optional] 
**locked** | **boolean** | Whether a client is locked from being deleted | [optional] 
**name** | **string** | The name of the client | 
**redirect_uris** | **ARRAY[string]** | The redirect uris of the client | [optional] 
**refresh_token_validity_seconds** | **int** | The time limit of the refresh token in seconds | [optional] 
**secret** | **string** | The secret key of the client | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


