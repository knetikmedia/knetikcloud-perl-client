# KnetikCloud::Object::LimitedGettableGroup

## Load the model package
```perl
use KnetikCloud::Object::LimitedGettableGroup;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active_only** | **boolean** | Whether to get active items only | 
**name** | **string** | The name of the group. Multiple items with the same group name will be limited together, leave null to be assigned a random unique name. It is typical that owned_limit and active_only will be the same for all, but this is not enforced and the item being recieved will use its settings. | [optional] 
**owned_limit** | **int** | The max number of items that can be purchased | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


