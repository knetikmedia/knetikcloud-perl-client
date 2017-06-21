# KnetikCloud::Object::IntegerPropertyDefinitionResource

## Load the model package
```perl
use KnetikCloud::Object::IntegerPropertyDefinitionResource;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field_list** | [**PropertyFieldListResource**](PropertyFieldListResource.md) | A list of the fields on both the property definition and property of this type | [optional] 
**name** | **string** | The name of the property | 
**required** | **boolean** | Whether the property is required | 
**type** | **string** | The type of the property. Used for polymorphic type recognition and thus must match an expected type with additional properties. | 
**max** | **int** | If provided, the maximum value | [optional] 
**min** | **int** | If provided, the minimum value | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


