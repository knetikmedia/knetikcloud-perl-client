# KnetikCloud::Object::RoleResource

## Load the model package
```perl
use KnetikCloud::Object::RoleResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_count** | **int** | The number of clients this role is assigned to | [optional] 
**created_date** | **int** | The date the role was added. Unix timestamp in seconds | [optional] 
**locked** | **boolean** | Whether a role is locked from being deleted | [optional] 
**name** | **string** | The name of the role used for display purposes | 
**role** | **string** | The keyword that defines the role | 
**role_permission** | [**ARRAY[PermissionResource]**](PermissionResource.md) | The list of permissions this role has | [optional] 
**user_count** | **int** | The number of users this role is assigned to | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


