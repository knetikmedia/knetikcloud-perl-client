# KnetikCloud::Object::PropertyFieldResource

## Load the model package
```perl
use KnetikCloud::Object::PropertyFieldResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **string** | A description of the field | [optional] 
**inner_type** | **string** | The type of values within a &#39;list&#39; type field | [optional] 
**inner_type_fields** | [**ARRAY[PropertyFieldResource]**](PropertyFieldResource.md) | A description of fields within objects within a &#39;list&#39; type field, when inner_type is &#39;object&#39; | [optional] 
**name** | **string** | The name of the field | [optional] 
**required** | **boolean** | Whether the field is required | [optional] 
**type** | **string** | The type of the field | [optional] 
**valid_values** | **ARRAY[string]** | A list of valid values for &#39;enum&#39; type fields | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


