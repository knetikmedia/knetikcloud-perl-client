# WWW::SwaggerClient::Object::EntitlementItem

## Load the model package
```perl
use WWW::SwaggerClient::Object::EntitlementItem;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**behaviors** | [**ARRAY[Behavior]**](Behavior.md) | The behaviors linked to the item, describing various options and interactions. May not be included in item lists | [optional] 
**created_date** | **int** | The date the item was created, unix timestamp in seconds | [optional] 
**id** | **int** | The id of the item | [optional] 
**long_description** | **string** | A long description of the item | [optional] 
**name** | **string** | The name of the item | 
**short_description** | **string** | A short description of the item, max 255 chars | [optional] 
**sort** | **int** | A number to use in sorting items.  Default 500 | [optional] 
**type_hint** | **string** | The type of the item | 
**unique_key** | **string** | The unique key for the item | [optional] 
**updated_date** | **int** | The date the item was last updated, unix timestamp in seconds | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


